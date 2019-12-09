.class public Lcom/android/server/wm/AppWindowContainerController;
.super Lcom/android/server/wm/WindowContainerController;
.source "AppWindowContainerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWindowContainerController$H;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainerController<",
        "Lcom/android/server/wm/AppWindowToken;",
        "Lcom/android/server/wm/AppWindowContainerListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final STARTING_WINDOW_TYPE_NONE:I = 0x0

.field private static final STARTING_WINDOW_TYPE_SNAPSHOT:I = 0x1

.field private static final STARTING_WINDOW_TYPE_SPLASH_SCREEN:I = 0x2


# instance fields
.field private final mAddStartingWindow:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mOnWindowsGone:Ljava/lang/Runnable;

.field private final mOnWindowsVisible:Ljava/lang/Runnable;

.field private final mToken:Landroid/view/IApplicationToken;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskWindowContainerController;Landroid/view/IApplicationToken;Lcom/android/server/wm/AppWindowContainerListener;IIZZIZZZIIJ)V
    .registers 33
    .param p1, "taskController"    # Lcom/android/server/wm/TaskWindowContainerController;
    .param p2, "token"    # Landroid/view/IApplicationToken;
    .param p3, "listener"    # Lcom/android/server/wm/AppWindowContainerListener;
    .param p4, "index"    # I
    .param p5, "requestedOrientation"    # I
    .param p6, "fullscreen"    # Z
    .param p7, "showForAllUsers"    # Z
    .param p8, "configChanges"    # I
    .param p9, "voiceInteraction"    # Z
    .param p10, "launchTaskBehind"    # Z
    .param p11, "alwaysFocusable"    # Z
    .param p12, "targetSdkVersion"    # I
    .param p13, "rotationAnimationHint"    # I
    .param p14, "inputDispatchingTimeoutNanos"    # J

    .line 204
    nop

    .line 208
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v16

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-wide/from16 v14, p14

    invoke-direct/range {v0 .. v16}, Lcom/android/server/wm/AppWindowContainerController;-><init>(Lcom/android/server/wm/TaskWindowContainerController;Landroid/view/IApplicationToken;Lcom/android/server/wm/AppWindowContainerListener;IIZZIZZZIIJLcom/android/server/wm/WindowManagerService;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/TaskWindowContainerController;Landroid/view/IApplicationToken;Lcom/android/server/wm/AppWindowContainerListener;IIZZIZZZIIJLcom/android/server/wm/WindowManagerService;)V
    .registers 37
    .param p1, "taskController"    # Lcom/android/server/wm/TaskWindowContainerController;
    .param p2, "token"    # Landroid/view/IApplicationToken;
    .param p3, "listener"    # Lcom/android/server/wm/AppWindowContainerListener;
    .param p4, "index"    # I
    .param p5, "requestedOrientation"    # I
    .param p6, "fullscreen"    # Z
    .param p7, "showForAllUsers"    # Z
    .param p8, "configChanges"    # I
    .param p9, "voiceInteraction"    # Z
    .param p10, "launchTaskBehind"    # Z
    .param p11, "alwaysFocusable"    # Z
    .param p12, "targetSdkVersion"    # I
    .param p13, "rotationAnimationHint"    # I
    .param p14, "inputDispatchingTimeoutNanos"    # J
    .param p16, "service"    # Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p4

    .line 217
    move-object/from16 v12, p16

    move-object/from16 v11, p3

    invoke-direct {v15, v11, v12}, Lcom/android/server/wm/WindowContainerController;-><init>(Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/WindowManagerService;)V

    .line 105
    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$BD6wMjkwgPM5dckzkeLRiPrmx9Y;

    invoke-direct {v0, v15}, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$BD6wMjkwgPM5dckzkeLRiPrmx9Y;-><init>(Lcom/android/server/wm/AppWindowContainerController;)V

    iput-object v0, v15, Lcom/android/server/wm/AppWindowContainerController;->mOnWindowsVisible:Ljava/lang/Runnable;

    .line 114
    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$mZqlV7Ety8-HHzaQXVEl4hu-8mc;

    invoke-direct {v0, v15}, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$mZqlV7Ety8-HHzaQXVEl4hu-8mc;-><init>(Lcom/android/server/wm/AppWindowContainerController;)V

    iput-object v0, v15, Lcom/android/server/wm/AppWindowContainerController;->mOnWindowsGone:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcom/android/server/wm/AppWindowContainerController$1;

    invoke-direct {v0, v15}, Lcom/android/server/wm/AppWindowContainerController$1;-><init>(Lcom/android/server/wm/AppWindowContainerController;)V

    iput-object v0, v15, Lcom/android/server/wm/AppWindowContainerController;->mAddStartingWindow:Ljava/lang/Runnable;

    .line 218
    new-instance v0, Lcom/android/server/wm/AppWindowContainerController$H;

    iget-object v1, v12, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/server/wm/AppWindowContainerController$H;-><init>(Lcom/android/server/wm/AppWindowContainerController;Landroid/os/Looper;)V

    iput-object v0, v15, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    .line 219
    move-object/from16 v10, p2

    iput-object v10, v15, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    .line 220
    iget-object v9, v15, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v9

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 221
    iget-object v0, v15, Lcom/android/server/wm/AppWindowContainerController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v15, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-interface {v1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 222
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_64

    .line 224
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_36 .. :try_end_60} :catchall_f8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 228
    :cond_64
    :try_start_64
    iget-object v1, v14, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    move-object v8, v1

    .line 229
    .local v8, "task":Lcom/android/server/wm/Task;
    if-eqz v8, :cond_da

    .line 234
    iget-object v2, v15, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5
    :try_end_71
    .catchall {:try_start_64 .. :try_end_71} :catchall_f8

    move-object v1, v15

    move-object v3, v10

    move/from16 v4, p9

    move-wide/from16 v6, p14

    move-object/from16 v17, v0

    move-object v0, v8

    move/from16 v8, p6

    .end local v8    # "task":Lcom/android/server/wm/Task;
    .local v0, "task":Lcom/android/server/wm/Task;
    .local v17, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v18, v9

    move/from16 v9, p7

    move/from16 v10, p12

    move/from16 v11, p5

    move/from16 v12, p13

    move/from16 v13, p8

    move/from16 v14, p10

    move/from16 v15, p11

    move-object/from16 v16, p0

    :try_start_8e
    invoke-virtual/range {v1 .. v16}, Lcom/android/server/wm/AppWindowContainerController;->createAppWindow(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIIZZLcom/android/server/wm/AppWindowContainerController;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 238
    .end local v17    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TOKEN_MOVEMENT:Z

    if-nez v2, :cond_a0

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v2, :cond_9b

    goto :goto_a0

    .line 240
    :cond_9b
    move-object/from16 v4, p1

    move/from16 v5, p4

    goto :goto_ca

    .line 238
    :cond_a0
    :goto_a0
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " controller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b4
    .catchall {:try_start_8e .. :try_end_b4} :catchall_d4

    move-object/from16 v4, p1

    :try_start_b6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_be
    .catchall {:try_start_b6 .. :try_end_be} :catchall_d2

    move/from16 v5, p4

    :try_start_c0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_ca
    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/AppWindowToken;I)V

    .line 241
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    monitor-exit v18
    :try_end_ce
    .catchall {:try_start_c0 .. :try_end_ce} :catchall_102

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 242
    return-void

    .line 241
    :catchall_d2
    move-exception v0

    goto :goto_d7

    :catchall_d4
    move-exception v0

    move-object/from16 v4, p1

    :goto_d7
    move/from16 v5, p4

    goto :goto_fd

    .line 230
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v8    # "task":Lcom/android/server/wm/Task;
    :cond_da
    move-object/from16 v17, v0

    move-object v0, v8

    move-object/from16 v18, v9

    move v5, v13

    move-object v4, v14

    .end local v8    # "task":Lcom/android/server/wm/Task;
    .local v0, "task":Lcom/android/server/wm/Task;
    .restart local v17    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :try_start_e1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppWindowContainerController: invalid  controller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v17    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_f8
    move-exception v0

    move-object/from16 v18, v9

    move v5, v13

    move-object v4, v14

    :goto_fd
    monitor-exit v18
    :try_end_fe
    .catchall {:try_start_e1 .. :try_end_fe} :catchall_102

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_102
    move-exception v0

    goto :goto_fd
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppWindowContainerController;)Landroid/view/IApplicationToken;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AppWindowContainerController;

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    return-object v0
.end method

