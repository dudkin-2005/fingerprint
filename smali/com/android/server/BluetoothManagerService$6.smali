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
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 712
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {p1}, Lcom/android/server/BluetoothManagerService;->isBleScanAlwaysAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 714
    return-void

    .line 717
    :cond_0
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p1}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)V

    .line 718
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p1}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)V

    .line 720
    :try_start_0
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p1}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 721
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p1}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 722
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 723
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 722
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 724
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p1}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object p1

    invoke-interface {p1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 729
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 726
    :catch_0
    move-exception p1

    .line 727
    :try_start_1
    const-string v0, "BluetoothManagerService"

    const-string v1, "error when disabling bluetooth"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p1}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 730
    nop

    .line 731
    return-void

    .line 729
    :goto_1
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$6;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method
