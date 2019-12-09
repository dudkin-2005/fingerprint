.class Lcom/android/server/BluetoothService;
.super Lcom/android/server/SystemService;
.source "BluetoothService.java"


# instance fields
.field private mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/android/server/BluetoothManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    .line 28
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    .line 36
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 37
    const-string p1, "bluetooth_manager"

    iget-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/BluetoothService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 39
    :cond_0
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 40
    iget-object p1, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {p1}, Lcom/android/server/BluetoothManagerService;->handleOnBootPhase()V

    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 32
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/BluetoothManagerService;->handleOnSwitchUser(I)V

    .line 47
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/BluetoothManagerService;->handleOnUnlockUser(I)V

    .line 52
    return-void
.end method