.method private createSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .registers 5
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 623
    if-nez p1, :cond_4

    .line 624
    const/4 v0, 0x0

    return v0

    .line 627
    :cond_4
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_f

    const-string v0, "WindowManager"

    const-string v1, "Creating SnapshotStartingData"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    new-instance v1, Lcom/android/server/wm/SnapshotStartingData;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/SnapshotStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/app/ActivityManager$TaskSnapshot;)V

    iput-object v1, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 629
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowContainerController;->scheduleAddStartingWindow()V

    .line 630
    const/4 v0, 0x1

    return v0
.end method

.method private getStartingWindowType(ZZZZZZLandroid/app/ActivityManager$TaskSnapshot;)I
    .registers 12
    .param p1, "newTask"    # Z
    .param p2, "taskSwitch"    # Z
    .param p3, "processRunning"    # Z
    .param p4, "allowTaskSnapshot"    # Z
    .param p5, "activityCreated"    # Z
    .param p6, "fromRecents"    # Z
    .param p7, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 564
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_e

    .line 568
    return v1

    .line 569
    :cond_e
    const/4 v0, 0x2

    if-nez p1, :cond_37

    if-eqz p3, :cond_37

    if-eqz p2, :cond_18

    if-nez p5, :cond_18

    goto :goto_37

    .line 571
    :cond_18
    if-eqz p2, :cond_36

    if-eqz p4, :cond_36

    .line 574
    if-eqz p7, :cond_26

    invoke-virtual {p7}, Landroid/app/ActivityManager$TaskSnapshot;->getThemeChanged()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_26

    .line 575
    return v1

    .line 578
    :cond_26
    if-nez p7, :cond_29

    goto :goto_35

    .line 586
    :cond_29
    invoke-direct {p0, p7}, Lcom/android/server/wm/AppWindowContainerController;->snapshotSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 587
    const/4 v1, 0x1

    goto :goto_35

    .line 588
    :cond_31
    if-eqz p6, :cond_34

    goto :goto_35

    .line 578
    :cond_34
    move v1, v0

    :goto_35
    return v1

    .line 591
    :cond_36
    return v1

    .line 570
    :cond_37
    :goto_37
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/AppWindowContainerController;)V
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-nez v0, :cond_5

    .line 107
    return-void

    .line 109
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_21

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting visible in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerListener;->onWindowsVisible()V

    .line 112
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/wm/AppWindowContainerController;)V
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-nez v0, :cond_5

    .line 116
    return-void

    .line 118
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_21

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting gone in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerListener;->onWindowsGone()V

    .line 121
    return-void
