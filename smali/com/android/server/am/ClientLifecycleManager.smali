.class Lcom/android/server/am/ClientLifecycleManager;
.super Ljava/lang/Object;
.source "ClientLifecycleManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static transactionWithCallback(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)Landroid/app/servertransaction/ClientTransaction;
    .locals 0

    .line 124
    invoke-static {p0, p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object p0

    .line 125
    invoke-virtual {p0, p2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 126
    return-object p0
.end method

.method private static transactionWithState(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)Landroid/app/servertransaction/ClientTransaction;
    .locals 0

    .line 111
    invoke-static {p0, p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object p0

    .line 112
    invoke-virtual {p0, p2}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 113
    return-object p0
.end method


# virtual methods
.method scheduleTransaction(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/server/am/ClientLifecycleManager;->transactionWithCallback(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 101
    return-void
.end method

.method scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    invoke-static {p1, p2, p3}, Lcom/android/server/am/ClientLifecycleManager;->transactionWithState(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 70
    return-void
.end method

.method scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    invoke-static {p1, p2, p3}, Lcom/android/server/am/ClientLifecycleManager;->transactionWithCallback(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 86
    return-void
.end method

.method scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getClient()Landroid/app/IApplicationThread;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->schedule()V

    .line 48
    instance-of v0, v0, Landroid/os/Binder;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->recycle()V

    .line 54
    :cond_0
    return-void
.end method
