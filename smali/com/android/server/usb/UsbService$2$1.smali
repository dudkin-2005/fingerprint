.class Lcom/android/server/usb/UsbService$2$1;
.super Ljava/lang/Object;
.source "UsbService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 443
    iput-object p1, p0, Lcom/android/server/usb/UsbService$2$1;->this$1:Lcom/android/server/usb/UsbService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 445
    const-string v0, "UsbService"

    const-string/jumbo v1, "onClick start rndis"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/android/server/usb/UsbService$2$1;->this$1:Lcom/android/server/usb/UsbService$2;

    iget-object v0, v0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    # getter for: Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tether_checkbox_not_show_again"

    iget-object v2, p0, Lcom/android/server/usb/UsbService$2$1;->this$1:Lcom/android/server/usb/UsbService$2;

    iget-object v2, v2, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    # getter for: Lcom/android/server/usb/UsbService;->notShowAgain:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbService;->access$400(Lcom/android/server/usb/UsbService;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 447
    iget-object v0, p0, Lcom/android/server/usb/UsbService$2$1;->this$1:Lcom/android/server/usb/UsbService$2;

    iget-object v0, v0, Lcom/android/server/usb/UsbService$2;->val$mgr:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/net/wifi/WifiManager;->setTetherState(IZ)V

    .line 448
    iget-object v0, p0, Lcom/android/server/usb/UsbService$2$1;->this$1:Lcom/android/server/usb/UsbService$2;

    iget-object v0, v0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    # getter for: Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbService$2$1;->this$1:Lcom/android/server/usb/UsbService$2;

    iget-wide v1, v1, Lcom/android/server/usb/UsbService$2;->val$functions:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 449
    iget-object v0, p0, Lcom/android/server/usb/UsbService$2$1;->this$1:Lcom/android/server/usb/UsbService$2;

    iget-object v0, v0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/usb/UsbService;->mTetherDialogShow:Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbService;->access$502(Lcom/android/server/usb/UsbService;Z)Z

    .line 450
    return-void
.end method