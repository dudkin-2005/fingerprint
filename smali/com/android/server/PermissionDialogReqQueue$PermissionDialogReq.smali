.class public final Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
.super Ljava/lang/Object;
.source "PermissionDialogReqQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionDialogReqQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionDialogReq"
.end annotation


# instance fields
.field mHasResult:Z

.field final mOp:Lcom/android/server/AppOpsService$Op;

.field mResult:I


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService$Op;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mHasResult:Z

    .line 35
    iput-object p1, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mOp:Lcom/android/server/AppOpsService$Op;

    .line 36
    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .line 47
    monitor-enter p0

    .line 48
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mHasResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 50
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :goto_1
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    goto :goto_1

    .line 54
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    iget v0, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mResult:I

    return v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public set(I)V
    .locals 1

    .line 39
    monitor-enter p0

    .line 40
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mHasResult:Z

    .line 41
    iput p1, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mResult:I

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
