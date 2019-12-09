.class Lcom/android/server/BluetoothManagerService$5;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 382
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x258

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    const-string v0, "BluetoothManagerService"

    const-string v3, "WAIT_ENABLE"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 386
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v4

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v2, p1, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 387
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p1}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    nop

    .line 392
    :goto_0
    return v2
.end method
