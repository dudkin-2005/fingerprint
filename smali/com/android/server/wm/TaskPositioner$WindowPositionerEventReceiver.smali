.class final Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowPositionerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .registers 5
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "choreographer"    # Landroid/view/Choreographer;

    .line 124
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 125
    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 126
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 13
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I

    .line 130
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_1d1

    .line 131
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    goto/16 :goto_1d1

    .line 134
    :cond_e
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 135
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    .line 138
    .local v1, "handled":Z
    :try_start_12
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    invoke-static {v2}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_1c0
    .catchall {:try_start_12 .. :try_end_18} :catchall_1be

    if-eqz v2, :cond_1f

    .line 142
    const/4 v1, 0x1

    .line 214
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 143
    return-void

    .line 146
    :cond_1f
    :try_start_1f
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 147
    .local v2, "newX":F
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 149
    .local v3, "newY":F
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_1d4

    goto/16 :goto_147

    .line 184
    :pswitch_31
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_59

    .line 185
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_CANCEL @ {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_59
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # setter for: Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    invoke-static {v4, v5}, Lcom/android/server/wm/TaskPositioner;->access$002(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_147

    .line 157
    :pswitch_60
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_88

    .line 158
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_MOVE @ {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_88
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_91} :catch_1c0
    .catchall {:try_start_1f .. :try_end_91} :catchall_1be

    :try_start_91
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 161
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # invokes: Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z
    invoke-static {v7, v2, v3}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;FF)Z

    move-result v7

    # setter for: Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    invoke-static {v6, v7}, Lcom/android/server/wm/TaskPositioner;->access$002(Lcom/android/server/wm/TaskPositioner;Z)Z

    .line 162
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 163
    monitor-exit v4
    :try_end_af
    .catchall {:try_start_91 .. :try_end_af} :catchall_eb

    :try_start_af
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 164
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_147

    .line 165
    const-string/jumbo v4, "wm.TaskPositioner.resizeTask"

    const-wide/16 v6, 0x20

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_cc} :catch_1c0
    .catchall {:try_start_af .. :try_end_cc} :catchall_1be

    .line 168
    :try_start_cc
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 169
    # getter for: Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v8

    iget v8, v8, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v9

    .line 168
    invoke-interface {v4, v8, v9, v5}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_e5
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_e5} :catch_e6
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_e5} :catch_1c0
    .catchall {:try_start_cc .. :try_end_e5} :catchall_1be

    .line 171
    goto :goto_e7

    .line 170
    :catch_e6
    move-exception v4

    .line 172
    :goto_e7
    :try_start_e7
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ea} :catch_1c0
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_1be

    goto :goto_147

    .line 163
    :catchall_eb
    move-exception v5

    :try_start_ec
    monitor-exit v4
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    :try_start_ed
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 177
    :pswitch_f1
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_119

    .line 178
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_UP @ {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_119
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # setter for: Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    invoke-static {v4, v5}, Lcom/android/server/wm/TaskPositioner;->access$002(Lcom/android/server/wm/TaskPositioner;Z)Z

    .line 181
    goto :goto_147

    .line 151
    :pswitch_11f
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_147

    .line 152
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_DOWN @ {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_147
    :goto_147
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v4

    if-eqz v4, :cond_1bc

    .line 192
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mResizing:Z
    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->access$600(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v4

    .line 193
    .local v4, "wasResizing":Z
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_15e} :catch_1c0
    .catchall {:try_start_ed .. :try_end_15e} :catchall_1be

    :try_start_15e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 194
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # invokes: Lcom/android/server/wm/TaskPositioner;->endDragLocked()V
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)V

    .line 195
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 196
    monitor-exit v5
    :try_end_176
    .catchall {:try_start_15e .. :try_end_176} :catchall_1b6

    :try_start_176
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_179} :catch_1c0
    .catchall {:try_start_176 .. :try_end_179} :catchall_1be

    .line 198
    if-eqz v4, :cond_1aa

    :try_start_17b
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1aa

    .line 201
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 202
    # getter for: Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    const/4 v8, 0x3

    .line 201
    invoke-interface {v5, v6, v7, v8}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_1a7
    .catch Landroid/os/RemoteException; {:try_start_17b .. :try_end_1a7} :catch_1a8
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_1a7} :catch_1c0
    .catchall {:try_start_17b .. :try_end_1a7} :catchall_1be

    goto :goto_1aa

    .line 204
    :catch_1a8
    move-exception v5

    nop

    .line 208
    :cond_1aa
    :goto_1aa
    :try_start_1aa
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1b5} :catch_1c0
    .catchall {:try_start_1aa .. :try_end_1b5} :catchall_1be

    .line 208
    .end local v4    # "wasResizing":Z
    goto :goto_1bc

    .line 196
    .restart local v4    # "wasResizing":Z
    :catchall_1b6
    move-exception v6

    :try_start_1b7
    monitor-exit v5
    :try_end_1b8
    .catchall {:try_start_1b7 .. :try_end_1b8} :catchall_1b6

    :try_start_1b8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v6
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1bc} :catch_1c0
    .catchall {:try_start_1b8 .. :try_end_1bc} :catchall_1be

    .line 210
    .end local v4    # "wasResizing":Z
    :cond_1bc
    :goto_1bc
    const/4 v1, 0x1

    .line 210
    .end local v2    # "newX":F
    .end local v3    # "newY":F
    goto :goto_1c8

    .line 214
    :catchall_1be
    move-exception v2

    goto :goto_1cd

    .line 211
    :catch_1c0
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1c1
    const-string v3, "WindowManager"

    const-string v4, "Exception caught by drag handleMotion"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c8
    .catchall {:try_start_1c1 .. :try_end_1c8} :catchall_1be

    .line 214
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1c8
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 215
    nop

    .line 216
    return-void

    .line 214
    :goto_1cd
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v2

    .line 132
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    .end local v1    # "handled":Z
    :cond_1d1
    :goto_1d1
    return-void

    nop

    nop

    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_11f
        :pswitch_f1
        :pswitch_60
        :pswitch_31
    .end packed-switch
.end method
