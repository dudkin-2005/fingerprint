.class Lcom/android/server/am/OnePlusTemperatureMonitor$2;
.super Ljava/lang/Object;
.source "OnePlusTemperatureMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 264
    iput-object p1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$2;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$2;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    # getter for: Lcom/android/server/am/OnePlusTemperatureMonitor;->running:Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusTemperatureMonitor;->access$400(Lcom/android/server/am/OnePlusTemperatureMonitor;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 268
    iget-object v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$2;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/am/OnePlusTemperatureMonitor;->readCpuTemperature(Z)Z
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusTemperatureMonitor;->access$500(Lcom/android/server/am/OnePlusTemperatureMonitor;Z)Z

    .line 269
    iget-object v0, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$2;->this$0:Lcom/android/server/am/OnePlusTemperatureMonitor;

    # invokes: Lcom/android/server/am/OnePlusTemperatureMonitor;->dump()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusTemperatureMonitor;->access$000(Lcom/android/server/am/OnePlusTemperatureMonitor;)V

    .line 271
    const-wide/16 v0, 0x3e8

    :try_start_15
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    .line 274
    :goto_18
    goto :goto_0

    .line 272
    :catch_19
    move-exception v0

    goto :goto_18

    .line 276
    :cond_1b
    return-void
.end method
