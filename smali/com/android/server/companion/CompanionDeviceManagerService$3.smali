.class Lcom/android/server/companion/CompanionDeviceManagerService$3;
.super Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;->getServiceCallback()Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$3;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceSelected(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$3;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0, p2, p1, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->addAssociation(ILjava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$3;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$900(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 420
    return-void
.end method

.method public onDeviceSelectionCancel()V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$3;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$900(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 425
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 409
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 410
    :catch_0
    move-exception p1

    .line 411
    const-string p2, "CompanionDeviceManagerService"

    const-string p3, "Error during IPC"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    const-class p2, Landroid/os/RemoteException;

    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
