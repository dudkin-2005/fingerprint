.class final Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MediaRouterServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaRouterService;

    .line 667
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 670
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 671
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 672
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    # getter for: Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/media/MediaRouterService;->access$400(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 673
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    iput-object v0, v2, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 674
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    if-eqz v0, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    :goto_26
    iput-boolean v3, v2, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 677
    const-string v2, "MediaRouterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3 mGlobalBluetoothA2dpOn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-boolean v4, v4, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    monitor-exit v1

    goto :goto_47

    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_1b .. :try_end_46} :catchall_44

    throw v2

    .line 681
    .end local v0    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_47
    :goto_47
    return-void
.end method
