.class Lcom/android/server/wm/DragDropController;
.super Ljava/lang/Object;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragDropController$DragHandler;
    }
.end annotation


# static fields
.field private static final DRAG_SHADOW_ALPHA_TRANSPARENT:F = 0.7071f

.field private static final DRAG_TIMEOUT_MS:J = 0x1388L

.field static final MSG_ANIMATION_END:I = 0x2

.field static final MSG_DRAG_END_TIMEOUT:I = 0x0

.field static final MSG_TEAR_DOWN_DRAG_AND_DROP_INPUT:I = 0x1


# instance fields
.field private mCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDragState:Lcom/android/server/wm/DragState;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/wm/DragDropController$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DragDropController$1;-><init>(Lcom/android/server/wm/DragDropController;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 87
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 88
    new-instance v0, Lcom/android/server/wm/DragDropController$DragHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DragDropController$DragHandler;-><init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DragDropController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    return-object v0
.end method


# virtual methods
.method cancelDragAndDrop(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "dragToken"    # Landroid/os/IBinder;

    .line 245
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_b

    .line 246
    const-string v0, "WindowManager"

    const-string v1, "cancelDragAndDrop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preCancelDragAndDrop(Landroid/os/IBinder;)V

    .line 251
    :try_start_16
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_67

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 252
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v1, :cond_52

    .line 257
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_43

    .line 264
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 265
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->cancelDragLocked()V

    .line 266
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_61

    :try_start_33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_67

    .line 268
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    .line 269
    nop

    .line 270
    return-void

    .line 258
    :cond_43
    :try_start_43
    const-string v1, "WindowManager"

    const-string v2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_52
    const-string v1, "WindowManager"

    const-string v2, "cancelDragAndDrop() without prepareDrag()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cancelDragAndDrop() without prepareDrag()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_43 .. :try_end_63} :catchall_61

    :try_start_63
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_67

    .line 268
    :catchall_67
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    throw v0
.end method

.method dragDropActiveLocked()Z
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 5
    .param p1, "window"    # Landroid/view/IWindow;

    .line 297
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_1e

    .line 298
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag into new candidate view @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1e
    return-void
.end method

.method dragRecipientExited(Landroid/view/IWindow;)V
    .registers 5
    .param p1, "window"    # Landroid/view/IWindow;

    .line 303
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_1e

    .line 304
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag from old candidate view @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_1e
    return-void
.end method

.method getInputWindowHandleLocked()Lcom/android/server/input/InputWindowHandle;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->getInputWindowHandle()Lcom/android/server/input/InputWindowHandle;

    move-result-object v0

    return-object v0
.end method

.method handleMotionEvent(ZFF)V
    .registers 6
    .param p1, "keepHandling"    # Z
    .param p2, "newX"    # F
    .param p3, "newY"    # F

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 281
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    if-nez v1, :cond_13

    .line 285
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 288
    :cond_13
    if-eqz p1, :cond_1b

    .line 289
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/DragState;->notifyMoveLocked(FF)V

    goto :goto_20

    .line 291
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/DragState;->notifyDropLocked(FF)V

    .line 293
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 294
    return-void

    .line 293
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V
    .registers 4
    .param p1, "dragState"    # Lcom/android/server/wm/DragState;

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eq v0, p1, :cond_c

    .line 329
    const-string v0, "WindowManager"

    const-string v1, "Unknown drag state is closed"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 332
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 333
    return-void
.end method

.method performDrag(Landroid/view/SurfaceSession;IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 37
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "callerPid"    # I
    .param p3, "callerUid"    # I
    .param p4, "window"    # Landroid/view/IWindow;
    .param p5, "flags"    # I
    .param p6, "surface"    # Landroid/view/SurfaceControl;
    .param p7, "touchSource"    # I
    .param p8, "touchX"    # F
    .param p9, "touchY"    # F
    .param p10, "thumbCenterX"    # F
    .param p11, "thumbCenterY"    # F
    .param p12, "data"    # Landroid/content/ClipData;

    move-object/from16 v8, p0

    move-object/from16 v6, p4

    move-object/from16 v5, p6

    move/from16 v3, p8

    move/from16 v2, p9

    move/from16 v1, p10

    move/from16 v4, p11

    .line 98
    move-object/from16 v7, p12

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_47

    .line 99
    const-string v0, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "perform drag: win="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " surface="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " flags="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 99
    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_47
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    move-object v15, v0

    .line 104
    .local v15, "dragToken":Landroid/os/IBinder;
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    move-object v10, v6

    move-object v11, v15

    move/from16 v12, p7

    move v13, v3

    move v14, v2

    move-object/from16 v18, v15

    move v15, v1

    .end local v15    # "dragToken":Landroid/os/IBinder;
    .local v18, "dragToken":Landroid/os/IBinder;
    move/from16 v16, v4

    move-object/from16 v17, v7

    invoke-interface/range {v9 .. v17}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->prePerformDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z

    move-result v0

    move v9, v0

    .line 107
    .local v9, "callbackResult":Z
    :try_start_68
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v10
    :try_end_6d
    .catchall {:try_start_68 .. :try_end_6d} :catchall_2fa

    :try_start_6d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_2cc

    .line 109
    const/4 v0, 0x0

    if-nez v9, :cond_be

    .line 110
    :try_start_73
    const-string v11, "WindowManager"

    const-string v12, "IDragDropCallback rejects the performDrag request"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_b0

    .line 111
    nop

    .line 190
    if-eqz v5, :cond_8f

    .line 191
    :try_start_7d
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    goto :goto_8f

    .line 197
    :catchall_81
    move-exception v0

    move/from16 v13, p5

    move/from16 v15, p7

    move v6, v2

    move v7, v4

    move-object v1, v5

    move/from16 v19, v9

    move-object/from16 v5, v18

    goto/16 :goto_2f3

    .line 193
    :cond_8f
    :goto_8f
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v11, :cond_a0

    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v11}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v11

    if-nez v11, :cond_a0

    .line 194
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v11}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_a0
    monitor-exit v10
    :try_end_a1
    .catchall {:try_start_7d .. :try_end_a1} :catchall_81

    .line 200
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v10, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v10}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 111
    return-object v0

    .line 190
    :catchall_b0
    move-exception v0

    move/from16 v13, p5

    move/from16 v15, p7

    move v6, v2

    move v7, v4

    move-object v1, v5

    move/from16 v19, v9

    move-object/from16 v5, v18

    goto/16 :goto_2d9

    .line 114
    :cond_be
    :try_start_be
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v11
    :try_end_c2
    .catchall {:try_start_be .. :try_end_c2} :catchall_2cc

    if-eqz v11, :cond_f2

    .line 115
    :try_start_c4
    const-string v11, "WindowManager"

    const-string v12, "Drag already in progress"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_b0

    .line 116
    nop

    .line 190
    if-eqz v5, :cond_d1

    .line 191
    :try_start_ce
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 193
    :cond_d1
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v11, :cond_e2

    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v11}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v11

    if-nez v11, :cond_e2

    .line 194
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v11}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_e2
    monitor-exit v10
    :try_end_e3
    .catchall {:try_start_ce .. :try_end_e3} :catchall_81

    .line 200
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v10, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v10}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 116
    return-object v0

    .line 119
    :cond_f2
    :try_start_f2
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v0, v6, v12}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v11
    :try_end_f9
    .catchall {:try_start_f2 .. :try_end_f9} :catchall_2cc

    .line 121
    .local v11, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v11, :cond_138

    .line 122
    :try_start_fb
    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad requesting window "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_fb .. :try_end_111} :catchall_b0

    .line 123
    nop

    .line 190
    if-eqz v5, :cond_117

    .line 191
    :try_start_114
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 193
    :cond_117
    iget-object v12, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v12, :cond_128

    iget-object v12, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v12}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v12

    if-nez v12, :cond_128

    .line 194
    iget-object v12, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v12}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_128
    monitor-exit v10
    :try_end_129
    .catchall {:try_start_114 .. :try_end_129} :catchall_81

    .line 200
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v10, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v10}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 123
    return-object v0

    .line 138
    :cond_138
    :try_start_138
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12
    :try_end_13c
    .catchall {:try_start_138 .. :try_end_13c} :catchall_2cc

    .line 139
    .local v12, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v12, :cond_16c

    .line 140
    :try_start_13e
    const-string v13, "WindowManager"

    const-string v14, "display content is null"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_145
    .catchall {:try_start_13e .. :try_end_145} :catchall_b0

    .line 141
    nop

    .line 190
    if-eqz v5, :cond_14b

    .line 191
    :try_start_148
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 193
    :cond_14b
    iget-object v13, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v13, :cond_15c

    iget-object v13, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v13}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v13

    if-nez v13, :cond_15c

    .line 194
    iget-object v13, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v13}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_15c
    monitor-exit v10
    :try_end_15d
    .catchall {:try_start_148 .. :try_end_15d} :catchall_81

    .line 200
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v10, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v10}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 141
    return-object v0

    .line 144
    :cond_16c
    move/from16 v13, p5

    and-int/lit16 v14, v13, 0x200

    if-nez v14, :cond_176

    .line 145
    const v14, 0x3f350481    # 0.7071f

    goto :goto_178

    :cond_176
    const/high16 v14, 0x3f800000    # 1.0f

    .line 146
    .local v14, "alpha":F
    :goto_178
    :try_start_178
    invoke-interface/range {p4 .. p4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v15
    :try_end_17c
    .catchall {:try_start_178 .. :try_end_17c} :catchall_2ca

    move/from16 v19, v9

    move-object v9, v7

    move-object v7, v15

    .line 147
    .end local v9    # "callbackResult":Z
    .local v7, "winBinder":Landroid/os/IBinder;
    .local v19, "callbackResult":Z
    :try_start_180
    new-instance v15, Landroid/os/Binder;

    invoke-direct {v15}, Landroid/os/Binder;-><init>()V
    :try_end_185
    .catchall {:try_start_180 .. :try_end_185} :catchall_2c0

    move-object v4, v15

    .line 148
    .local v4, "token":Landroid/os/IBinder;
    :try_start_186
    new-instance v15, Lcom/android/server/wm/DragState;

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_18a
    .catchall {:try_start_186 .. :try_end_18a} :catchall_2b7

    move-object v1, v15

    move-object v2, v0

    move-object v3, v8

    move-object/from16 v5, p6

    move v6, v13

    :try_start_190
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V

    iput-object v15, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_195
    .catchall {:try_start_190 .. :try_end_195} :catchall_2ad

    .line 149
    const/4 v1, 0x0

    .line 150
    .end local p6    # "surface":Landroid/view/SurfaceControl;
    .local v1, "surface":Landroid/view/SurfaceControl;
    :try_start_196
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v2, p2

    iput v2, v0, Lcom/android/server/wm/DragState;->mPid:I

    .line 151
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v3, p3

    iput v3, v0, Lcom/android/server/wm/DragState;->mUid:I

    .line 152
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput v14, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    .line 153
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_1a8
    .catchall {:try_start_196 .. :try_end_1a8} :catchall_2a1

    move-object/from16 v5, v18

    :try_start_1aa
    iput-object v5, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 155
    .end local v18    # "dragToken":Landroid/os/IBinder;
    .local v5, "dragToken":Landroid/os/IBinder;
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 156
    .local v0, "display":Landroid/view/Display;
    iget-object v6, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    iget-object v15, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, v11, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface {v6, v15, v0, v2, v3}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)Z

    move-result v2

    if-nez v2, :cond_201

    .line 159
    const-string v2, "WindowManager"

    const-string v3, "Unable to transfer touch focus"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cd
    .catchall {:try_start_1aa .. :try_end_1cd} :catchall_297

    .line 160
    nop

    .line 190
    if-eqz v1, :cond_1df

    .line 191
    :try_start_1d0
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    goto :goto_1df

    .line 197
    .end local v0    # "display":Landroid/view/Display;
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v7    # "winBinder":Landroid/os/IBinder;
    .end local v11    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "alpha":F
    :catchall_1d4
    move-exception v0

    move/from16 v15, p7

    move/from16 v3, p8

    move/from16 v6, p9

    move/from16 v7, p11

    goto/16 :goto_2f3

    .line 193
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v7    # "winBinder":Landroid/os/IBinder;
    .restart local v11    # "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v14    # "alpha":F
    :cond_1df
    :goto_1df
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_1f0

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_1f0

    .line 194
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_1f0
    monitor-exit v10
    :try_end_1f1
    .catchall {:try_start_1d0 .. :try_end_1f1} :catchall_1d4

    .line 200
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 160
    const/4 v2, 0x0

    return-object v2

    .line 163
    :cond_201
    :try_start_201
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v12, v2, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 164
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v9, v2, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 165
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_20b
    .catchall {:try_start_201 .. :try_end_20b} :catchall_297

    move/from16 v3, p8

    move/from16 v6, p9

    :try_start_20f
    invoke-virtual {v2, v3, v6}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    .line 166
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_214
    .catchall {:try_start_20f .. :try_end_214} :catchall_293

    move/from16 v15, p7

    :try_start_216
    invoke-virtual {v2, v15}, Lcom/android/server/wm/DragState;->overridePointerIconLocked(I)V

    .line 168
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v20, v4

    move/from16 v4, p10

    iput v4, v2, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 169
    .end local v4    # "token":Landroid/os/IBinder;
    .local v20, "token":Landroid/os/IBinder;
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_223
    .catchall {:try_start_216 .. :try_end_223} :catchall_291

    move-object/from16 v21, v7

    move/from16 v7, p11

    :try_start_227
    iput v7, v2, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 172
    .end local v7    # "winBinder":Landroid/os/IBinder;
    .local v21, "winBinder":Landroid/os/IBinder;
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 173
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    sget-boolean v16, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v16, :cond_23b

    move-object/from16 v22, v0

    const-string v0, "WindowManager"

    .line 173
    .end local v0    # "display":Landroid/view/Display;
    .local v22, "display":Landroid/view/Display;
    const-string v9, ">>> OPEN TRANSACTION performDrag"

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23d

    .line 175
    .end local v22    # "display":Landroid/view/Display;
    .restart local v0    # "display":Landroid/view/Display;
    :cond_23b
    move-object/from16 v22, v0

    .line 176
    .end local v0    # "display":Landroid/view/Display;
    .restart local v22    # "display":Landroid/view/Display;
    :goto_23d
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 177
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v9, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v9, v9, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    invoke-virtual {v0, v2, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 178
    sub-float v9, v3, v4

    sub-float v4, v6, v7

    invoke-virtual {v0, v2, v9, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 180
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 181
    invoke-virtual {v12, v0, v2}, Lcom/android/server/wm/DisplayContent;->reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 182
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->scheduleAnimation()V

    .line 184
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_263

    .line 185
    const-string v4, "WindowManager"

    const-string v9, "<<< CLOSE TRANSACTION performDrag"

    invoke-static {v4, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_263
    iget-object v4, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v4, v3, v6}, Lcom/android/server/wm/DragState;->notifyLocationLocked(FF)V
    :try_end_268
    .catchall {:try_start_227 .. :try_end_268} :catchall_28f

    .line 190
    .end local v0    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v11    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "alpha":F
    .end local v20    # "token":Landroid/os/IBinder;
    .end local v21    # "winBinder":Landroid/os/IBinder;
    .end local v22    # "display":Landroid/view/Display;
    if-eqz v1, :cond_26d

    .line 191
    :try_start_26a
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 193
    :cond_26d
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_27e

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_27e

    .line 194
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 197
    :cond_27e
    monitor-exit v10
    :try_end_27f
    .catchall {:try_start_26a .. :try_end_27f} :catchall_2df

    :try_start_27f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_282
    .catchall {:try_start_27f .. :try_end_282} :catchall_2f8

    .line 198
    nop

    .line 200
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 198
    return-object v5

    .line 190
    :catchall_28f
    move-exception v0

    goto :goto_2d9

    :catchall_291
    move-exception v0

    goto :goto_29e

    :catchall_293
    move-exception v0

    move/from16 v15, p7

    goto :goto_29e

    :catchall_297
    move-exception v0

    move/from16 v15, p7

    move/from16 v3, p8

    move/from16 v6, p9

    :goto_29e
    move/from16 v7, p11

    goto :goto_2d9

    .end local v5    # "dragToken":Landroid/os/IBinder;
    .restart local v18    # "dragToken":Landroid/os/IBinder;
    :catchall_2a1
    move-exception v0

    move/from16 v15, p7

    move-object/from16 v5, v18

    move/from16 v3, p8

    move/from16 v6, p9

    move/from16 v7, p11

    goto :goto_2c9

    .line 190
    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local p6    # "surface":Landroid/view/SurfaceControl;
    :catchall_2ad
    move-exception v0

    move/from16 v15, p7

    move-object/from16 v5, v18

    move/from16 v3, p8

    move/from16 v6, p9

    goto :goto_2bd

    :catchall_2b7
    move-exception v0

    move/from16 v15, p7

    move v6, v2

    move-object/from16 v5, v18

    .end local p6    # "surface":Landroid/view/SurfaceControl;
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    :goto_2bd
    move/from16 v7, p11

    goto :goto_2c7

    .line 190
    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local p6    # "surface":Landroid/view/SurfaceControl;
    :catchall_2c0
    move-exception v0

    move/from16 v15, p7

    move v6, v2

    move v7, v4

    move-object/from16 v5, v18

    .line 190
    .end local p6    # "surface":Landroid/view/SurfaceControl;
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    :goto_2c7
    move-object/from16 v1, p6

    .line 190
    .end local v18    # "dragToken":Landroid/os/IBinder;
    .restart local v5    # "dragToken":Landroid/os/IBinder;
    :goto_2c9
    goto :goto_2d9

    .line 190
    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v5    # "dragToken":Landroid/os/IBinder;
    .end local v19    # "callbackResult":Z
    .restart local v9    # "callbackResult":Z
    .restart local v18    # "dragToken":Landroid/os/IBinder;
    .restart local p6    # "surface":Landroid/view/SurfaceControl;
    :catchall_2ca
    move-exception v0

    goto :goto_2cf

    :catchall_2cc
    move-exception v0

    move/from16 v13, p5

    .line 190
    .end local p6    # "surface":Landroid/view/SurfaceControl;
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    :goto_2cf
    move/from16 v15, p7

    move v6, v2

    move v7, v4

    move/from16 v19, v9

    move-object/from16 v5, v18

    move-object/from16 v1, p6

    .line 190
    .end local v9    # "callbackResult":Z
    .end local v18    # "dragToken":Landroid/os/IBinder;
    .restart local v5    # "dragToken":Landroid/os/IBinder;
    .restart local v19    # "callbackResult":Z
    :goto_2d9
    if-eqz v1, :cond_2e1

    .line 191
    :try_start_2db
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    goto :goto_2e1

    .line 197
    :catchall_2df
    move-exception v0

    goto :goto_2f3

    .line 193
    :cond_2e1
    :goto_2e1
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_2f2

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_2f2

    .line 194
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_2f2
    throw v0

    .line 197
    :goto_2f3
    monitor-exit v10
    :try_end_2f4
    .catchall {:try_start_2db .. :try_end_2f4} :catchall_2df

    :try_start_2f4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_2f8
    .catchall {:try_start_2f4 .. :try_end_2f8} :catchall_2f8

    .line 200
    :catchall_2f8
    move-exception v0

    goto :goto_307

    .line 200
    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v5    # "dragToken":Landroid/os/IBinder;
    .end local v19    # "callbackResult":Z
    .restart local v9    # "callbackResult":Z
    .restart local v18    # "dragToken":Landroid/os/IBinder;
    .restart local p6    # "surface":Landroid/view/SurfaceControl;
    :catchall_2fa
    move-exception v0

    move/from16 v13, p5

    move/from16 v15, p7

    move v6, v2

    move v7, v4

    move/from16 v19, v9

    move-object/from16 v5, v18

    move-object/from16 v1, p6

    .line 200
    .end local v9    # "callbackResult":Z
    .end local v18    # "dragToken":Landroid/os/IBinder;
    .end local p6    # "surface":Landroid/view/SurfaceControl;
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local v5    # "dragToken":Landroid/os/IBinder;
    .restart local v19    # "callbackResult":Z
    :goto_307
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    throw v0
.end method

.method registerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 82
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method reportDropResult(Landroid/view/IWindow;Z)V
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z

    .line 205
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 206
    .local v0, "token":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_26

    .line 207
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drop result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reported by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preReportDropResult(Landroid/view/IWindow;Z)V

    .line 212
    :try_start_31
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_d2

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 213
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_54

    .line 216
    const-string v2, "WindowManager"

    const-string v3, "Drop result given but no drag in progress"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_cc

    .line 240
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 217
    return-void

    .line 220
    :cond_54
    :try_start_54
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v2, v0, :cond_ad

    .line 229
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 230
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 231
    .local v2, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_93

    .line 232
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad result-reporting window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_54 .. :try_end_84} :catchall_cc

    .line 240
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 233
    return-void

    .line 236
    :cond_93
    :try_start_93
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean p2, v3, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 237
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v3}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 238
    .end local v2    # "callingWin":Lcom/android/server/wm/WindowState;
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_93 .. :try_end_9d} :catchall_cc

    :try_start_9d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_d2

    .line 240
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 241
    nop

    .line 242
    return-void

    .line 222
    :cond_ad
    :try_start_ad
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid drop-result claim by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "reportDropResult() by non-recipient"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 238
    :catchall_cc
    move-exception v2

    monitor-exit v1
    :try_end_ce
    .catchall {:try_start_ad .. :try_end_ce} :catchall_cc

    :try_start_ce
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_d2
    .catchall {:try_start_ce .. :try_end_d2} :catchall_d2

    .line 240
    :catchall_d2
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    throw v1
.end method

.method sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "window"    # Lcom/android/server/wm/WindowState;

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 93
    return-void
.end method

.method sendHandlerMessage(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 313
    return-void
.end method

.method sendTimeoutMessage(ILjava/lang/Object;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 321
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 322
    return-void
.end method
