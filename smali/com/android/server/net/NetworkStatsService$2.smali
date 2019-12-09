.class Lcom/android/server/net/NetworkStatsService$2;
.super Landroid/os/Handler;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService;

    .line 840
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 842
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_32

    .line 844
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 845
    .local v0, "uid":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 846
    .local v1, "uidForeground":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 847
    :try_start_13
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 848
    .local v3, "set":I
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;
    invoke-static {v4}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;)Landroid/util/SparseIntArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 849
    .local v4, "oldSet":I
    if-eq v4, v3, :cond_30

    .line 850
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;
    invoke-static {v5}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 851
    invoke-static {v0, v3}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V

    .line 853
    .end local v3    # "set":I
    .end local v4    # "oldSet":I
    :cond_30
    monitor-exit v2

    .line 854
    nop

    .line 858
    .end local v0    # "uid":I
    .end local v1    # "uidForeground":Ljava/lang/Boolean;
    :goto_32
    return-void

    .line 853
    .restart local v0    # "uid":I
    .restart local v1    # "uidForeground":Ljava/lang/Boolean;
    :catchall_33
    move-exception v3

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_13 .. :try_end_35} :catchall_33

    throw v3
.end method
