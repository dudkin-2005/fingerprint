.class public Lcom/android/server/PermissionDialogReqQueue;
.super Ljava/lang/Object;
.source "PermissionDialogReqQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    }
.end annotation


# instance fields
.field private mDialog:Lcom/android/server/PermissionDialog;

.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->resultList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dismissAndNotify(I)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    monitor-enter p0

    .line 85
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->resultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->resultList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    .line 87
    invoke-virtual {v0, p1}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->set(I)V

    .line 88
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->resultList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object p1, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    invoke-virtual {p1}, Lcom/android/server/PermissionDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 92
    iget-object p1, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    invoke-virtual {p1}, Lcom/android/server/PermissionDialog;->dismiss()V

    .line 94
    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    .line 95
    return-void

    .line 90
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public ignore()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    invoke-virtual {v0}, Lcom/android/server/PermissionDialog;->ignore()V

    .line 101
    :cond_0
    return-void
.end method

.method public register(Lcom/android/server/AppOpsService;Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V
    .locals 7

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->resultList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v2

    .line 69
    new-instance v0, Lcom/android/server/PermissionDialog;

    iget-object v1, p2, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mOp:Lcom/android/server/AppOpsService$Op;

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->op:I

    iget-object v1, p2, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mOp:Lcom/android/server/AppOpsService$Op;

    iget v5, v1, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object p2, p2, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mOp:Lcom/android/server/AppOpsService$Op;

    iget-object v6, p2, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/PermissionDialog;-><init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    .line 72
    :cond_0
    return-void

    .line 66
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public showDialog()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    invoke-virtual {v0}, Lcom/android/server/PermissionDialog;->show()V

    .line 78
    :cond_0
    return-void
.end method
