.class Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "UsbProfileGroupSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbProfileGroupSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;-><init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->access$100(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->access$000(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 176
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    new-instance v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->access$300(Lcom/android/server/usb/UsbProfileGroupSettingsManager;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)V

    .line 181
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->access$100(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->access$000(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 186
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 191
    return-void
.end method
