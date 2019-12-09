.class Lcom/android/server/DeviceIdleController$MyHandler$1;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceIdleController$MyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DeviceIdleController$MyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController$MyHandler;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/DeviceIdleController$MyHandler;

    .line 1515
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler$1;->this$1:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1518
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1520
    .local v0, "timespend":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler$1;->this$1:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v2, v2, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->enteringDeepIdleLocked()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    .line 1524
    goto :goto_27

    .line 1521
    :catch_c
    move-exception v2

    .line 1522
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1523
    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "got exception on enteringDeepIdleLocked():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 1526
    .end local v0    # "timespend":J
    .local v2, "timespend":J
    # getter for: Lcom/android/server/DeviceIdleController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$1700()Z

    move-result v0

    if-nez v0, :cond_38

    # getter for: Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_53

    :cond_38
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[opbugreportlite] snapshot of start spends "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_53
    return-void
.end method
