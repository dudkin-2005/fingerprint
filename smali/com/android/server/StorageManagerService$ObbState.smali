.class Lcom/android/server/StorageManagerService$ObbState;
.super Ljava/lang/Object;
.source "StorageManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObbState"
.end annotation


# instance fields
.field final canonicalPath:Ljava/lang/String;

.field final nonce:I

.field final ownerGid:I

.field final rawPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/StorageManagerService;

.field final token:Landroid/os/storage/IObbActionListener;

.field volId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;
    .param p2, "rawPath"    # Ljava/lang/String;
    .param p3, "canonicalPath"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "token"    # Landroid/os/storage/IObbActionListener;
    .param p6, "nonce"    # I
    .param p7, "volId"    # Ljava/lang/String;

    .line 483
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbState;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p2, p0, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    .line 485
    iput-object p3, p0, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    .line 486
    invoke-static {p4}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    .line 487
    iput-object p5, p0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    .line 488
    iput p6, p0, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    .line 489
    iput-object p7, p0, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    .line 490
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 511
    new-instance v0, Lcom/android/server/StorageManagerService$UnmountObbAction;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/StorageManagerService$UnmountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V

    .line 512
    .local v0, "action":Lcom/android/server/StorageManagerService$ObbAction;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$700(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/StorageManagerService$ObbState;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;
    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$700(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 513
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .line 506
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    invoke-interface {v0}, Landroid/os/storage/IObbActionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public link()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 517
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObbState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "rawPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v1, ",canonicalPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string v1, ",ownerGid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 529
    const-string v1, ",token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 530
    const-string v1, ",binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 531
    const-string v1, ",volId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unlink()V
    .registers 3

    .line 520
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 521
    return-void
.end method
