.class Lcom/android/server/wm/DragDropController$DragHandler;
.super Landroid/os/Handler;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragDropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHandler"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final synthetic this$0:Lcom/android/server/wm/DragDropController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 341
    iput-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    .line 342
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 343
    iput-object p2, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 344
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 348
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_ae

    goto/16 :goto_ac

    .line 378
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 379
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    # getter for: Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    invoke-static {v1}, Lcom/android/server/wm/DragDropController;->access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v1

    if-nez v1, :cond_24

    .line 380
    const-string v1, "WindowManager"

    const-string/jumbo v2, "mDragState unexpectedly became null while plyaing animation"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 384
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    # getter for: Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    invoke-static {v1}, Lcom/android/server/wm/DragDropController;->access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 385
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_ac

    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 366
    :pswitch_39
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_44

    .line 367
    const-string v0, "WindowManager"

    const-string v1, "Drag ending; tearing down input channel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DragState$InputInterceptor;

    .line 370
    .local v0, "interceptor":Lcom/android/server/wm/DragState$InputInterceptor;
    if-nez v0, :cond_4b

    return-void

    .line 371
    :cond_4b
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 372
    invoke-virtual {v0}, Lcom/android/server/wm/DragState$InputInterceptor;->tearDown()V

    .line 373
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 374
    goto :goto_ac

    .line 373
    :catchall_5b
    move-exception v2

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 350
    .end local v0    # "interceptor":Lcom/android/server/wm/DragState$InputInterceptor;
    :pswitch_61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 351
    .local v0, "win":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_7f

    .line 352
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout ending drag to win "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_7f
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_84
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 357
    iget-object v2, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    # getter for: Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    invoke-static {v2}, Lcom/android/server/wm/DragDropController;->access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v2

    if-eqz v2, :cond_a1

    .line 358
    iget-object v2, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    # getter for: Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    invoke-static {v2}, Lcom/android/server/wm/DragDropController;->access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 359
    iget-object v2, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    # getter for: Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    invoke-static {v2}, Lcom/android/server/wm/DragDropController;->access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 361
    :cond_a1
    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_84 .. :try_end_a2} :catchall_a6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 362
    goto :goto_ac

    .line 361
    :catchall_a6
    move-exception v2

    :try_start_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 389
    .end local v0    # "win":Landroid/os/IBinder;
    :goto_ac
    return-void

    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_61
        :pswitch_39
        :pswitch_7
    .end packed-switch
.end method