.end method

.method static synthetic lambda$removeStartingWindow$2(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V
    .registers 4
    .param p0, "surface"    # Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 689
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_1a

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing startingView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_1a
    :try_start_1a
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 694
    goto :goto_26

    .line 692
    :catch_1e
    move-exception v0

    .line 693
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "Exception when removing starting window"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 695
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_26
    return-void
.end method

.method private snapshotOrientationSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .registers 5
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 634
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 635
    return v0

    .line 637
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v2

    if-ne v1, v2, :cond_1a

    const/4 v0, 0x1

    nop

    :cond_1a
    return v0
.end method

.method private snapshotSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .registers 5
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 598
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 599
    return v0

    .line 602
    :cond_4
    sget-boolean v1, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v1, :cond_9

    .line 603
    return v0

    .line 606
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWindowContainerController;->snapshotOrientationSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 607
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->mOpExtraConfiguration:Landroid/content/res/OpExtraConfiguration;

    iget v1, v1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    .line 608
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getThemeChanged()I

    move-result v2

    if-ne v1, v2, :cond_27

    const/4 v0, 0x1

    nop

    .line 606
    :cond_27
    return v0
.end method


# virtual methods
.method public addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZZ)Z
    .registers 40
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "theme"    # I
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p5, "labelRes"    # I
    .param p6, "icon"    # I
    .param p7, "logo"    # I
    .param p8, "windowFlags"    # I
    .param p9, "transferFrom"    # Landroid/os/IBinder;
    .param p10, "newTask"    # Z
    .param p11, "taskSwitch"    # Z
    .param p12, "processRunning"    # Z
    .param p13, "allowTaskSnapshot"    # Z
    .param p14, "activityCreated"    # Z
    .param p15, "fromRecents"    # Z

    move-object/from16 v9, p0

    move-object/from16 v15, p1

    move/from16 v14, p2

    move-object/from16 v13, p9

    .line 460
    iget-object v12, v9, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v12

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 461
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_225

    if-eqz v0, :cond_78

    :try_start_12
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAppStartingWindow: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " transferFrom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " newTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_6a

    move/from16 v11, p10

    :try_start_3b
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " taskSwitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_68

    move/from16 v10, p11

    :try_start_45
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " processRunning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_66

    move/from16 v8, p12

    :try_start_4f
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " allowTaskSnapshot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_64

    move/from16 v7, p13

    :try_start_59
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_a2

    goto :goto_80

    .line 557
    :catchall_64
    move-exception v0

    goto :goto_71

    :catchall_66
    move-exception v0

    goto :goto_6f

    :catchall_68
    move-exception v0

    goto :goto_6d

    :catchall_6a
    move-exception v0

    move/from16 v11, p10

    .line 557
    .end local p8    # "windowFlags":I
    .local v3, "windowFlags":I
    :goto_6d
    move/from16 v10, p11

    :goto_6f
    move/from16 v8, p12

    :goto_71
    move/from16 v7, p13

    :goto_73
    move/from16 v3, p8

    :goto_75
    move-object v4, v12

    goto/16 :goto_229

    .line 466
    .end local v3    # "windowFlags":I
    .restart local p8    # "windowFlags":I
    :cond_78
    move/from16 v11, p10

    move/from16 v10, p11

    move/from16 v8, p12

    move/from16 v7, p13

    :goto_80
    :try_start_80
    iget-object v0, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;
    :try_end_82
    .catchall {:try_start_80 .. :try_end_82} :catchall_225

    const/4 v6, 0x0

    if-nez v0, :cond_a4

    .line 467
    :try_start_85
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    monitor-exit v12
    :try_end_9e
    .catchall {:try_start_85 .. :try_end_9e} :catchall_a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 557
    :catchall_a2
    move-exception v0

    goto :goto_73

    .line 473
    :cond_a4
    :try_start_a4
    iget-object v0, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->okToDisplay()Z

    move-result v0
    :try_end_ac
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_225

    if-nez v0, :cond_b3

    .line 474
    :try_start_ae
    monitor-exit v12
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 477
    :cond_b3
    :try_start_b3
    iget-object v0, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;
    :try_end_b9
    .catchall {:try_start_b3 .. :try_end_b9} :catchall_225

    if-eqz v0, :cond_c0

    .line 478
    :try_start_bb
    monitor-exit v12
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 481
    :cond_c0
    :try_start_c0
    iget-object v0, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0
    :try_end_c8
    .catchall {:try_start_c0 .. :try_end_c8} :catchall_225

    .line 482
    .local v0, "mainWin":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_d7

    :try_start_ca
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 484
    monitor-exit v12
    :try_end_d3
    .catchall {:try_start_ca .. :try_end_d3} :catchall_a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 487
    :cond_d7
    :try_start_d7
    iget-object v1, v9, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v2, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 488
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mUserId:I

    .line 487
    invoke-virtual {v1, v2, v3, v6, v6}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v1

    move-object v5, v1

    .line 490
    .local v5, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    move-object v1, v9

    move v2, v11

    move v3, v10

    move v4, v8

    move-object/from16 v21, v5

    move v5, v7

    .line 490
    .end local v5    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .local v21, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    move-object/from16 v22, v0

    move v0, v6

    move/from16 v6, p14

    .line 490
    .end local v0    # "mainWin":Lcom/android/server/wm/WindowState;
    .local v22, "mainWin":Lcom/android/server/wm/WindowState;
    move/from16 v7, p15

    move-object/from16 v8, v21

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/AppWindowContainerController;->getStartingWindowType(ZZZZZZLandroid/app/ActivityManager$TaskSnapshot;)I

    move-result v1
    :try_end_108
    .catchall {:try_start_d7 .. :try_end_108} :catchall_225

    .line 493
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_116

    .line 494
    move-object/from16 v3, v21

    :try_start_10d
    invoke-direct {v9, v3}, Lcom/android/server/wm/AppWindowContainerController;->createSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result v0

    .line 494
    .end local v21    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .local v3, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    monitor-exit v12
    :try_end_112
    .catchall {:try_start_10d .. :try_end_112} :catchall_a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 500
    .end local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .restart local v21    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_116
    move-object/from16 v3, v21

    .line 500
    .end local v21    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .restart local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :try_start_118
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z
    :try_end_11a
    .catchall {:try_start_118 .. :try_end_11a} :catchall_225

    if-eqz v4, :cond_136

    :try_start_11c
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking theme of starting window: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 500
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_136
    if-eqz v14, :cond_1cb

    .line 503
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    iget-object v6, v9, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v4, v15, v14, v5, v6}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v4

    .line 505
    .local v4, "ent":Lcom/android/server/AttributeCache$Entry;
    if-nez v4, :cond_14d

    .line 508
    monitor-exit v12
    :try_end_149
    .catchall {:try_start_11c .. :try_end_149} :catchall_a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 510
    :cond_14d
    :try_start_14d
    iget-object v5, v4, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 512
    .local v5, "windowIsTranslucent":Z
    iget-object v6, v4, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 514
    .local v6, "windowIsFloating":Z
    iget-object v7, v4, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v8, 0xe

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 516
    .local v7, "windowShowWallpaper":Z
    iget-object v8, v4, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v2, 0xc

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 518
    .local v2, "windowDisableStarting":Z
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v8, :cond_198

    const-string v8, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v3

    const-string v3, "Translucent="

    .line 518
    .end local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .local v23, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " Floating="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ShowWallpaper="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19a

    .line 521
    .end local v23    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .restart local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_198
    move-object/from16 v23, v3

    .line 521
    .end local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .restart local v23    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :goto_19a
    if-eqz v5, :cond_1a2

    .line 522
    monitor-exit v12
    :try_end_19d
    .catchall {:try_start_14d .. :try_end_19d} :catchall_a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    .line 524
    :cond_1a2
    if-nez v6, :cond_1c5

    if-eqz v2, :cond_1a7

    goto :goto_1c5

    .line 527
    :cond_1a7
    if-eqz v7, :cond_1cd

    .line 528
    :try_start_1a9
    iget-object v0, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_1bf

    .line 535
    const/high16 v0, 0x100000

    or-int v0, p8, v0

    .line 542
    .end local p8    # "windowFlags":I
    .local v0, "windowFlags":I
    move v3, v0

    goto :goto_1cf

    .line 537
    .end local v0    # "windowFlags":I
    .restart local p8    # "windowFlags":I
    :cond_1bf
    monitor-exit v12
    :try_end_1c0
    .catchall {:try_start_1a9 .. :try_end_1c0} :catchall_a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    .line 525
    :cond_1c5
    :goto_1c5
    :try_start_1c5
    monitor-exit v12
    :try_end_1c6
    .catchall {:try_start_1c5 .. :try_end_1c6} :catchall_a2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    .line 542
    .end local v2    # "windowDisableStarting":Z
    .end local v4    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v5    # "windowIsTranslucent":Z
    .end local v6    # "windowIsFloating":Z
    .end local v7    # "windowShowWallpaper":Z
    .end local v23    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .restart local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_1cb
    move-object/from16 v23, v3

    .line 542
    .end local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .restart local v23    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_1cd
    move/from16 v3, p8

    .line 542
    .end local p8    # "windowFlags":I
    .local v3, "windowFlags":I
    :goto_1cf
    :try_start_1cf
    iget-object v0, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindow(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_1df

    .line 543
    monitor-exit v12
    :try_end_1da
    .catchall {:try_start_1cf .. :try_end_1da} :catchall_222

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x1

    return v0

    .line 548
    :cond_1df
    const/4 v0, 0x2

    if-eq v1, v0, :cond_1e8

    .line 549
    :try_start_1e2
    monitor-exit v12
    :try_end_1e3
    .catchall {:try_start_1e2 .. :try_end_1e3} :catchall_222

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    .line 552
    :cond_1e8
    :try_start_1e8
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_1f3

    const-string v0, "WindowManager"

    const-string v2, "Creating SplashScreenStartingData"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_1f3
    iget-object v0, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    new-instance v2, Lcom/android/server/wm/SplashScreenStartingData;

    iget-object v4, v9, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v9, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 555
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v20
    :try_end_203
    .catchall {:try_start_1e8 .. :try_end_203} :catchall_222

    move-object v10, v2

    move-object v11, v4

    move-object v4, v12

    move-object v12, v15

    move v13, v14

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, v3

    :try_start_214
    invoke-direct/range {v10 .. v20}, Lcom/android/server/wm/SplashScreenStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;)V

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowContainerController;->scheduleAddStartingWindow()V

    .line 557
    .end local v1    # "type":I
    .end local v22    # "mainWin":Lcom/android/server/wm/WindowState;
    .end local v23    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    monitor-exit v4
    :try_end_21d
    .catchall {:try_start_214 .. :try_end_21d} :catchall_22e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 558
    const/4 v0, 0x1

    return v0

    .line 557
    :catchall_222
    move-exception v0

    goto/16 :goto_75

    .line 557
    .end local v3    # "windowFlags":I
    .restart local p8    # "windowFlags":I
    :catchall_225
    move-exception v0

    move-object v4, v12

    move/from16 v3, p8

    .line 557
    .end local p8    # "windowFlags":I
    .restart local v3    # "windowFlags":I
    :goto_229
    :try_start_229
    monitor-exit v4
    :try_end_22a
    .catchall {:try_start_229 .. :try_end_22a} :catchall_22e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_22e
    move-exception v0

    goto :goto_229
