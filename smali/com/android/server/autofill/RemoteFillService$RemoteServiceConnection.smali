.class Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "RemoteFillService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteFillService;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 2

    .line 387
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p2, "x1"    # Lcom/android/server/autofill/RemoteFillService$1;

    .line 387
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 390
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    # getter for: Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$200(Lcom/android/server/autofill/RemoteFillService;)Z

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    # getter for: Lcom/android/server/autofill/RemoteFillService;->mBinding:Z
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$300(Lcom/android/server/autofill/RemoteFillService;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_87

    .line 395
    :cond_11
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/autofill/RemoteFillService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->access$302(Lcom/android/server/autofill/RemoteFillService;Z)Z

    .line 396
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {p2}, Landroid/service/autofill/IAutoFillService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutoFillService;

    move-result-object v2

    # setter for: Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;
    invoke-static {v0, v2}, Lcom/android/server/autofill/RemoteFillService;->access$402(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/IAutoFillService;)Landroid/service/autofill/IAutoFillService;

    .line 398
    :try_start_20
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_80

    .line 402
    nop

    .line 404
    :try_start_26
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    # getter for: Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$400(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_49
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_30} :catch_31

    goto :goto_60

    .line 409
    :catch_31
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "RemoteFillService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NullPointer Exception calling onConnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_61

    .line 405
    :catch_49
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteFillService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception calling onConnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_60
    nop

    .line 414
    :goto_61
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    # getter for: Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$600(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 415
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    # getter for: Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$600(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    move-result-object v0

    .line 416
    .local v0, "pendingRequest":Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    invoke-static {v2, v3}, Lcom/android/server/autofill/RemoteFillService;->access$602(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 417
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    # invokes: Lcom/android/server/autofill/RemoteFillService;->handlePendingRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    invoke-static {v2, v0}, Lcom/android/server/autofill/RemoteFillService;->access$700(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    .line 420
    .end local v0    # "pendingRequest":Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    :cond_7a
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    # setter for: Lcom/android/server/autofill/RemoteFillService;->mServiceDied:Z
    invoke-static {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->access$802(Lcom/android/server/autofill/RemoteFillService;Z)Z

    .line 421
    return-void

    .line 399
    :catch_80
    move-exception v0

    .line 400
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    # invokes: Lcom/android/server/autofill/RemoteFillService;->handleBinderDied()V
    invoke-static {v1}, Lcom/android/server/autofill/RemoteFillService;->access$500(Lcom/android/server/autofill/RemoteFillService;)V

    .line 401
    return-void

    .line 392
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_87
    :goto_87
    const-string v0, "RemoteFillService"

    const-string/jumbo v1, "onServiceConnected was dispatched after unbindService."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 425
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/autofill/RemoteFillService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->access$302(Lcom/android/server/autofill/RemoteFillService;Z)Z

    .line 426
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;
    invoke-static {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->access$402(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/IAutoFillService;)Landroid/service/autofill/IAutoFillService;

    .line 427
    return-void
.end method
