.class Lcom/android/server/policy/StatusBarController$1;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "StatusBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/StatusBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/StatusBarController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/StatusBarController;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(I)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    iget-object p1, p1, Lcom/android/server/policy/StatusBarController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/StatusBarController$1$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/StatusBarController$1$3;-><init>(Lcom/android/server/policy/StatusBarController$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    iget-object p1, p1, Lcom/android/server/policy/StatusBarController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/StatusBarController$1$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/StatusBarController$1$4;-><init>(Lcom/android/server/policy/StatusBarController$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method public onAppTransitionPendingLocked()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    iget-object v0, v0, Lcom/android/server/policy/StatusBarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/StatusBarController$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/StatusBarController$1$1;-><init>(Lcom/android/server/policy/StatusBarController$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

.method public onAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I
    .locals 6

    .line 60
    iget-object p1, p0, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    iget-object p1, p1, Lcom/android/server/policy/StatusBarController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/policy/StatusBarController$1$2;

    move-object v0, p2

    move-object v1, p0

    move-wide v2, p6

    move-wide v4, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/StatusBarController$1$2;-><init>(Lcom/android/server/policy/StatusBarController$1;JJ)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    const/4 p1, 0x0

    return p1
.end method
