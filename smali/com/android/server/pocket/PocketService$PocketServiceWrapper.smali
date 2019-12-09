.class final Lcom/android/server/pocket/PocketService$PocketServiceWrapper;
.super Landroid/pocket/IPocketService$Stub;
.source "PocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PocketServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pocket/PocketService;


# direct methods
.method private constructor <init>(Lcom/android/server/pocket/PocketService;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-direct {p0}, Landroid/pocket/IPocketService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pocket/PocketService;Lcom/android/server/pocket/PocketService$1;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;-><init>(Lcom/android/server/pocket/PocketService;)V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/pocket/IPocketCallback;)V
    .locals 2

    .line 305
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 306
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 307
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 308
    iget-object p1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {p1}, Lcom/android/server/pocket/PocketService;->access$1500(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 309
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 371
    iget-object p1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {p1}, Lcom/android/server/pocket/PocketService;->access$000(Lcom/android/server/pocket/PocketService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 373
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Permission Denial: can\'t dump Pocket from from pid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", uid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    return-void

    .line 379
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 381
    :try_start_0
    iget-object p1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {p1, p2}, Lcom/android/server/pocket/PocketService;->access$2000(Lcom/android/server/pocket/PocketService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    nop

    .line 385
    return-void

    .line 383
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isDeviceInPocket()Z
    .locals 3

    .line 337
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 339
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v2}, Lcom/android/server/pocket/PocketService;->access$1600(Lcom/android/server/pocket/PocketService;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v2}, Lcom/android/server/pocket/PocketService;->access$1700(Lcom/android/server/pocket/PocketService;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v2}, Lcom/android/server/pocket/PocketService;->access$1800(Lcom/android/server/pocket/PocketService;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 342
    return v2

    .line 340
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 344
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 340
    return v2

    .line 344
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isPocketLockVisible()Z
    .locals 3

    .line 358
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 360
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v2}, Lcom/android/server/pocket/PocketService;->access$1600(Lcom/android/server/pocket/PocketService;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v2}, Lcom/android/server/pocket/PocketService;->access$1700(Lcom/android/server/pocket/PocketService;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v2}, Lcom/android/server/pocket/PocketService;->access$1900(Lcom/android/server/pocket/PocketService;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 363
    return v2

    .line 361
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 365
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    return v2

    .line 365
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onInteractiveChanged(Z)V
    .locals 2

    .line 321
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 322
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 323
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 324
    iget-object p1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {p1}, Lcom/android/server/pocket/PocketService;->access$1500(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 325
    return-void
.end method

.method public removeCallback(Landroid/pocket/IPocketCallback;)V
    .locals 2

    .line 313
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 314
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 315
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    iget-object p1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {p1}, Lcom/android/server/pocket/PocketService;->access$1500(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 317
    return-void
.end method

.method public setListeningExternal(Z)V
    .locals 2

    .line 329
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 330
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 331
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 332
    iget-object p1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {p1}, Lcom/android/server/pocket/PocketService;->access$1500(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 333
    return-void
.end method

.method public setPocketLockVisible(Z)V
    .locals 2

    .line 350
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 351
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 352
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 353
    iget-object p1, p0, Lcom/android/server/pocket/PocketService$PocketServiceWrapper;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {p1}, Lcom/android/server/pocket/PocketService;->access$1500(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 354
    return-void
.end method
