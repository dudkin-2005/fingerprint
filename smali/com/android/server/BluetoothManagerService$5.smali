.class Lcom/android/server/BluetoothManagerService$5;
.super Landroid/os/Handler;
.source "BluetoothManagerService.java"


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
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 504
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 507
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_1f

    .line 509
    :cond_6
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/android/server/BluetoothManagerService;->ONLINE_CONFIG_PROJ_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1800()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 510
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    .line 511
    .local v1, "jsonArr":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$5;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->parseOPMacPrefix(Lorg/json/JSONArray;)V
    invoke-static {v2, v1}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;Lorg/json/JSONArray;)V

    .line 512
    nop

    .line 516
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    .end local v1    # "jsonArr":Lorg/json/JSONArray;
    :goto_1f
    return-void
.end method
