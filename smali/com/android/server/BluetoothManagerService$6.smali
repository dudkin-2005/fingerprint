.class Lcom/android/server/BluetoothManagerService$6;
.super Landroid/database/ContentObserver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BluetoothManagerService;->registerForBleScanModeChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 762
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .line 765
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->isBleScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 767
    return-void

    .line 770
    :cond_9
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)V

    .line 771
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->clearBleApps()V
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)V

    .line 773
    :try_start_13
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 774
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 775
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 776
    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 775
    # invokes: Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 777
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_42} :catch_45
    .catchall {:try_start_13 .. :try_end_42} :catchall_43

    goto :goto_4d

    .line 782
    :catchall_43
    move-exception v0

    goto :goto_5c

    .line 779
    :catch_45
    move-exception v0

    .line 780
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_46
    const-string v1, "BluetoothManagerService"

    const-string v2, "error when disabling bluetooth"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_43

    .line 782
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 783
    nop

    .line 784
    return-void

    .line 782
    :goto_5c
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method
