.class Lcom/android/server/am/OnePlusTemperatureMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusTemperatureMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusTemperatureMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusTemperatureMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusTemperatureMonitor;

    .line 222
    iput-object p1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$1;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 224
    sget-boolean v0, Lcom/android/server/am/OnePlusTemperatureMonitor;->ENABLE:Z

    if-nez v0, :cond_5

    .line 225
    return-void

    .line 228
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/am/OnePlusTemperatureMonitor;->DEBUG:Z

    if-eqz v1, :cond_23

    const-string v1, "OPTM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# mTestReceiver # onReceive # action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_23
    const-string v1, "com.optm.action.test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 232
    const-string v1, "code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "code":Ljava/lang/String;
    const-string v2, "OPTM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# mTestReceiver # onReceive # code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v2, "debug_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_53

    .line 235
    sput-boolean v3, Lcom/android/server/am/OnePlusTemperatureMonitor;->DEBUG:Z

    goto :goto_a1

    .line 236
    :cond_53
    const-string v2, "debug_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5f

    .line 237
    sput-boolean v4, Lcom/android/server/am/OnePlusTemperatureMonitor;->DEBUG:Z

    goto :goto_a1

    .line 238
    :cond_5f
    const-string v2, "dump"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 239
    iget-object v2, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$1;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    # invokes: Lcom/android/server/am/OnePlusTemperatureMonitor;->dump()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusTemperatureMonitor;->access$000(Lcom/android/server/am/OnePlusTemperatureMonitor;)V

    goto :goto_a1

    .line 240
    :cond_6d
    const-string/jumbo v2, "monitor_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 241
    iget-object v2, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$1;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    # invokes: Lcom/android/server/am/OnePlusTemperatureMonitor;->monitor(Z)V
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusTemperatureMonitor;->access$100(Lcom/android/server/am/OnePlusTemperatureMonitor;Z)V

    goto :goto_a1

    .line 242
    :cond_7c
    const-string/jumbo v2, "monitor_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 243
    iget-object v2, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$1;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    # invokes: Lcom/android/server/am/OnePlusTemperatureMonitor;->monitor(Z)V
    invoke-static {v2, v4}, Lcom/android/server/am/OnePlusTemperatureMonitor;->access$100(Lcom/android/server/am/OnePlusTemperatureMonitor;Z)V

    goto :goto_a1

    .line 244
    :cond_8b
    const-string/jumbo v2, "report"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 245
    iget-object v2, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$1;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    const-string v3, "OPTM"

    iget-object v4, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$1;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    # getter for: Lcom/android/server/am/OnePlusTemperatureMonitor;->mReportItem:Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;
    invoke-static {v4}, Lcom/android/server/am/OnePlusTemperatureMonitor;->access$200(Lcom/android/server/am/OnePlusTemperatureMonitor;)Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;

    move-result-object v4

    # invokes: Lcom/android/server/am/OnePlusTemperatureMonitor;->trackReportData(Ljava/lang/String;Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/am/OnePlusTemperatureMonitor;->access$300(Lcom/android/server/am/OnePlusTemperatureMonitor;Ljava/lang/String;Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;)V

    .line 248
    .end local v1    # "code":Ljava/lang/String;
    :cond_a1
    :goto_a1
    return-void
.end method
