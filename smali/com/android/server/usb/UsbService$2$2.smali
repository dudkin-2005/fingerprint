.class Lcom/android/server/usb/UsbService$2$2;
.super Ljava/lang/Object;
.source "UsbService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbService$2;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbService$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/usb/UsbService$2;

    .line 462
    iput-object p1, p0, Lcom/android/server/usb/UsbService$2$2;->this$1:Lcom/android/server/usb/UsbService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 466
    iget-object v0, p0, Lcom/android/server/usb/UsbService$2$2;->this$1:Lcom/android/server/usb/UsbService$2;

    iget-object v0, v0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    # setter for: Lcom/android/server/usb/UsbService;->notShowAgain:Z
    invoke-static {v0, p2}, Lcom/android/server/usb/UsbService;->access$402(Lcom/android/server/usb/UsbService;Z)Z

    .line 467
    const-string v0, "UsbService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkBoxListener notShowAgain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usb/UsbService$2$2;->this$1:Lcom/android/server/usb/UsbService$2;

    iget-object v2, v2, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    # getter for: Lcom/android/server/usb/UsbService;->notShowAgain:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbService;->access$400(Lcom/android/server/usb/UsbService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void
.end method
