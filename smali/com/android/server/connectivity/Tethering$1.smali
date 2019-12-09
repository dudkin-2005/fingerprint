.class Lcom/android/server/connectivity/Tethering$1;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;

.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$enable:Z

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    iput-boolean p2, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    iput-object p3, p0, Lcom/android/server/connectivity/Tethering$1;->val$receiver:Landroid/os/ResultReceiver;

    iput-object p4, p0, Lcom/android/server/connectivity/Tethering$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    .line 497
    move-object p1, p2

    check-cast p1, Landroid/bluetooth/BluetoothPan;

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 500
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    const/4 v1, 0x5

    if-ne p1, v0, :cond_0

    .line 501
    const/4 p1, 0x0

    goto :goto_0

    .line 502
    :cond_0
    nop

    .line 503
    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$1;->val$receiver:Landroid/os/ResultReceiver;

    invoke-static {v0, v2, p1}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V

    .line 504
    iget-boolean p1, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p1}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 505
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;I)V

    .line 507
    :cond_1
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1, v1, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 508
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    .line 493
    return-void
.end method
