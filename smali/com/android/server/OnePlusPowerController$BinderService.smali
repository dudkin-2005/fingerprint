.class final Lcom/android/server/OnePlusPowerController$BinderService;
.super Landroid/os/IOnePlusPowerController$Stub;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .registers 2

    .line 391
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$BinderService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Landroid/os/IOnePlusPowerController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusPowerController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/OnePlusPowerController;
    .param p2, "x1"    # Lcom/android/server/OnePlusPowerController$1;

    .line 391
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusPowerController$BinderService;-><init>(Lcom/android/server/OnePlusPowerController;)V

    return-void
.end method


# virtual methods
.method public acquireNetworkTemp()V
    .registers 4

    .line 402
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x50

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 403
    return-void

    .line 405
    :cond_f
    const-string v0, "OnePlusPowerController"

    const-string v1, "acquireNetworkTemp"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$BinderService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 411
    .local v0, "ident":J
    :try_start_26
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$BinderService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController;->acquireNetworkTempInternal()V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_30

    .line 413
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 414
    nop

    .line 415
    return-void

    .line 413
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$BinderService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/OnePlusPowerController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 398
    new-instance v0, Lcom/android/server/OnePlusPowerController$Shell;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$BinderService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {v0, v1}, Lcom/android/server/OnePlusPowerController$Shell;-><init>(Lcom/android/server/OnePlusPowerController;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/OnePlusPowerController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 399
    return-void
.end method
