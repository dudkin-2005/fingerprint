.class final Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
.super Landroid/media/tv/ITvInputServiceCallback$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceCallback"
.end annotation


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .locals 0

    .line 2346
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputServiceCallback$Stub;-><init>()V

    .line 2347
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    .line 2348
    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    .line 2349
    return-void
.end method

.method private addHardwareInputLocked(Landroid/media/tv/TvInputInfo;)V
    .locals 3

    .line 2365
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->access$6900(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v0

    .line 2366
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2367
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$400(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    .line 2368
    return-void
.end method

.method private ensureHardwarePermission()V
    .locals 2

    .line 2352
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2356
    return-void

    .line 2354
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have hardware permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidInput(Landroid/media/tv/TvInputInfo;)V
    .locals 1

    .line 2359
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2362
    return-void

    .line 2360
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid TvInputInfo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 2

    .line 2371
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureHardwarePermission()V

    .line 2372
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureValidInput(Landroid/media/tv/TvInputInfo;)V

    .line 2373
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2374
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->addHardwareInput(ILandroid/media/tv/TvInputInfo;)V

    .line 2375
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->addHardwareInputLocked(Landroid/media/tv/TvInputInfo;)V

    .line 2376
    monitor-exit v0

    .line 2377
    return-void

    .line 2376
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 2

    .line 2380
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureHardwarePermission()V

    .line 2381
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureValidInput(Landroid/media/tv/TvInputInfo;)V

    .line 2382
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2383
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->addHdmiInput(ILandroid/media/tv/TvInputInfo;)V

    .line 2384
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->addHardwareInputLocked(Landroid/media/tv/TvInputInfo;)V

    .line 2385
    monitor-exit v0

    .line 2386
    return-void

    .line 2385
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeHardwareInput(Ljava/lang/String;)V
    .locals 4

    .line 2389
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureHardwarePermission()V

    .line 2390
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2391
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$6900(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v1

    .line 2392
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2393
    :goto_0
    if-eqz v1, :cond_1

    .line 2394
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$400(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    .line 2395
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/tv/TvInputHardwareManager;->removeHardwareInput(Ljava/lang/String;)V

    goto :goto_1

    .line 2397
    :cond_1
    const-string v1, "TvInputManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to remove input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :goto_1
    monitor-exit v0

    .line 2400
    return-void

    .line 2399
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
