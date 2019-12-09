.class Lcom/android/server/am/RecentsAnimation;
.super Ljava/lang/Object;
.source "RecentsAnimation.java"

# interfaces
.implements Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
.implements Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;


# static fields
.field private static final DEBUG:Z = false

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
    .locals 1

    .line 54
    const-class v0, Lcom/android/server/am/RecentsAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/UserController;I)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 75
    iput-object p2, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 76
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

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
    .locals 4
    .param p1    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 213
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 219
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {v1}, Lcom/android/server/am/AssistDataRequester;->cancel()V

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityDisplay;->unregisterStackOrderChangedListener(Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;)V

    .line 227
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 231
    :cond_1
    if-eqz p1, :cond_2

    .line 232
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchEndIfNeeded()V

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/RecentsAnimation;->mCallingPid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setRunningRemoteAnimation(IZ)V

    .line 237
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/am/-$$Lambda$RecentsAnimation$Zj0-OCbCxGCeVS-UKZSU82iNyXc;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/-$$Lambda$RecentsAnimation$Zj0-OCbCxGCeVS-UKZSU82iNyXc;-><init>(Lcom/android/server/am/RecentsAnimation;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 311
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 312
    return-void

    .line 311
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private getTargetActivity(Lcom/android/server/am/ActivityStack;Landroid/content/ComponentName;)Lcom/android/server/am/ActivityRecord;
    .locals 3

    .line 362
    if-nez p1, :cond_0

    .line 363
    const/4 p1, 0x0

    return-object p1

    .line 366
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 367
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 368
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    return-object p1

    .line 366
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    return-object p1
.end method

.method private getTopNonAlwaysOnTopStack()Lcom/android/server/am/ActivityStack;
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 348
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 349
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    nop

    .line 347
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 352
    :cond_0
    return-object v1

    .line 354
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$finishAnimation$0(Lcom/android/server/am/RecentsAnimation;I)V
    .locals 8

    .line 238
    const-string v0, "RecentsAnimation#onAnimationFinished_inSurfaceTransaction"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->cleanupRecentsAnimation(I)V

    .line 244
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iget v3, p0, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 246
    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 248
    :cond_0
    nop

    .line 252
    move-object v5, v3

    :goto_0
    if-nez v5, :cond_1

    .line 307
    iget-object p1, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 308
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 253
    return-void

    .line 257
    :cond_1
    :try_start_1
    iput-boolean v4, v5, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 259
    const/4 v6, 0x1

    if-ne p1, v6, :cond_2

    .line 261
    iget-object p1, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    const-string p1, "RecentsAnimation.onAnimationFinished()"

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_1

    .line 270
    :cond_2
    const/4 v7, 0x2

    if-ne p1, v7, :cond_3

    .line 272
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p1

    .line 273
    iget-object v5, p0, Lcom/android/server/am/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v0, v5}, Lcom/android/server/am/ActivityDisplay;->moveStackBehindStack(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;)V

    .line 284
    nop

    .line 290
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v4, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 291
    iget-object p1, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1, v3, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 292
    iget-object p1, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 296
    iget-object p1, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 302
    iget-object p1, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v6}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    iget-object p1, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 308
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 309
    nop

    .line 310
    return-void

    .line 307
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 308
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 287
    return-void

    .line 307
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 303
    :catch_0
    move-exception p1

    .line 304
    :try_start_2
    sget-object v0, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v3, "Failed to clean up recents activity"

    invoke-static {v0, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 308
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public static synthetic lambda$onAnimationFinished$1(Lcom/android/server/am/RecentsAnimation;I)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentsAnimation;->finishAnimation(I)V

    return-void
.end method

.method private notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V
    .locals 2

    .line 337
    :try_start_0
    invoke-interface {p1}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    goto :goto_0

    .line 338
    :catch_0
    move-exception p1

    .line 339
    sget-object v0, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v1, "Failed to cancel recents animation before start"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationFinished(IZ)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 317
    if-eqz p2, :cond_0

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentsAnimation;->finishAnimation(I)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v0, Lcom/android/server/am/-$$Lambda$RecentsAnimation$1UHkVDWv9CBej8qt8TWQICpmP60;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/-$$Lambda$RecentsAnimation$1UHkVDWv9CBej8qt8TWQICpmP60;-><init>(Lcom/android/server/am/RecentsAnimation;I)V

    invoke-virtual {p2, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 322
    :goto_0
    return-void
.end method

.method public onStackOrderChanged()V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "stackOrderChanged"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    .line 330
    return-void
.end method

.method startRecentsActivity(Landroid/content/Intent;Landroid/view/IRecentsAnimationRunner;Landroid/content/ComponentName;ILandroid/app/IAssistDataReceiver;)V
    .locals 28

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    .line 88
    move-object/from16 v1, p5

    const-string v2, "RecentsAnimation#startRecentsActivity"

    const-wide/16 v12, 0x40

    invoke-static {v12, v13, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 90
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->canStartRecentsAnimation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    invoke-direct {v10, v11}, Lcom/android/server/am/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    .line 94
    return-void

    .line 98
    :cond_0
    nop

    .line 99
    nop

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v15, p3

    invoke-virtual {v15, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    const/4 v2, 0x3

    goto :goto_0

    .line 101
    :cond_1
    move-object/from16 v15, p3

    :cond_2
    const/4 v2, 0x2

    :goto_0
    iput v2, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    .line 102
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iget v3, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v3}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {v10, v8, v2}, Lcom/android/server/am/RecentsAnimation;->getTargetActivity(Lcom/android/server/am/ActivityStack;Landroid/content/ComponentName;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 105
    const/4 v6, 0x1

    if-eqz v7, :cond_3

    .line 106
    move/from16 v16, v6

    goto :goto_1

    .line 105
    :cond_3
    nop

    .line 106
    move/from16 v16, v9

    :goto_1
    if-eqz v16, :cond_4

    .line 107
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    .line 108
    invoke-virtual {v2, v8}, Lcom/android/server/am/ActivityDisplay;->getStackAbove(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/am/ActivityStack;

    .line 109
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_4

    .line 110
    invoke-direct {v10, v11}, Lcom/android/server/am/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    .line 112
    return-void

    .line 118
    :cond_4
    if-eqz v7, :cond_5

    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_6

    .line 119
    :cond_5
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 123
    :cond_6
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    .line 125
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v10, Lcom/android/server/am/RecentsAnimation;->mCallingPid:I

    invoke-virtual {v2, v3, v6}, Lcom/android/server/am/ActivityManagerService;->setRunningRemoteAnimation(IZ)V

    .line 127
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 130
    if-eqz v1, :cond_7

    .line 131
    :try_start_0
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "appops"

    .line 132
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/app/AppOpsManager;

    .line 133
    new-instance v4, Lcom/android/server/am/AssistDataReceiverProxy;

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Lcom/android/server/am/AssistDataReceiverProxy;-><init>(Landroid/app/IAssistDataReceiver;Ljava/lang/String;)V

    .line 135
    new-instance v3, Lcom/android/server/am/AssistDataRequester;

    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v17, 0x31

    const/16 v18, -0x1

    move-object/from16 v19, v1

    move-object v1, v3

    move-object v12, v3

    move-object/from16 v3, v19

    move-object v13, v4

    move-object v4, v6

    const/4 v14, 0x1

    move-object v6, v13

    move-object v13, v7

    move-object v7, v10

    move-object v14, v8

    move/from16 v8, v17

    move v11, v9

    move/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/AssistDataRequester;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V

    iput-object v12, v10, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 137
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getTopVisibleActivities()Ljava/util/List;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 137
    move-object/from16 v20, v1

    move/from16 v26, p4

    invoke-virtual/range {v20 .. v27}, Lcom/android/server/am/AssistDataRequester;->requestAssistData(Ljava/util/List;ZZZZILjava/lang/String;)V

    goto :goto_2

    .line 207
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 203
    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 143
    :cond_7
    move-object v13, v7

    move-object v14, v8

    move v11, v9

    :goto_2
    if-eqz v16, :cond_8

    .line 145
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityDisplay;->moveStackBehindBottomMostVisibleStack(Lcom/android/server/am/ActivityStack;)V

    .line 152
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eq v0, v1, :cond_9

    .line 153
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    const-string/jumbo v1, "startRecentsActivity"

    const/4 v2, 0x1

    invoke-virtual {v14, v0, v2, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    goto :goto_3

    .line 158
    :cond_8
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 159
    iget v2, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 160
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    .line 161
    const/high16 v2, 0x10010000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mActivityStartController:Lcom/android/server/am/ActivityStartController;

    const-string/jumbo v3, "startRecentsActivity_noTargetActivity"

    .line 164
    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 165
    move/from16 v2, p4

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 167
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/am/SafeActivityOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mUserController:Lcom/android/server/am/UserController;

    .line 168
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setMayWait(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter;->execute()I

    .line 170
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v11, v11}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 171
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 173
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iget v1, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 183
    move-object v13, v7

    :cond_9
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, v13, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 188
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "startRecentsActivity"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    .line 190
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iget v5, v0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 192
    invoke-virtual {v0}, Lcom/android/server/am/RecentTasks;->getRecentTaskIds()Landroid/util/SparseBooleanArray;

    move-result-object v6

    .line 190
    move v0, v11

    move-object/from16 v3, p2

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;ILandroid/util/SparseBooleanArray;)V

    .line 196
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 198
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v13}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    .line 202
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityDisplay;->registerStackOrderChangedListener(Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 208
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 209
    nop

    .line 210
    return-void

    .line 203
    :goto_4
    nop

    .line 204
    :try_start_1
    sget-object v1, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start recents activity"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :goto_5
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 208
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
