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
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$1;)V
    .locals 0

    .line 376
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 379
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService;->access$200(Lcom/android/server/autofill/RemoteFillService;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService;->access$300(Lcom/android/server/autofill/RemoteFillService;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 384
    :cond_0
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/autofill/RemoteFillService;->access$302(Lcom/android/server/autofill/RemoteFillService;Z)Z

    .line 385
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {p2}, Landroid/service/autofill/IAutoFillService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutoFillService;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/autofill/RemoteFillService;->access$402(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/IAutoFillService;)Landroid/service/autofill/IAutoFillService;

    .line 387
    :try_start_0
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 391
    nop

    .line 393
    :try_start_1
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService;->access$400(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 396
    goto :goto_0

    .line 394
    :catch_0
    move-exception p1

    .line 395
    const-string p2, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception calling onConnected(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService;->access$600(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 399
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService;->access$600(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    move-result-object p1

    .line 400
    iget-object p2, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/server/autofill/RemoteFillService;->access$602(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 401
    iget-object p2, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {p2, p1}, Lcom/android/server/autofill/RemoteFillService;->access$700(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    .line 404
    :cond_1
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {p1, v0}, Lcom/android/server/autofill/RemoteFillService;->access$802(Lcom/android/server/autofill/RemoteFillService;Z)Z

    .line 405
    return-void

    .line 388
    :catch_1
    move-exception p1

    .line 389
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService;->access$500(Lcom/android/server/autofill/RemoteFillService;)V

    .line 390
    return-void

    .line 381
    :cond_2
    :goto_1
    const-string p1, "RemoteFillService"

    const-string/jumbo p2, "onServiceConnected was dispatched after unbindService."

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 409
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/autofill/RemoteFillService;->access$302(Lcom/android/server/autofill/RemoteFillService;Z)Z

    .line 410
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/autofill/RemoteFillService;->access$402(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/IAutoFillService;)Landroid/service/autofill/IAutoFillService;

    .line 411
    return-void
.end method
