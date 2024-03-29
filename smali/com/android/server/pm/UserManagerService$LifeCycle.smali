.class public Lcom/android/server/pm/UserManagerService$LifeCycle;
.super Lcom/android/server/SystemService;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycle"
.end annotation


# instance fields
.field private mUms:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 462
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 463
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 473
    const/16 v0, 0x226

    if-ne p1, v0, :cond_9

    .line 474
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->cleanupPartialUsers()V

    .line 476
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 467
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 468
    const-string/jumbo v0, "user"

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService$LifeCycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 469
    return-void
.end method

.method public onStartUser(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .line 480
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 481
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    # invokes: Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 482
    .local v1, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_15

    .line 483
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    .line 485
    .end local v1    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_15
    monitor-exit v0

    .line 486
    return-void

    .line 485
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public onStopUser(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .line 500
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 501
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    # invokes: Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 502
    .local v1, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_15

    .line 503
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    .line 504
    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    .line 506
    .end local v1    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_15
    monitor-exit v0

    .line 507
    return-void

    .line 506
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public onUnlockUser(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .line 490
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 491
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    # invokes: Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 492
    .local v1, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_15

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    .line 495
    .end local v1    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_15
    monitor-exit v0

    .line 496
    return-void

    .line 495
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method
