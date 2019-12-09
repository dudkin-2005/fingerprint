.class Lcom/android/server/wm/TaskPositioningController;
.super Ljava/lang/Object;
.source "TaskPositioningController.java"


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTaskPositioner:Lcom/android/server/wm/TaskPositioner;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "WindowManagerSerivce.mWindowMap"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/wm/InputMonitor;Landroid/app/IActivityManager;Landroid/os/Looper;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;
    .param p3, "inputMonitor"    # Lcom/android/server/wm/InputMonitor;
    .param p4, "activityManager"    # Landroid/app/IActivityManager;
    .param p5, "looper"    # Landroid/os/Looper;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 58
    iput-object p3, p0, Lcom/android/server/wm/TaskPositioningController;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 59
    iput-object p2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 60
    iput-object p4, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityManager;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method public static synthetic lambda$finishTaskPositioning$1(Lcom/android/server/wm/TaskPositioningController;)V
    .registers 4

    .line 165
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowManager"

    const-string v1, "finishPositioning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 168
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v1, :cond_25

    .line 169
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskPositioner;->unregister()V

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 171
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 173
    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 174
    return-void

    .line 173
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static synthetic lambda$handleTapOutsideTask$0(Lcom/android/server/wm/TaskPositioningController;IILcom/android/server/wm/DisplayContent;)V
    .registers 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 83
    const/4 v0, -0x1

    .line 86
    .local v0, "taskId":I
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 87
    invoke-interface {v1, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->isGestureButtonRegion(II)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 88
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GestureButton: skip handleTapOutsideTask x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 92
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 93
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 94
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_57

    .line 95
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    const/4 v5, 0x1

    .line 96
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v6

    int-to-float v7, p1

    int-to-float v8, p2

    .line 95
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result v3

    if-nez v3, :cond_53

    .line 97
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_6a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 99
    :cond_53
    :try_start_53
    iget v3, v2, Lcom/android/server/wm/Task;->mTaskId:I

    move v0, v3

    goto :goto_5c

    .line 101
    :cond_57
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/DisplayContent;->taskIdFromPoint(II)I

    move-result v3

    move v0, v3

    .line 103
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :goto_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_6a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 104
    if-ltz v0, :cond_69

    .line 106
    :try_start_62
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setFocusedTask(I)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_67} :catch_68

    .line 108
    goto :goto_69

    .line 107
    :catch_68
    move-exception v1

    .line 110
    :cond_69
    :goto_69
    return-void

    .line 103
    :catchall_6a
    move-exception v2

    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z
    .registers 22
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "resize"    # Z
    .param p3, "preserveOrientation"    # Z
    .param p4, "startX"    # F
    .param p5, "startY"    # F

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 115
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v1, :cond_4e

    .line 116
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPositioningLocked: win="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", resize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", preserveOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p3

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p4

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 120
    :cond_4e
    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    :goto_56
    const/4 v1, 0x0

    if-eqz v7, :cond_102

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-nez v2, :cond_61

    goto/16 :goto_102

    .line 124
    :cond_61
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-nez v2, :cond_82

    .line 125
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPositioningLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has no input channel,  probably being removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v1

    .line 130
    :cond_82
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    .line 131
    .local v12, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v12, :cond_a0

    .line 132
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPositioningLocked: Invalid display content "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v1

    .line 136
    :cond_a0
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v13

    .line 137
    .local v13, "display":Landroid/view/Display;
    iget-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/TaskPositioner;->create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 138
    iget-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v2, v12}, Lcom/android/server/wm/TaskPositioner;->register(Lcom/android/server/wm/DisplayContent;)V

    .line 139
    iget-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 145
    move-object v2, v7

    .line 146
    .local v2, "transferFocusFromWin":Lcom/android/server/wm/WindowState;
    iget-object v3, v0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_d2

    iget-object v3, v0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v3, v7, :cond_d2

    iget-object v3, v0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v3, v4, :cond_d2

    .line 148
    iget-object v3, v0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 150
    .end local v2    # "transferFocusFromWin":Lcom/android/server/wm/WindowState;
    .local v15, "transferFocusFromWin":Lcom/android/server/wm/WindowState;
    :cond_d2
    move-object v15, v2

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, v15, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v4, v4, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v2

    if-nez v2, :cond_f7

    .line 152
    const-string v2, "WindowManager"

    const-string/jumbo v3, "startPositioningLocked: Unable to transfer touch focus"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskPositioner;->unregister()V

    .line 154
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 155
    iget-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2, v14}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 156
    return v1

    .line 159
    :cond_f7
    iget-object v1, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskPositioner;->startDrag(Lcom/android/server/wm/WindowState;ZZFF)V

    .line 160
    return v14

    .line 121
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v13    # "display":Landroid/view/Display;
    .end local v15    # "transferFocusFromWin":Lcom/android/server/wm/WindowState;
    :cond_102
    :goto_102
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPositioningLocked: Bad window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v1
.end method


# virtual methods
.method finishTaskPositioning()V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$z3n1stJjOdhDbXXrvPlvlqmON6k;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$z3n1stJjOdhDbXXrvPlvlqmON6k;-><init>(Lcom/android/server/wm/TaskPositioningController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method

.method getDragWindowHandleLocked()Lcom/android/server/input/InputWindowHandle;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;II)V
    .registers 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;-><init>(Lcom/android/server/wm/TaskPositioningController;IILcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method isPositioningLocked()Z
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method startMovingTask(Landroid/view/IWindow;FF)Z
    .registers 15
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "startX"    # F
    .param p3, "startY"    # F

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 67
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    move-object v0, v2

    .line 70
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, v0

    move v9, p2

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result v2

    if-nez v2, :cond_23

    .line 72
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 74
    :cond_23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 76
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setFocusedTask(I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_33

    .line 77
    goto :goto_34

    :catch_33
    move-exception v1

    .line 78
    :goto_34
    const/4 v1, 0x1

    return v1

    .line 74
    :catchall_36
    move-exception v2

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method