.end method

.method createAppWindow(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIIZZLcom/android/server/wm/AppWindowContainerController;)Lcom/android/server/wm/AppWindowToken;
    .registers 33
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/view/IApplicationToken;
    .param p3, "voiceInteraction"    # Z
    .param p4, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p5, "inputDispatchingTimeoutNanos"    # J
    .param p7, "fullscreen"    # Z
    .param p8, "showForAllUsers"    # Z
    .param p9, "targetSdk"    # I
    .param p10, "orientation"    # I
    .param p11, "rotationAnimationHint"    # I
    .param p12, "configChanges"    # I
    .param p13, "launchTaskBehind"    # Z
    .param p14, "alwaysFocusable"    # Z
    .param p15, "controller"    # Lcom/android/server/wm/AppWindowContainerController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 250
    new-instance v16, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIIZZLcom/android/server/wm/AppWindowContainerController;)V

    return-object v16
.end method

.method public getOrientation()I
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 312
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_10

    .line 313
    const/4 v1, -0x1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 316
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getOrientationIgnoreVisibility()I

    move-result v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 317
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method keyDispatchingTimedOut(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "windowPid"    # I

    .line 804
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/AppWindowContainerListener;->keyDispatchingTimedOut(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public notifyAppResumed(Z)V
    .registers 6
    .param p1, "wasStopped"    # Z

    .line 716
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 717
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_27

    .line 718
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to notify resumed of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 721
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->notifyAppResumed(Z)V

    .line 722
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 723
    return-void

    .line 722
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppStopped()V
    .registers 5

    .line 737
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 738
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_27

    .line 739
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to notify stopped of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 743
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->notifyAppStopped()V

    .line 744
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 745
    return-void

    .line 744
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppStopping()V
    .registers 5

    .line 726
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 727
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_27

    .line 728
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to notify stopping on non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 732
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->detachChildren()V

    .line 733
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 734
    return-void

    .line 733
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyUnknownVisibilityLaunched()V
    .registers 4

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 450
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_15

    .line 451
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyLaunched(Lcom/android/server/wm/AppWindowToken;)V

    .line 453
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 454
    return-void

    .line 453
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public bridge synthetic onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 62
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainerController;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public pauseKeyDispatching()V
    .registers 4

    .line 700
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 701
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_15

    .line 702
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 704
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 705
    return-void

    .line 704
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 6
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 776
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 777
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_27

    .line 778
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to register remote animations with non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 782
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 783
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 784
    return-void

    .line 783
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeContainer()V
    .registers 3

    .line 271
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use removeContainer(displayId) instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeContainer(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 257
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 258
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 259
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_34

    .line 260
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAppToken: Attempted to remove binder token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from non-existing displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 264
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->removeAppToken(Landroid/os/IBinder;)V

    .line 265
    invoke-super {p0}, Lcom/android/server/wm/WindowContainerController;->removeContainer()V

    .line 266
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 267
    return-void

    .line 266
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeStartingWindow()V
    .registers 7

    .line 641
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 642
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-nez v1, :cond_3e

    .line 643
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_39

    .line 646
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_33

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing startingData for token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_33
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 650
    :cond_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_111

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 654
    :cond_3e
    :try_start_3e
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_f0

    .line 655
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 656
    .local v1, "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 657
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v3, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 658
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 659
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 660
    if-nez v1, :cond_78

    .line 661
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_73

    .line 662
    const-string v2, "WindowManager"

    const-string/jumbo v3, "startingWindow was set but startingSurface==null, couldn\'t remove"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3e .. :try_end_74} :catchall_111

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 672
    :cond_78
    nop

    .line 675
    :try_start_79
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_be

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Schedule remove starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " startingWindow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " startingView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    .line 678
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 675
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_be
    sget-boolean v2, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v2, :cond_df

    .line 684
    const-string v2, "APP_LAUNCH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " WMS: ADD_STARTING "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_df
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$8qyUV78Is6_I1WVMp6w8VGpeuOE;

    invoke-direct {v3, v1}, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$8qyUV78Is6_I1WVMp6w8VGpeuOE;-><init>(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 696
    .end local v1    # "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_79 .. :try_end_ec} :catchall_111

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 697
    return-void

    .line 668
    :cond_f0
    :try_start_f0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_10c

    .line 669
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to remove starting window but startingWindow was null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_10c
    monitor-exit v0
    :try_end_10d
    .catchall {:try_start_f0 .. :try_end_10d} :catchall_111

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 696
    :catchall_111
    move-exception v1

    :try_start_112
    monitor-exit v0
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public reparent(Lcom/android/server/wm/TaskWindowContainerController;I)V
    .registers 8
    .param p1, "taskController"    # Lcom/android/server/wm/TaskWindowContainerController;
    .param p2, "position"    # I

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 276
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v1, :cond_33

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reparent: moving app token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_33
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_59

    .line 279
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v1, :cond_54

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reparent: could not find app token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_8e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 283
    :cond_59
    :try_start_59
    iget-object v1, p1, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    .line 284
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_76

    .line 288
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wm/AppWindowToken;->reparent(Lcom/android/server/wm/Task;I)V

    .line 289
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 290
    .end local v1    # "task":Lcom/android/server/wm/Task;
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_59 .. :try_end_72} :catchall_8e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 291
    return-void

    .line 285
    .restart local v1    # "task":Lcom/android/server/wm/Task;
    :cond_76
    :try_start_76
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reparent: could not find task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 290
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :catchall_8e
    move-exception v1

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_76 .. :try_end_90} :catchall_8e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method reportStartingWindowDrawn()V
    .registers 4

    .line 787
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 788
    return-void
.end method

.method reportWindowsDrawn()V
    .registers 4

    .line 791
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 792
    return-void
.end method

.method reportWindowsGone()V
    .registers 3

    .line 799
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mOnWindowsGone:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 800
    return-void
.end method

.method reportWindowsVisible()V
    .registers 3

    .line 795
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mOnWindowsVisible:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 796
    return-void
.end method

.method public resumeKeyDispatching()V
    .registers 4

    .line 708
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 709
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_15

    .line 710
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 712
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 713
    return-void

    .line 712
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method scheduleAddStartingWindow()V
    .registers 3

    .line 616
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mAddStartingWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 617
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_17

    const-string v0, "WindowManager"

    const-string v1, "Enqueueing ADD_STARTING"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mAddStartingWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 620
    :cond_20
    return-void
.end method

.method public setDisablePreviewScreenshots(Z)V
    .registers 6
    .param p1, "disable"    # Z

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 322
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_27

    .line 323
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set disable screenshots of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 327
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->setDisablePreviewScreenshots(Z)V

    .line 328
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 329
    return-void

    .line 328
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setOrientation(IILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .registers 10
    .param p1, "requestedOrientation"    # I
    .param p2, "displayId"    # I
    .param p3, "displayConfig"    # Landroid/content/res/Configuration;
    .param p4, "freezeScreenIfNeeded"    # Z

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 296
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    const/4 v2, 0x0

    if-nez v1, :cond_28

    .line 297
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 302
    :cond_28
    :try_start_28
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->setOrientation(I)V

    .line 304
    if-eqz p4, :cond_38

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-interface {v1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    nop

    :cond_38
    move-object v1, v2

    .line 305
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p3, v1, p2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object v2

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 307
    .end local v1    # "binder":Landroid/os/IBinder;
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setVisibility(ZZ)V
    .registers 11
    .param p1, "visible"    # Z
    .param p2, "deferHidingClient"    # Z

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 333
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_27

    .line 334
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_195

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 339
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 348
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    const/4 v2, 0x1

    if-nez p1, :cond_42

    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_42

    .line 350
    if-nez p2, :cond_3d

    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v3, :cond_3d

    .line 353
    iput-boolean p2, v1, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    .line 354
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 356
    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_195

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 359
    :cond_42
    :try_start_42
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v3, :cond_4a

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_9a

    :cond_4a
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAppVisibility("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " hidden="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " hiddenRequested="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " Callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x6

    .line 362
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_9a
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 365
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 366
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 367
    xor-int/lit8 v4, p1, 0x1

    iput-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 368
    iput-boolean p2, v1, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    .line 370
    if-nez p1, :cond_b7

    .line 374
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    goto :goto_112

    .line 376
    :cond_b7
    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-nez v4, :cond_d2

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 377
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 381
    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_d2
    iput-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 386
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    if-nez v4, :cond_de

    iget-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-eqz v4, :cond_e9

    .line 387
    :cond_de
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 390
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 391
    iput-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 399
    :cond_e9
    invoke-virtual {v1, v3}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 401
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->requestUpdateWallpaperIfNeeded()V

    .line 403
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v4, :cond_109

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No longer Stopped: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_109
    iput-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    .line 406
    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindowFromHiddenAboveTokenIfNeeded()V

    .line 411
    :goto_112
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result v4

    if-eqz v4, :cond_183

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-eqz v4, :cond_183

    .line 412
    iput-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 413
    if-eqz p1, :cond_130

    .line 414
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 415
    iput-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    goto :goto_139

    .line 417
    :cond_130
    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 418
    iput-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    .line 420
    :goto_139
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_17e

    .line 423
    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 424
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 425
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_17e

    .line 426
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 427
    .local v4, "focusedToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v4, :cond_17e

    .line 428
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_174

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TRANSIT_TASK_OPEN_BEHIND,  adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to mOpeningApps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_174
    invoke-virtual {v4, v2}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 432
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 436
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "focusedToken":Lcom/android/server/wm/AppWindowToken;
    :cond_17e
    monitor-exit v0
    :try_end_17f
    .catchall {:try_start_42 .. :try_end_17f} :catchall_195

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 439
    :cond_183
    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    :try_start_186
    iget-boolean v7, v1, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    move-object v2, v1

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 440
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 441
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    monitor-exit v0
    :try_end_191
    .catchall {:try_start_186 .. :try_end_191} :catchall_195

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 442
    return-void

    .line 441
    :catchall_195
    move-exception v1

    :try_start_196
    monitor-exit v0
    :try_end_197
    .catchall {:try_start_196 .. :try_end_197} :catchall_195

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWillCloseOrEnterPip(Z)V
    .registers 4
    .param p1, "willCloseOrEnterPip"    # Z

    .line 813
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 814
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_f

    .line 815
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 818
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->setWillCloseOrEnterPip(Z)V

    .line 819
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 820
    return-void

    .line 819
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startFreezingScreen(I)V
    .registers 6
    .param p1, "configChanges"    # I

    .line 748
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 749
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_27

    .line 750
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_60

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 755
    :cond_27
    if-nez p1, :cond_54

    :try_start_29
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->okToDisplay()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 756
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_4f

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping set freeze of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_29 .. :try_end_50} :catchall_60

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 760
    :cond_54
    :try_start_54
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->startFreezingScreen()V

    .line 761
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_60

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 762
    return-void

    .line 761
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public stopFreezingScreen(Z)V
    .registers 6
    .param p1, "force"    # Z

    .line 765
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 766
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_f

    .line 767
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 769
    :cond_f
    :try_start_f
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_4b

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clear freezing of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": hidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 770
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " freezing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isFreezingScreen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 769
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_4b
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 772
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_f .. :try_end_54} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 773
    return-void

    .line 772
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWindowContainerController{ token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
