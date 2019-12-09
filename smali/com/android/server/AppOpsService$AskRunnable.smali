.class final Lcom/android/server/AppOpsService$AskRunnable;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AskRunnable"
.end annotation


# instance fields
.field private final mRequest:Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V
    .locals 0

    .line 3873
    iput-object p1, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    .line 3874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3875
    iput-object p2, p0, Lcom/android/server/AppOpsService$AskRunnable;->mRequest:Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    .line 3876
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3880
    iget-object v0, p0, Lcom/android/server/AppOpsService$AskRunnable;->mRequest:Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    iget-object v0, v0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mOp:Lcom/android/server/AppOpsService$Op;

    iget-object v0, v0, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    .line 3881
    iget-object v1, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v1

    .line 3882
    :try_start_0
    const-string v2, "AppOps"

    const-string v3, "Creating dialog box"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3883
    iget-object v2, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    iget-object v3, p0, Lcom/android/server/AppOpsService$AskRunnable;->mRequest:Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/PermissionDialogReqQueue;->register(Lcom/android/server/AppOpsService;Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V

    .line 3884
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3885
    invoke-virtual {v0}, Lcom/android/server/PermissionDialogReqQueue;->showDialog()V

    .line 3886
    return-void

    .line 3884
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
