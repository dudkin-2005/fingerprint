.class final Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;
.super Ljava/lang/Object;
.source "RemotePrintSpooler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler;


# direct methods
.method private constructor <init>(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 2

    .line 707
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintSpooler$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/print/RemotePrintSpooler;
    .param p2, "x1"    # Lcom/android/server/print/RemotePrintSpooler$1;

    .line 707
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;-><init>(Lcom/android/server/print/RemotePrintSpooler;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 710
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    # getter for: Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$100(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 711
    :try_start_7
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-static {p2}, Landroid/print/IPrintSpooler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpooler;

    move-result-object v2

    # setter for: Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;
    invoke-static {v1, v2}, Lcom/android/server/print/RemotePrintSpooler;->access$202(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)Landroid/print/IPrintSpooler;

    .line 712
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    # invokes: Lcom/android/server/print/RemotePrintSpooler;->setClientLocked()V
    invoke-static {v1}, Lcom/android/server/print/RemotePrintSpooler;->access$300(Lcom/android/server/print/RemotePrintSpooler;)V

    .line 713
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    # getter for: Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/print/RemotePrintSpooler;->access$100(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 714
    monitor-exit v0

    .line 715
    return-void

    .line 714
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 719
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    # getter for: Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$100(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 720
    :try_start_7
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    # getter for: Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;
    invoke-static {v1}, Lcom/android/server/print/RemotePrintSpooler;->access$200(Lcom/android/server/print/RemotePrintSpooler;)Landroid/print/IPrintSpooler;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 721
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    # invokes: Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V
    invoke-static {v1}, Lcom/android/server/print/RemotePrintSpooler;->access$400(Lcom/android/server/print/RemotePrintSpooler;)V

    .line 722
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;
    invoke-static {v1, v2}, Lcom/android/server/print/RemotePrintSpooler;->access$202(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)Landroid/print/IPrintSpooler;

    .line 724
    :cond_1a
    monitor-exit v0

    .line 725
    return-void

    .line 724
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method
