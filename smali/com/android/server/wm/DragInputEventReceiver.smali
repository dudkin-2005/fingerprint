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
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 45
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    .line 48
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 53
    iput-object p3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 54
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 6

    .line 58
    nop

    .line 60
    const/4 p2, 0x0

    :try_start_0
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_4

    .line 61
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 65
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 66
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 67
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 68
    nop

    .line 69
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 71
    move v3, v4

    goto :goto_0

    .line 69
    :cond_1
    nop

    .line 71
    move v3, p2

    :goto_0
    iget-boolean v5, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    if-eqz v5, :cond_2

    .line 74
    iput-boolean v3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    .line 75
    iput-boolean p2, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    .line 78
    :cond_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 102
    return-void

    .line 99
    :pswitch_0
    :try_start_1
    iput-boolean v4, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 100
    goto :goto_1

    .line 83
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    .line 88
    iput-boolean v4, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    goto :goto_1

    .line 95
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 96
    nop

    .line 105
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-boolean v3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    xor-int/2addr v3, v4

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/DragDropController;->handleMotionEvent(ZFF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    nop

    .line 110
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 81
    return-void

    .line 110
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 63
    return-void

    .line 110
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 107
    :catch_0
    move-exception v0

    .line 108
    :try_start_2
    const-string v1, "WindowManager"

    const-string v2, "Exception caught by drag handleMotion"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 111
    :goto_3
    nop

    .line 112
    return-void

    .line 110
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
