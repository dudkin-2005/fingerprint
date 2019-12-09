.class Lcom/android/server/am/OemSceneWiFiBoostController$WlanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OemSceneWiFiBoostController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemSceneWiFiBoostController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WlanReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemSceneWiFiBoostController;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OemSceneWiFiBoostController;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WlanReceiver;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OemSceneWiFiBoostController;Lcom/android/server/am/OemSceneWiFiBoostController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;
    .param p2, "x1"    # Lcom/android/server/am/OemSceneWiFiBoostController$1;

    .line 201
    invoke-direct {p0, p1}, Lcom/android/server/am/OemSceneWiFiBoostController$WlanReceiver;-><init>(Lcom/android/server/am/OemSceneWiFiBoostController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 204
    if-eqz p2, :cond_80

    .line 205
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 207
    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 208
    .local v1, "info":Landroid/net/NetworkInfo;
    # getter for: Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "OemSceneWiFiBoostController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WLANBroadcastReceiver --> NETWORK_STATE_CHANGED_ACTION info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_37
    if-eqz v1, :cond_80

    .line 210
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_61

    .line 211
    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WlanReceiver;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    # getter for: Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$300(Lcom/android/server/am/OemSceneWiFiBoostController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 212
    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WlanReceiver;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    # getter for: Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$300(Lcom/android/server/am/OemSceneWiFiBoostController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    :cond_57
    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WlanReceiver;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    # getter for: Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$300(Lcom/android/server/am/OemSceneWiFiBoostController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_80

    .line 216
    :cond_61
    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WlanReceiver;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    # getter for: Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$300(Lcom/android/server/am/OemSceneWiFiBoostController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 217
    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WlanReceiver;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    # getter for: Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$300(Lcom/android/server/am/OemSceneWiFiBoostController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    :cond_77
    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WlanReceiver;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    # getter for: Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$300(Lcom/android/server/am/OemSceneWiFiBoostController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 224
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_80
    :goto_80
    return-void
.end method
