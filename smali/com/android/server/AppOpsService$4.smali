.class Lcom/android/server/AppOpsService$4;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
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

    .line 805
    iput-object p1, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 808
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 809
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 810
    iget-object p2, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter p2

    .line 811
    :try_start_0
    iget-object p1, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {p1, v0}, Lcom/android/server/AppOpsService;->access$702(Lcom/android/server/AppOpsService;Z)Z

    .line 812
    monitor-exit p2

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 813
    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 814
    iget-object p1, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter p1

    .line 815
    :try_start_1
    iget-object p2, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    iget-object p2, p2, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v0

    :goto_0
    if-ltz p2, :cond_4

    .line 816
    iget-object v1, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    iget-object v1, v1, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$UidState;

    .line 818
    iget-object v1, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 819
    if-nez v1, :cond_1

    .line 820
    goto :goto_3

    .line 823
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 824
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 825
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 826
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Ops;

    .line 827
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_2
    if-ltz v3, :cond_2

    .line 828
    invoke-virtual {v2, v3}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Op;

    .line 831
    iget-object v4, v4, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v4}, Lcom/android/server/PermissionDialogReqQueue;->ignore()V

    .line 827
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 833
    :cond_2
    goto :goto_1

    .line 815
    :cond_3
    :goto_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 835
    :cond_4
    iget-object p2, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/AppOpsService;->access$702(Lcom/android/server/AppOpsService;Z)Z

    .line 836
    monitor-exit p1

    goto :goto_4

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    .line 838
    :cond_5
    :goto_4
    return-void
.end method
