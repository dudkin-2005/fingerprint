.class Lcom/android/server/OemSceneGameModePanel$10;
.super Landroid/content/BroadcastReceiver;
.source "OemSceneGameModePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModePanel;->listenForA2dpConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModePanel;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModePanel;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OemSceneGameModePanel;

    .line 509
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel$10;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 512
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$10;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mBtA2dpOn:Z
    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$500(Lcom/android/server/OemSceneGameModePanel;)Z

    move-result v0

    .line 513
    .local v0, "oldBtA2dpOn":Z
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 514
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel$10;->this$0:Lcom/android/server/OemSceneGameModePanel;

    if-eqz v1, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    # setter for: Lcom/android/server/OemSceneGameModePanel;->mBtA2dpOn:Z
    invoke-static {v2, v3}, Lcom/android/server/OemSceneGameModePanel;->access$502(Lcom/android/server/OemSceneGameModePanel;Z)Z

    .line 516
    # getter for: Lcom/android/server/OemSceneGameModePanel;->DBG:Z
    invoke-static {}, Lcom/android/server/OemSceneGameModePanel;->access$600()Z

    move-result v2

    if-eqz v2, :cond_43

    const-string v2, "OemSceneGameModePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oldBtA2dpOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "/ mBtA2dpOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OemSceneGameModePanel$10;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mBtA2dpOn:Z
    invoke-static {v4}, Lcom/android/server/OemSceneGameModePanel;->access$500(Lcom/android/server/OemSceneGameModePanel;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_43
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel$10;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mBtA2dpOn:Z
    invoke-static {v2}, Lcom/android/server/OemSceneGameModePanel;->access$500(Lcom/android/server/OemSceneGameModePanel;)Z

    move-result v2

    if-eq v0, v2, :cond_61

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel$10;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;
    invoke-static {v2}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v2

    if-eqz v2, :cond_61

    .line 518
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel$10;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/OemSceneGameModePanel;->access$000(Lcom/android/server/OemSceneGameModePanel;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/OemSceneGameModePanel$10$1;

    invoke-direct {v3, p0}, Lcom/android/server/OemSceneGameModePanel$10$1;-><init>(Lcom/android/server/OemSceneGameModePanel$10;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 529
    :cond_61
    return-void
.end method
