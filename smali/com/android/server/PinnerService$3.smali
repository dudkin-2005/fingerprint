.class Lcom/android/server/PinnerService$3;
.super Landroid/app/IUidObserver$Stub;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PinnerService;->registerUidListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method constructor <init>(Lcom/android/server/PinnerService;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onUidActive$1(Ljava/lang/Object;I)V
    .locals 0

    .line 286
    check-cast p0, Lcom/android/server/PinnerService;

    invoke-static {p0, p1}, Lcom/android/server/PinnerService;->access$300(Lcom/android/server/PinnerService;I)V

    return-void
.end method

.method static synthetic lambda$onUidGone$0(Ljava/lang/Object;I)V
    .locals 0

    .line 280
    check-cast p0, Lcom/android/server/PinnerService;

    invoke-static {p0, p1}, Lcom/android/server/PinnerService;->access$400(Lcom/android/server/PinnerService;I)V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/PinnerService;->access$200(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$$Lambda$PinnerService$3$3Ta6TX4Jq9YbpUYE5Y0r8Xt8rBw;->INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$3$3Ta6TX4Jq9YbpUYE5Y0r8Xt8rBw;

    iget-object v2, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    .line 286
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 285
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 287
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    iget-object p2, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    invoke-static {p2}, Lcom/android/server/PinnerService;->access$200(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;

    move-result-object p2

    sget-object v0, Lcom/android/server/-$$Lambda$PinnerService$3$RQBbrt9b8esLBxJImxDgVTsP34I;->INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$3$RQBbrt9b8esLBxJImxDgVTsP34I;

    iget-object v1, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 279
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    return-void
.end method
