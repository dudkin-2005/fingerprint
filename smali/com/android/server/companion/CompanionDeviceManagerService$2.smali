.class Lcom/android/server/companion/CompanionDeviceManagerService$2;
.super Ljava/lang/Object;
.source "CompanionDeviceManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;->createServiceConnection(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

.field final synthetic val$callingPackage:Ljava/lang/String;

.field final synthetic val$findDeviceCallback:Landroid/companion/IFindDeviceCallback;

.field final synthetic val$request:Landroid/companion/AssociationRequest;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;Landroid/companion/AssociationRequest;Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$findDeviceCallback:Landroid/companion/IFindDeviceCallback;

    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$request:Landroid/companion/AssociationRequest;

    iput-object p4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$callingPackage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 369
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$findDeviceCallback:Landroid/companion/IFindDeviceCallback;

    invoke-static {p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$702(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;)Landroid/companion/IFindDeviceCallback;

    .line 370
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$request:Landroid/companion/AssociationRequest;

    invoke-static {p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$602(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationRequest;)Landroid/companion/AssociationRequest;

    .line 371
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$callingPackage:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$802(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    :try_start_0
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$700(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/IFindDeviceCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/companion/IFindDeviceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 379
    nop

    .line 382
    nop

    .line 383
    :try_start_1
    invoke-static {p2}, Landroid/companion/ICompanionDeviceDiscoveryService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceDiscoveryService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$request:Landroid/companion/AssociationRequest;

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$callingPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->val$findDeviceCallback:Landroid/companion/IFindDeviceCallback;

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 388
    invoke-static {v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1400(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;

    move-result-object v2

    .line 384
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/companion/ICompanionDeviceDiscoveryService;->startDiscovery(Landroid/companion/AssociationRequest;Ljava/lang/String;Landroid/companion/IFindDeviceCallback;Landroid/companion/ICompanionDeviceDiscoveryServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 391
    goto :goto_0

    .line 389
    :catch_0
    move-exception p1

    .line 390
    const-string p2, "CompanionDeviceManagerService"

    const-string v0, "Error while initiating device discovery"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    :goto_0
    return-void

    .line 376
    :catch_1
    move-exception p1

    .line 377
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$900(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 378
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 397
    return-void
.end method
