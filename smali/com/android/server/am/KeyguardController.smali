.class Lcom/android/server/am/KeyguardController;
.super Ljava/lang/Object;
.source "KeyguardController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAodShowing:Z

.field private mBeforeUnoccludeTransit:I

.field private mDismissalRequested:Z

.field private mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

.field private mKeyguardGoingAway:Z

.field private mKeyguardShowing:Z

.field private mOccluded:Z

.field private mSecondaryDisplayShowing:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mVisibilityTransactionDepth:I

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    .line 77
    iput-object p1, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 78
    iput-object p2, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 79
    return-void
.end method

.method private convertTransitFlags(I)I
    .locals 2

    .line 210
    nop

    .line 211
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 212
    nop

    .line 214
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 215
    or-int/lit8 v0, v0, 0x2

    .line 217
    :cond_1
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    .line 218
    or-int/lit8 v0, v0, 0x4

    .line 220
    :cond_2
    return v0
.end method

.method private dismissDockedStackIfNeeded()V
    .locals 3

    .line 374
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 380
    if-nez v0, :cond_0

    .line 381
    return-void

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v2, v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 386
    :cond_2
    return-void
.end method

.method private failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .locals 2

    .line 203
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception p1

    .line 205
    const-string v0, "ActivityManager"

    const-string v1, "Failed to call callback"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :goto_0
    return-void
.end method

.method private handleDismissKeyguard()V
    .locals 5

    .line 331
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 332
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    .line 338
    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/KeyguardController;->canDismissKeyguard()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 339
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getPendingAppTransition()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    .line 340
    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v3, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    .line 342
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 343
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 346
    :cond_0
    return-void
.end method

.method private handleOccludedChanged()V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->onKeyguardOccludedChanged(Z)V

    .line 309
    invoke-virtual {p0}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->resolveOccludeTransit()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    .line 314
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->updateKeyguardSleepToken()V

    .line 315
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 316
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 319
    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    .line 321
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->dismissDockedStackIfNeeded()V

    .line 322
    return-void
.end method

.method private resolveOccludeTransit()I
    .locals 3

    .line 356
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    const/16 v1, 0x17

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 357
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getPendingAppTransition()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-eqz v0, :cond_0

    .line 362
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    return v0

    .line 363
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getPendingAppTransition()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    .line 367
    return v1

    .line 369
    :cond_1
    const/16 v0, 0x16

    return v0
.end method

.method private setKeyguardGoingAway(Z)V
    .locals 1

    .line 197
    iput-boolean p1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    .line 198
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setKeyguardGoingAway(Z)V

    .line 199
    return-void
.end method

.method private updateKeyguardSleepToken()V
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "Keyguard"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 395
    :cond_1
    :goto_0
    return-void
.end method

.method private visibilitiesUpdated()V
    .locals 10

    .line 262
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    .line 263
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    .line 264
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    .line 265
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    .line 267
    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_5

    .line 268
    iget-object v5, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v5

    .line 269
    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_1
    if-ltz v6, :cond_4

    .line 270
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 274
    iget v8, v5, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 275
    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 279
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 280
    nop

    .line 281
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topActivityOccludesKeyguard()Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v8, :cond_0

    .line 283
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-ne v9, v8, :cond_0

    .line 284
    invoke-virtual {p0, v4, v2}, Lcom/android/server/am/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    move v8, v2

    goto :goto_3

    :cond_1
    :goto_2
    move v8, v4

    :goto_3
    iput-boolean v8, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    .line 289
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v8, :cond_3

    .line 290
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 291
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    .line 269
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 267
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 295
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isShowingDream()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    .line 296
    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-eq v2, v0, :cond_6

    .line 297
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->handleOccludedChanged()V

    .line 299
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v0, v1, :cond_7

    .line 300
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->handleDismissKeyguard()V

    .line 302
    :cond_7
    return-void
.end method


# virtual methods
.method beginActivityVisibilityUpdate()V
    .locals 1

    .line 227
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    .line 228
    return-void
.end method

.method canDismissKeyguard()Z
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardTrusted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method canShowActivityWhileKeyguardShowing(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 0

    .line 250
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/KeyguardController;->canDismissKeyguard()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method canShowWhileOccluded(ZZ)Z
    .locals 0

    .line 258
    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 3

    .line 180
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 181
    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity requesting to dismiss Keyguard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isTopRunningActivity()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v0, "dismissKeyguard"

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 193
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 194
    return-void

    .line 182
    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/am/KeyguardController;->failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 183
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyguardController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mKeyguardShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mAodShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mKeyguardGoingAway="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mOccluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDismissingKeyguardActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDismissalRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  mVisibilityTransactionDepth="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method endActivityVisibilityUpdate()V
    .locals 1

    .line 235
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    .line 236
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    if-nez v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->visibilitiesUpdated()V

    .line 239
    :cond_0
    return-void
.end method

.method isKeyguardGoingAway()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isKeyguardLocked()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isKeyguardOrAodShowing(I)Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    if-ne p1, v0, :cond_2

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method isKeyguardShowing(I)Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    if-ne p1, v0, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method keyguardGoingAway(I)V
    .locals 6

    .line 153
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    .line 154
    return-void

    .line 156
    :cond_0
    const-string v0, "keyguardGoingAway"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 159
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/KeyguardController;->setKeyguardGoingAway(Z)V

    .line 160
    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x14

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/am/KeyguardController;->convertTransitFlags(I)I

    move-result p1

    .line 160
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p1, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    .line 163
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->updateKeyguardSleepToken()V

    .line 166
    iget-object p1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 167
    iget-object p1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 168
    iget-object p1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->addStartingWindowsForVisibleActivities(Z)V

    .line 169
    iget-object p1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    const-string p1, "keyguardGoingAway: surfaceLayout"

    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 173
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 175
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 176
    nop

    .line 177
    return-void

    .line 171
    :catchall_0
    move-exception p1

    const-string v0, "keyguardGoingAway: surfaceLayout"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 173
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 175
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method setKeyguardShown(ZZI)V
    .locals 4

    .line 123
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    move v0, v2

    goto :goto_1

    .line 123
    :cond_1
    :goto_0
    nop

    .line 125
    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    or-int/2addr v0, v1

    .line 126
    if-nez v0, :cond_3

    iget v1, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    if-ne p3, v1, :cond_3

    .line 127
    return-void

    .line 129
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    .line 130
    iput-boolean p2, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    .line 131
    iput p3, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    .line 132
    iget-object p3, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p3, p2}, Lcom/android/server/wm/WindowManagerService;->setAodShowing(Z)V

    .line 133
    if-eqz v0, :cond_4

    .line 134
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->dismissDockedStackIfNeeded()V

    .line 135
    invoke-direct {p0, v2}, Lcom/android/server/am/KeyguardController;->setKeyguardGoingAway(Z)V

    .line 136
    iget-object p2, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 137
    invoke-virtual {p0, v2}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result p3

    .line 136
    invoke-virtual {p2, p3}, Lcom/android/server/wm/WindowManagerService;->setKeyguardOrAodShowingOnDefaultDisplay(Z)V

    .line 138
    if-eqz p1, :cond_4

    .line 139
    iput-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    .line 142
    :cond_4
    iget-object p1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 143
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->updateKeyguardSleepToken()V

    .line 144
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 83
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 409
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 410
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    const-wide v1, 0x10800000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 411
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    const-wide v1, 0x10800000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 412
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 413
    return-void
.end method
