.class Lcom/android/server/am/RecentsAnimation;
.super Ljava/lang/Object;
.source "RecentsAnimation.java"

# interfaces
.implements Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
.implements Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityStartController:Lcom/android/server/am/ActivityStartController;

.field private mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

.field private final mCallingPid:I

.field private final mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

.field private mRestoreTargetBehindStack:Lcom/android/server/am/ActivityStack;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTargetActivityType:I

.field private final mUserController:Lcom/android/server/am/UserController;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-class v0, Lcom/android/server/am/RecentsAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/UserController;I)V
    .registers 8
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "activityStartController"    # Lcom/android/server/am/ActivityStartController;
    .param p4, "wm"    # Lcom/android/server/wm/WindowManagerService;
    .param p5, "userController"    # Lcom/android/server/am/UserController;
    .param p6, "callingPid"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 75
    iput-object p2, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 76
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    .line 77
    iput-object p3, p0, Lcom/android/server/am/RecentsAnimation;->mActivityStartController:Lcom/android/server/am/ActivityStartController;

    .line 78
    iput-object p4, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 79
    iput-object p5, p0, Lcom/android/server/am/RecentsAnimation;->mUserController:Lcom/android/server/am/UserController;

    .line 80
    iput p6, p0, Lcom/android/server/am/RecentsAnimation;->mCallingPid:I

    .line 81
    return-void
.end method

.method private finishAnimation(I)V
    .registers 8
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 221
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 227
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 228
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {v1}, Lcom/android/server/am/AssistDataRequester;->cancel()V

    .line 229
    iput-object v2, p0, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 233
    :cond_12
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityDisplay;->unregisterStackOrderChangedListener(Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;)V

    .line 235
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    if-nez v1, :cond_24

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_87

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 239
    :cond_24
    if-eqz p1, :cond_2b

    .line 240
    :try_start_26
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchEndIfNeeded()V

    .line 243
    :cond_2b
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, p0, Lcom/android/server/am/RecentsAnimation;->mCallingPid:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setRunningRemoteAnimation(IZ)V

    .line 248
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 249
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isGestureButtonForLauncher()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 250
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 251
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_78

    .line 252
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 253
    .local v3, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_78

    .line 254
    invoke-virtual {v1, v3, v2, v3, v2}, Lcom/android/server/am/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 255
    iget-object v2, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 256
    iput-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 257
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_78

    .line 258
    sget-object v2, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GestureButton: finishAnimation supportsEnterPipOnTaskSwitch for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_78
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/am/-$$Lambda$RecentsAnimation$Zj0-OCbCxGCeVS-UKZSU82iNyXc;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/-$$Lambda$RecentsAnimation$Zj0-OCbCxGCeVS-UKZSU82iNyXc;-><init>(Lcom/android/server/am/RecentsAnimation;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 340
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_26 .. :try_end_83} :catchall_87

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 341
    return-void

    .line 340
    :catchall_87
    move-exception v1

    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getTargetActivity(Lcom/android/server/am/ActivityStack;Landroid/content/ComponentName;)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "component"    # Landroid/content/ComponentName;

    .line 391
    if-nez p1, :cond_4

    .line 392
    const/4 v0, 0x0

    return-object v0

    .line 395
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_28

    .line 396
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 397
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 398
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    return-object v2

    .line 395
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 401
    .end local v0    # "i":I
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private getTopNonAlwaysOnTopStack()Lcom/android/server/am/ActivityStack;
    .registers 4

    .line 376
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1f

    .line 377
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 378
    .local v1, "s":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 379
    nop

    .line 376
    .end local v1    # "s":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 381
    .restart local v1    # "s":Lcom/android/server/am/ActivityStack;
    :cond_1e
    return-object v1

    .line 383
    .end local v0    # "i":I
    .end local v1    # "s":Lcom/android/server/am/ActivityStack;
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$finishAnimation$0(Lcom/android/server/am/RecentsAnimation;I)V
    .registers 11
    .param p1, "reorderMode"    # I

    .line 267
    const-string v0, "RecentsAnimation#onAnimationFinished_inSurfaceTransaction"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 271
    :try_start_c
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->cleanupRecentsAnimation(I)V

    .line 273
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iget v3, p0, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 275
    .local v0, "targetStack":Lcom/android/server/am/ActivityStack;
    const/4 v3, 0x0

    if-eqz v0, :cond_22

    .line 276
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_21} :catch_7b
    .catchall {:try_start_c .. :try_end_21} :catchall_79

    goto :goto_23

    .line 277
    :cond_22
    move-object v5, v3

    .line 281
    .local v5, "targetActivity":Lcom/android/server/am/ActivityRecord;
    :goto_23
    if-nez v5, :cond_2e

    .line 336
    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 337
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 282
    return-void

    .line 286
    :cond_2e
    :try_start_2e
    iput-boolean v4, v5, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 288
    const/4 v6, 0x1

    if-ne p1, v6, :cond_40

    .line 290
    iget-object v7, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    const-string v7, "RecentsAnimation.onAnimationFinished()"

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_4d

    .line 299
    :cond_40
    const/4 v7, 0x2

    if-ne p1, v7, :cond_70

    .line 301
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v7

    .line 302
    .local v7, "display":Lcom/android/server/am/ActivityDisplay;
    iget-object v8, p0, Lcom/android/server/am/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v0, v8}, Lcom/android/server/am/ActivityDisplay;->moveStackBehindStack(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;)V

    .line 313
    .end local v7    # "display":Lcom/android/server/am/ActivityDisplay;
    nop

    .line 319
    :goto_4d
    iget-object v7, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v4, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 320
    iget-object v7, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v3, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 321
    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 325
    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 331
    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_66} :catch_7b
    .catchall {:try_start_2e .. :try_end_66} :catchall_79

    .line 336
    .end local v0    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 337
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 338
    nop

    .line 339
    return-void

    .line 336
    .restart local v0    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :cond_70
    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 337
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 316
    return-void

    .line 336
    .end local v0    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_79
    move-exception v0

    goto :goto_84

    .line 332
    :catch_7b
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7c
    sget-object v3, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v4, "Failed to clean up recents activity"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    throw v0
    :try_end_84
    .catchall {:try_start_7c .. :try_end_84} :catchall_79

    .line 336
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_84
    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 337
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static synthetic lambda$onAnimationFinished$1(Lcom/android/server/am/RecentsAnimation;I)V
    .registers 2
    .param p1, "reorderMode"    # I

    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentsAnimation;->finishAnimation(I)V

    return-void
