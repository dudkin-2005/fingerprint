.class Lcom/android/server/policy/PhoneWindowManager$19;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 8160
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 8163
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8164
    :try_start_9
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_13

    .line 8166
    monitor-exit v0

    return-void

    .line 8168
    :cond_13
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$4102(Lcom/android/server/policy/PhoneWindowManager;J)J

    .line 8173
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$4200(I)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mIsNeedToHideNavBar:Z

    if-nez v1, :cond_35

    .line 8175
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$19;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$4300(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/BarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/policy/BarController;->showTransient()V

    .line 8177
    :cond_35
    monitor-exit v0

    .line 8178
    return-void

    .line 8177
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw v1
.end method
