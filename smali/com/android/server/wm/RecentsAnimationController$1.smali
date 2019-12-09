.class Lcom/android/server/wm/RecentsAnimationController$1;
.super Landroid/view/IRecentsAnimationController$Stub;
.source "RecentsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RecentsAnimationController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 118
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {p0}, Landroid/view/IRecentsAnimationController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Z)V
    .registers 7
    .param p1, "moveHomeToTop"    # Z

    .line 152
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v0, :cond_2a

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/RecentsAnimationController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "): mCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 153
    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 156
    .local v0, "token":J
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$200(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_5f

    .line 157
    :try_start_39
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z
    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 158
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_5c

    .line 169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    return-void

    .line 160
    :cond_46
    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_5c

    .line 164
    :try_start_47
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p1, :cond_53

    .line 165
    nop

    .line 166
    move v4, v3

    goto :goto_54

    :cond_53
    const/4 v4, 0x2

    .line 164
    :goto_54
    invoke-interface {v2, v4, v3}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZ)V
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_5f

    .line 169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    nop

    .line 171
    return-void

    .line 160
    :catchall_5c
    move-exception v3

    :try_start_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    :try_start_5e
    throw v3
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    .line 169
    :catchall_5f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public hideCurrentInputMethod()V
    .registers 4

    .line 228
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 230
    .local v0, "token":J
    :try_start_4
    const-class v2, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 231
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 232
    .local v2, "inputMethodManagerInternal":Landroid/view/inputmethod/InputMethodManagerInternal;
    if-eqz v2, :cond_11

    .line 233
    invoke-interface {v2}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    .line 236
    .end local v2    # "inputMethodManagerInternal":Landroid/view/inputmethod/InputMethodManagerInternal;
    :cond_11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 237
    nop

    .line 238
    return-void

    .line 236
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public screenshotTask(I)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 11
    .param p1, "taskId"    # I

    .line 122
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v0, :cond_2b

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/RecentsAnimationController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenshotTask("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): mCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 123
    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 126
    .local v0, "token":J
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$200(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_95

    .line 127
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z
    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_48

    .line 128
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_92

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    return-object v4

    .line 130
    :cond_48
    :try_start_48
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$300(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 130
    .local v3, "i":I
    :goto_54
    if-ltz v3, :cond_8d

    .line 131
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/wm/RecentsAnimationController;->access$300(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 132
    .local v6, "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    # getter for: Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v6}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$400(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v7

    .line 133
    .local v7, "task":Lcom/android/server/wm/Task;
    iget v8, v7, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v8, p1, :cond_8a

    .line 134
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 135
    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->access$200(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 136
    .local v4, "snapshotController":Lcom/android/server/wm/TaskSnapshotController;
    new-array v5, v5, [Lcom/android/server/wm/Task;

    const/4 v8, 0x0

    aput-object v7, v5, v8

    invoke-static {v5}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v5

    .line 137
    .local v5, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 138
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V

    .line 139
    invoke-virtual {v4, p1, v8, v8, v8}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v8

    monitor-exit v2
    :try_end_86
    .catchall {:try_start_48 .. :try_end_86} :catchall_92

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    return-object v8

    .line 130
    .end local v4    # "snapshotController":Lcom/android/server/wm/TaskSnapshotController;
    .end local v5    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    .end local v6    # "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .end local v7    # "task":Lcom/android/server/wm/Task;
    :cond_8a
    add-int/lit8 v3, v3, -0x1

    goto :goto_54

    .line 143
    .end local v3    # "i":I
    :cond_8d
    :try_start_8d
    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_92

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    return-object v4

    .line 144
    :catchall_92
    move-exception v3

    :try_start_93
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    :try_start_94
    throw v3
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_95

    .line 146
    :catchall_95
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .registers 7
    .param p1, "behindSystemBars"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 178
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$200(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_47

    .line 179
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$300(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1b
    if-ltz v3, :cond_33

    .line 180
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->access$300(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    # getter for: Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$400(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    .line 179
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 182
    .end local v3    # "i":I
    :cond_33
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$200(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 183
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_44

    .line 185
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    nop

    .line 187
    return-void

    .line 183
    :catchall_44
    move-exception v3

    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    .line 185
    :catchall_47
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setInputConsumerEnabled(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .line 191
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v0, :cond_2b

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/RecentsAnimationController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInputConsumerEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "): mCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 192
    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 195
    .local v0, "token":J
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$200(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_6a

    .line 196
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z
    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 197
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_67

    .line 205
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    return-void

    .line 200
    :cond_47
    :try_start_47
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # setter for: Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z
    invoke-static {v3, p1}, Lcom/android/server/wm/RecentsAnimationController;->access$602(Lcom/android/server/wm/RecentsAnimationController;Z)Z

    .line 201
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$200(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 202
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$200(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 203
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_47 .. :try_end_62} :catchall_67

    .line 205
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    nop

    .line 207
    return-void

    .line 203
    :catchall_67
    move-exception v3

    :try_start_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    :try_start_69
    throw v3
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    .line 205
    :catchall_6a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSplitScreenMinimized(Z)V
    .registers 7
    .param p1, "minimized"    # Z

    .line 211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 213
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$200(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_34

    .line 214
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z
    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 215
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_31

    .line 222
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    return-void

    .line 218
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # setter for: Lcom/android/server/wm/RecentsAnimationController;->mSplitScreenMinimized:Z
    invoke-static {v3, p1}, Lcom/android/server/wm/RecentsAnimationController;->access$702(Lcom/android/server/wm/RecentsAnimationController;Z)Z

    .line 219
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$1;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    # getter for: Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$200(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 220
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_31

    .line 222
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    nop

    .line 224
    return-void

    .line 220
    :catchall_31
    move-exception v3

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 222
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