.end method

.method private notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V
    .registers 5
    .param p1, "recentsAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;

    .line 366
    :try_start_0
    invoke-interface {p1}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 369
    goto :goto_c

    .line 367
    :catch_4
    move-exception v0

    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v2, "Failed to cancel recents animation before start"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method


# virtual methods
.method public onAnimationFinished(IZ)V
    .registers 5
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
    .param p2, "runSychronously"    # Z

    .line 346
    if-eqz p2, :cond_6

    .line 347
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentsAnimation;->finishAnimation(I)V

    goto :goto_12

    .line 349
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/-$$Lambda$RecentsAnimation$1UHkVDWv9CBej8qt8TWQICpmP60;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$RecentsAnimation$1UHkVDWv9CBej8qt8TWQICpmP60;-><init>(Lcom/android/server/am/RecentsAnimation;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 351
    :goto_12
    return-void
.end method

.method public onStackOrderChanged()V
    .registers 4

    .line 357
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "stackOrderChanged"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    .line 359
    return-void
.end method

.method startRecentsActivity(Landroid/content/Intent;Landroid/view/IRecentsAnimationRunner;Landroid/content/ComponentName;ILandroid/app/IAssistDataReceiver;)V
    .registers 34
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "recentsAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;
    .param p3, "recentsComponent"    # Landroid/content/ComponentName;
    .param p4, "recentsUid"    # I
    .param p5, "assistDataReceiver"    # Landroid/app/IAssistDataReceiver;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 88
    move-object/from16 v13, p5

    const-string v0, "RecentsAnimation#startRecentsActivity"

    const-wide/16 v14, 0x40

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 90
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->canStartRecentsAnimation()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 91
    invoke-direct {v10, v12}, Lcom/android/server/am/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    .line 94
    return-void

    .line 98
    :cond_1b
    nop

    .line 99
    nop

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 100
    const/4 v0, 0x3

    goto :goto_34

    .line 101
    :cond_31
    move-object/from16 v8, p3

    :cond_33
    const/4 v0, 0x2

    :goto_34
    iput v0, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    .line 102
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iget v1, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 104
    .local v4, "targetStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {v10, v4, v0}, Lcom/android/server/am/RecentsAnimation;->getTargetActivity(Lcom/android/server/am/ActivityStack;Landroid/content/ComponentName;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 107
    .local v3, "targetActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_91

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_91

    if-eqz v3, :cond_91

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_91

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 109
    sget-object v0, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecentsActivity, skip start target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 113
    :cond_91
    const/4 v0, 0x1

    if-eqz v3, :cond_96

    move v1, v0

    goto :goto_97

    :cond_96
    move v1, v7

    :goto_97
    move/from16 v16, v1

    .line 114
    .local v16, "hasExistingActivity":Z
    if-eqz v16, :cond_ad

    .line 115
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    .line 116
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityDisplay;->getStackAbove(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/am/ActivityStack;

    .line 117
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_ad

    .line 118
    invoke-direct {v10, v12}, Lcom/android/server/am/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    .line 120
    return-void

    .line 126
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    :cond_ad
    if-eqz v3, :cond_b3

    iget-boolean v1, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v1, :cond_b8

    .line 127
    :cond_b3
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 131
    :cond_b8
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    .line 133
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v10, Lcom/android/server/am/RecentsAnimation;->mCallingPid:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService;->setRunningRemoteAnimation(IZ)V

    .line 135
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 138
    if-eqz v13, :cond_133

    .line 139
    :try_start_cf
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    .line 140
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/app/AppOpsManager;

    .line 141
    .local v5, "appOpsManager":Landroid/app/AppOpsManager;
    new-instance v6, Lcom/android/server/am/AssistDataReceiverProxy;

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v13, v1}, Lcom/android/server/am/AssistDataReceiverProxy;-><init>(Landroid/app/IAssistDataReceiver;Ljava/lang/String;)V

    .line 143
    .local v6, "proxy":Lcom/android/server/am/AssistDataReceiverProxy;
    new-instance v2, Lcom/android/server/am/AssistDataRequester;

    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v10, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_ef} :catch_12c
    .catchall {:try_start_cf .. :try_end_ef} :catchall_125

    const/16 v17, 0x31

    const/16 v18, -0x1

    move-object/from16 v19, v1

    move-object v1, v2

    move-object v14, v2

    move-object/from16 v2, v19

    move-object v15, v3

    move-object v3, v7

    .end local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .local v15, "targetActivity":Lcom/android/server/am/ActivityRecord;
    move-object v7, v4

    move-object v4, v9

    .line 143
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .local v7, "targetStack":Lcom/android/server/am/ActivityStack;
    move-object v9, v7

    move-object v7, v10

    .line 143
    .end local v7    # "targetStack":Lcom/android/server/am/ActivityStack;
    .local v9, "targetStack":Lcom/android/server/am/ActivityStack;
    move/from16 v8, v17

    move-object v13, v9

    move/from16 v9, v18

    .line 143
    .end local v9    # "targetStack":Lcom/android/server/am/ActivityStack;
    .local v13, "targetStack":Lcom/android/server/am/ActivityStack;
    :try_start_104
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/AssistDataRequester;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V

    iput-object v14, v10, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 145
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getTopVisibleActivities()Ljava/util/List;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 145
    move-object/from16 v20, v1

    move/from16 v26, p4

    invoke-virtual/range {v20 .. v27}, Lcom/android/server/am/AssistDataRequester;->requestAssistData(Ljava/util/List;ZZZZILjava/lang/String;)V

    .line 145
    .end local v5    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v6    # "proxy":Lcom/android/server/am/AssistDataReceiverProxy;
    goto :goto_135

    .line 215
    .end local v13    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    :catchall_125
    move-exception v0

    move-object v15, v3

    move-object v13, v4

    move/from16 v7, p4

    .line 215
    .end local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v13    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_208

    .line 211
    .end local v13    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    :catch_12c
    move-exception v0

    move-object v15, v3

    move-object v13, v4

    move/from16 v7, p4

    .line 211
    .end local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v13    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_1fe

    .line 151
    .end local v13    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_133
    move-object v15, v3

    move-object v13, v4

    .line 151
    .end local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v13    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :goto_135
    if-eqz v16, :cond_15f

    .line 153
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, v13}, Lcom/android/server/am/ActivityDisplay;->moveStackBehindBottomMostVisibleStack(Lcom/android/server/am/ActivityStack;)V

    .line 160
    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v15}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eq v1, v2, :cond_150

    .line 161
    invoke-virtual {v15}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    const-string/jumbo v2, "startRecentsActivity"

    invoke-virtual {v13, v1, v0, v2}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    .line 191
    :cond_150
    move/from16 v7, p4

    const/4 v8, 0x0

    goto :goto_1b9

    .line 215
    :catchall_154
    move-exception v0

    move/from16 v7, p4

    goto/16 :goto_208

    .line 211
    :catch_159
    move-exception v0

    move/from16 v7, p4

    .line 211
    .end local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :goto_15c
    move-object v3, v15

    goto/16 :goto_1fe

    .line 166
    .end local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :cond_15f
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 167
    .local v1, "options":Landroid/app/ActivityOptions;
    iget v2, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 168
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    .line 169
    const/high16 v2, 0x10010000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mActivityStartController:Lcom/android/server/am/ActivityStartController;

    const-string/jumbo v3, "startRecentsActivity_noTargetActivity"

    .line 172
    invoke-virtual {v2, v11, v3}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_179} :catch_159
    .catchall {:try_start_104 .. :try_end_179} :catchall_154

    .line 173
    move/from16 v7, p4

    :try_start_17b
    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 175
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/am/SafeActivityOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget-object v3, v10, Lcom/android/server/am/RecentsAnimation;->mUserController:Lcom/android/server/am/UserController;

    .line 176
    invoke-virtual {v3}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setMayWait(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStarter;->execute()I

    .line 178
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 179
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 181
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iget v3, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v2, v8, v3}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    move-object v1, v2

    .line 191
    .end local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .local v1, "targetActivity":Lcom/android/server/am/ActivityRecord;
    move-object v15, v1

    .line 191
    .end local v1    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :goto_1b9
    iput-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 196
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "startRecentsActivity"

    const/4 v9, 0x2

    invoke-virtual {v1, v9, v2}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    .line 198
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    iget-object v3, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iget v5, v3, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v3, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 200
    invoke-virtual {v3}, Lcom/android/server/am/RecentTasks;->getRecentTaskIds()Landroid/util/SparseBooleanArray;

    move-result-object v6

    .line 198
    move-object v3, v12

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;ILandroid/util/SparseBooleanArray;)V

    .line 204
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8, v0}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 206
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, v9, v15}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    .line 210
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityDisplay;->registerStackOrderChangedListener(Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;)V
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_1ed} :catch_1fb
    .catchall {:try_start_17b .. :try_end_1ed} :catchall_1f9

    .line 215
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 216
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 217
    nop

    .line 218
    return-void

    .line 215
    :catchall_1f9
    move-exception v0

    goto :goto_208

    .line 211
    :catch_1fb
    move-exception v0

    goto/16 :goto_15c

    .line 212
    .end local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :goto_1fe
    :try_start_1fe
    sget-object v1, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start recents activity"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    throw v0
    :try_end_206
    .catchall {:try_start_1fe .. :try_end_206} :catchall_206

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_206
    move-exception v0

    move-object v15, v3

    .line 215
    .end local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :goto_208
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 216
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
