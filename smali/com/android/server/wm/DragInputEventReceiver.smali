.class Lcom/android/server/wm/DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "DragInputEventReceiver.java"


# instance fields
.field private final mDragDropController:Lcom/android/server/wm/DragDropController;

.field private mIsStartEvent:Z

.field private mMuteInput:Z

.field private mStylusButtonDownAtStart:Z


# direct methods
.method constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/DragDropController;)V
    .registers 5
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "controller"    # Lcom/android/server/wm/DragDropController;

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 53
    iput-object p3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 54
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 12
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I

    .line 58
    const/4 v0, 0x0

    move v1, v0

    .line 60
    .local v1, "handled":Z
    :try_start_2
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_b6

    .line 61
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_b6

    iget-boolean v2, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    if-eqz v2, :cond_14

    goto/16 :goto_b6

    .line 65
    :cond_14
    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .line 66
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 67
    .local v3, "newX":F
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 68
    .local v4, "newY":F
    nop

    .line 69
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    const/4 v6, 0x1

    if-eqz v5, :cond_2b

    move v5, v6

    goto :goto_2c

    :cond_2b
    move v5, v0

    .line 71
    .local v5, "isStylusButtonDown":Z
    :goto_2c
    iget-boolean v7, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    if-eqz v7, :cond_34

    .line 74
    iput-boolean v5, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    .line 78
    :cond_34
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_bc
    .catchall {:try_start_2 .. :try_end_38} :catchall_ba

    packed-switch v0, :pswitch_data_ce

    .line 110
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 102
    return-void

    .line 98
    :pswitch_3f
    :try_start_3f
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_4a

    const-string v0, "WindowManager"

    const-string v7, "Drag cancelled!"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_4a
    iput-boolean v6, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 100
    goto :goto_9d

    .line 83
    :pswitch_4d
    iget-boolean v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    if-eqz v0, :cond_9d

    if-nez v5, :cond_9d

    .line 84
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_75

    .line 85
    const-string v0, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Button no longer pressed; dropping at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_75
    iput-boolean v6, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    goto :goto_9d

    .line 92
    :pswitch_78
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_9a

    .line 93
    const-string v0, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got UP on move channel; dropping at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_9a
    iput-boolean v6, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 96
    nop

    .line 105
    :cond_9d
    :goto_9d
    iget-object v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-boolean v7, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    xor-int/2addr v6, v7

    invoke-virtual {v0, v6, v3, v4}, Lcom/android/server/wm/DragDropController;->handleMotionEvent(ZFF)V

    .line 106
    const/4 v1, 0x1

    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    .end local v3    # "newX":F
    .end local v4    # "newY":F
    .end local v5    # "isStylusButtonDown":Z
    goto :goto_c4

    .line 80
    .restart local v2    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v3    # "newX":F
    .restart local v4    # "newY":F
    .restart local v5    # "isStylusButtonDown":Z
    :pswitch_a7
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_b2

    const-string v0, "WindowManager"

    const-string v6, "Unexpected ACTION_DOWN in drag layer"

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_b2} :catch_bc
    .catchall {:try_start_3f .. :try_end_b2} :catchall_ba

    .line 110
    :cond_b2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 81
    return-void

    .line 110
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    .end local v3    # "newX":F
    .end local v4    # "newY":F
    .end local v5    # "isStylusButtonDown":Z
    :cond_b6
    :goto_b6
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 63
    return-void

    .line 110
    :catchall_ba
    move-exception v0

    goto :goto_c9

    .line 107
    :catch_bc
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    :try_start_bd
    const-string v2, "WindowManager"

    const-string v3, "Exception caught by drag handleMotion"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c4
    .catchall {:try_start_bd .. :try_end_c4} :catchall_ba

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 111
    nop

    .line 112
    return-void

    .line 110
    :goto_c9
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v0

    nop

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_78
        :pswitch_4d
        :pswitch_3f
    .end packed-switch
.end method
