.class Lcom/android/server/am/ActivityManagerService$9$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$9;

.field final synthetic val$d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$9;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/am/ActivityManagerService$9;

    .line 7876
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$9$1;->this$1:Lcom/android/server/am/ActivityManagerService$9;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$9$1;->val$d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 7879
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$9$1;->this$1:Lcom/android/server/am/ActivityManagerService$9;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 7880
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$9$1;->val$d:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 7881
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$9$1;->this$1:Lcom/android/server/am/ActivityManagerService$9;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mLaunchWarningShown:Z

    .line 7882
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 7883
    return-void

    .line 7882
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
