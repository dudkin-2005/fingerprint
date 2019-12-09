.class Lcom/android/server/BatteryService$Led$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService$Led;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$Led;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$Led;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/BatteryService$Led;

    .line 1289
    iput-object p1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1292
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1293
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    .line 1294
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    # setter for: Lcom/android/server/BatteryService$Led;->mScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/server/BatteryService$Led;->access$1802(Lcom/android/server/BatteryService$Led;Z)Z

    .line 1295
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    # getter for: Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryService$Led;->access$1900(Lcom/android/server/BatteryService$Led;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1296
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v1}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    goto :goto_53

    .line 1297
    :cond_21
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1298
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/BatteryService$Led;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/BatteryService$Led;->access$1802(Lcom/android/server/BatteryService$Led;Z)Z

    .line 1299
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v1, v1, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mPlugType:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)I

    move-result v1

    if-eqz v1, :cond_3b

    move v3, v2

    nop

    :cond_3b
    move v1, v3

    .line 1300
    .local v1, "plugged":Z
    if-eqz v1, :cond_4a

    .line 1301
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    # getter for: Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/BatteryService$Led;->access$1900(Lcom/android/server/BatteryService$Led;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_53

    .line 1303
    :cond_4a
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    # getter for: Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/BatteryService$Led;->access$1900(Lcom/android/server/BatteryService$Led;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1306
    .end local v1    # "plugged":Z
    :cond_53
    :goto_53
    return-void
.end method
