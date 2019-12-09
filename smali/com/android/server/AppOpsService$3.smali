.class Lcom/android/server/AppOpsService$3;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/android/server/AppOpsService$3;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private check(IILjava/lang/String;)I
    .locals 8

    .line 774
    iget-object v0, p0, Lcom/android/server/AppOpsService$3;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v0, p2}, Lcom/android/server/AppOpsService;->access$300(Lcom/android/server/AppOpsService;I)V

    .line 775
    iget-object v0, p0, Lcom/android/server/AppOpsService$3;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v0, p1}, Lcom/android/server/AppOpsService;->access$400(Lcom/android/server/AppOpsService;I)V

    .line 776
    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->access$500(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 777
    if-nez v4, :cond_0

    .line 778
    const/4 p1, 0x1

    return p1

    .line 780
    :cond_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$3;->this$0:Lcom/android/server/AppOpsService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/AppOpsService;->access$600(Lcom/android/server/AppOpsService;IILjava/lang/String;ILjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method private scheduleAskOperation(IILjava/lang/String;)V
    .locals 3

    .line 785
    iget-object v0, p0, Lcom/android/server/AppOpsService$3;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v0

    .line 786
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$3;->this$0:Lcom/android/server/AppOpsService;

    const/4 v2, 0x1

    invoke-static {v1, p2, v2}, Lcom/android/server/AppOpsService;->access$200(Lcom/android/server/AppOpsService;IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v1

    .line 787
    iput p1, v1, Lcom/android/server/AppOpsService$UidState;->pendingAskOp:I

    .line 788
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/AppOpsService$UidState;->receivedPendingAskResponse:Z

    .line 793
    new-instance v1, Lcom/android/server/AppOpsService$3$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/AppOpsService$3$1;-><init>(Lcom/android/server/AppOpsService$3;IILjava/lang/String;)V

    .line 799
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {v1, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 800
    monitor-exit v0

    .line 801
    return-void

    .line 800
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getMountMode(ILjava/lang/String;)I
    .locals 8

    .line 719
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 720
    return v1

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService$3;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v0

    .line 723
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsService$3;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v2, p1, v1}, Lcom/android/server/AppOpsService;->access$200(Lcom/android/server/AppOpsService;IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v2

    .line 724
    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x3c

    if-eqz v2, :cond_3

    iget-boolean v7, v2, Lcom/android/server/AppOpsService$UidState;->receivedPendingAskResponse:Z

    if-eqz v7, :cond_3

    .line 725
    iget p1, v2, Lcom/android/server/AppOpsService$UidState;->pendingAskOp:I

    .line 726
    if-ne p1, v6, :cond_1

    goto :goto_0

    .line 733
    :cond_1
    move v4, v1

    :goto_0
    iput v1, v2, Lcom/android/server/AppOpsService$UidState;->pendingAskOp:I

    .line 734
    iput-boolean v1, v2, Lcom/android/server/AppOpsService$UidState;->receivedPendingAskResponse:Z

    .line 735
    if-eqz v4, :cond_2

    .line 736
    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    monitor-exit v0

    .line 735
    return v3

    .line 738
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    const/16 v0, 0x3b

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/AppOpsService$3;->check(IILjava/lang/String;)I

    move-result v2

    .line 741
    if-ne v2, v4, :cond_4

    .line 742
    return v1

    .line 744
    :cond_4
    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/AppOpsService$3;->check(IILjava/lang/String;)I

    move-result v4

    .line 750
    if-nez v4, :cond_5

    .line 751
    return v3

    .line 752
    :cond_5
    const/4 v3, 0x5

    if-ne v4, v3, :cond_7

    .line 753
    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/AppOpsService$3;->scheduleAskOperation(IILjava/lang/String;)V

    .line 755
    if-nez v2, :cond_6

    .line 756
    nop

    .line 755
    move v1, v5

    goto :goto_2

    .line 756
    :cond_6
    nop

    .line 755
    :goto_2
    return v1

    .line 757
    :cond_7
    if-nez v2, :cond_8

    .line 758
    return v5

    .line 759
    :cond_8
    if-ne v2, v3, :cond_9

    .line 760
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/AppOpsService$3;->scheduleAskOperation(IILjava/lang/String;)V

    .line 763
    :cond_9
    return v1

    .line 738
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .locals 0

    .line 768
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppOpsService$3;->getMountMode(ILjava/lang/String;)I

    move-result p1

    .line 769
    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
