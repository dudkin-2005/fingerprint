.class final Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;
.super Landroid/os/UEventObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbUEventObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbDeviceManager$1;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 2

    .line 224
    const-string v0, "USB_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    const-string v1, "ACCESSORY"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 226
    if-eqz v0, :cond_0

    .line 227
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_0
    const-string v0, "START"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 230
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 232
    :cond_1
    :goto_0
    return-void
.end method
