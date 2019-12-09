.class Lcom/android/server/am/ActivityStack;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityStack.java"

# interfaces
.implements Lcom/android/server/wm/StackWindowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/wm/StackWindowController;",
        ">",
        "Lcom/android/server/wm/ConfigurationContainer;",
        "Lcom/android/server/wm/StackWindowListener;"
    }
.end annotation


# static fields
.field static final DESTROY_ACTIVITIES_MSG:I = 0x69

.field private static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x66

.field static final FINISH_AFTER_PAUSE:I = 0x1

.field static final FINISH_AFTER_VISIBLE:I = 0x2

.field static final FINISH_IMMEDIATELY:I = 0x0

.field private static final FIT_WITHIN_BOUNDS_DIVIDER:I = 0x3

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x67

.field private static final MAX_STOPPING_TO_FORCE:I = 0x3

.field private static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field protected static final REMOVE_TASK_MODE_DESTROYING:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final REMOVE_TASK_MODE_MOVING:I = 0x1

.field static final REMOVE_TASK_MODE_MOVING_TO_TOP:I = 0x2

.field private static final SHOW_APP_STARTING_PREVIEW:Z = true

.field private static final STOP_TIMEOUT:I = 0x2af8

.field static final STOP_TIMEOUT_MSG:I = 0x68

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_APP:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CLEANUP:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONTAINERS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SAVED_STATE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityManager"

.field private static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field static final TRANSLUCENT_TIMEOUT_MSG:I = 0x6a


# instance fields
.field mConfigWillChange:Z

.field mCurrentUser:I

.field private final mDeferredBounds:Landroid/graphics/Rect;

.field private final mDeferredTaskBounds:Landroid/graphics/Rect;

.field private final mDeferredTaskInsetBounds:Landroid/graphics/Rect;

.field mDisplayId:I

.field mForceHidden:Z

.field final mHandler:Landroid/os/Handler;

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field public mPerf:Landroid/util/BoostFramework;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackId:I

.field protected final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private final mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpBounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpInsetBounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpOptions:Landroid/app/ActivityOptions;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private mTopActivityOccludesKeyguard:Z

.field private mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

.field mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

.field mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateBoundsDeferred:Z

.field private mUpdateBoundsDeferredCalled:Z

.field mWindowContainerController:Lcom/android/server/wm/StackWindowController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;IIZ)V
    .locals 2

    .line 458
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 299
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 306
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 313
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 318
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 326
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 338
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mForceHidden:Z

    .line 342
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    .line 343
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    .line 344
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    .line 352
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    .line 353
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    .line 354
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 355
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    .line 459
    iput-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 460
    iget-object p3, p3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 461
    new-instance p3, Lcom/android/server/am/ActivityStack$ActivityStackHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p3, p0, v1}, Lcom/android/server/am/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 462
    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 463
    iput p2, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 464
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p2}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result p2

    iput p2, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 465
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 468
    iget p2, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iput p2, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 469
    invoke-virtual {p0, p5}, Lcom/android/server/am/ActivityStack;->setActivityType(I)V

    .line 470
    invoke-virtual {p0, p4}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 471
    iget p2, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p6, p3}, Lcom/android/server/am/ActivityStack;->createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/StackWindowController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    .line 473
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    :goto_0
    invoke-direct {p0, p1, v0, p6}, Lcom/android/server/am/ActivityStack;->postAddToDisplay(Lcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;Z)V

    .line 474
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    return-void
.end method

.method private adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Z
    .locals 4

    .line 3457
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3458
    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-virtual {v0, p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextFocusableStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    move-result-object p2

    .line 3459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adjustFocusToNextFocusableStack"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3460
    if-nez p2, :cond_0

    .line 3461
    const/4 p1, 0x0

    return p1

    .line 3464
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3466
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_2

    .line 3469
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 3472
    :cond_2
    invoke-virtual {p2, v0}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3473
    return v1
.end method

.method private adjustFocusedActivityStack(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 2

    .line 3411
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3416
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " adjustFocus"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3419
    if-ne v0, p1, :cond_1

    .line 3420
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3421
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3420
    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 3422
    return-void

    .line 3425
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3427
    return-void

    .line 3432
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3434
    if-eqz v0, :cond_4

    .line 3439
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3440
    return-void

    .line 3444
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    .line 3445
    return-void

    .line 3435
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity no longer associated with task:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3413
    :cond_5
    :goto_0
    return-void
.end method

.method private bottomTask()Lcom/android/server/am/TaskRecord;
    .locals 2

    .line 928
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    const/4 v0, 0x0

    return-object v0

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method private canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 1

    .line 3032
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 3034
    return v0

    .line 3036
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->inPinnedWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 3040
    :cond_1
    if-eqz p2, :cond_2

    .line 3041
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 3042
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3044
    return v0

    .line 3046
    :cond_3
    const/4 p1, 0x1

    return p1

    .line 3038
    :cond_4
    :goto_1
    return v0
.end method

.method private canShowWithInsecureKeyguard()Z
    .locals 3

    .line 2076
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 2077
    if-eqz v0, :cond_1

    .line 2082
    iget-object v0, v0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    .line 2083
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2078
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stack is not attached to any display, stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkTranslucentActivityWaiting(Lcom/android/server/am/ActivityRecord;)V
    .locals 1

    .line 2087
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eq v0, p1, :cond_1

    .line 2088
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2089
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz p1, :cond_0

    .line 2091
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2092
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2094
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x6a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2096
    :cond_1
    return-void
.end method

.method private cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 4

    .line 4091
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    .line 4093
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 4094
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 4096
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 4098
    sget-object p3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v2, "cleanupActivityLocked"

    invoke-virtual {p1, p3, v2}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4100
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4104
    :cond_0
    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->cleanupActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 4108
    iget-boolean p3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz p3, :cond_3

    iget-object p3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz p3, :cond_3

    .line 4109
    iget-object p3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 4110
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 4111
    if-eqz v2, :cond_1

    .line 4112
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 4114
    :cond_1
    goto :goto_0

    .line 4115
    :cond_2
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4118
    :cond_3
    if-eqz p2, :cond_4

    .line 4119
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4123
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4126
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchesCleared(Landroid/os/IBinder;)V

    .line 4127
    return-void
.end method

.method private cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4

    .line 4195
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 4196
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4197
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 4199
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 4200
    goto :goto_0

    .line 4201
    :cond_0
    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 4203
    :cond_1
    return-void
.end method

.method private clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 1

    .line 1267
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1269
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1271
    :cond_0
    return-void
.end method

.method private completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V
    .locals 9

    .line 1556
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1559
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 1560
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 1561
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v3

    .line 1562
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v5, "completePausedLocked"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1563
    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 1565
    const/4 v3, 0x2

    const-string v4, "completedPausedLocked"

    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_0

    .line 1567
    :cond_0
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_4

    .line 1570
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1574
    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v4, :cond_1

    .line 1577
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityRecord;->relaunchActivityLocked(ZZ)V

    goto :goto_0

    .line 1579
    :cond_1
    if-eqz v3, :cond_2

    .line 1583
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v4, "completePausedLocked"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    goto :goto_0

    .line 1584
    :cond_2
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1586
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityRecord;->setDeferHidingClient(Z)V

    .line 1589
    invoke-virtual {p0, v0, v5, v2}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto :goto_0

    .line 1593
    :cond_4
    nop

    .line 1598
    move-object v0, v1

    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-eqz v3, :cond_6

    .line 1599
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1601
    :cond_6
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1604
    :cond_7
    if-eqz p1, :cond_a

    .line 1605
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 1606
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1607
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_1

    .line 1609
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    .line 1610
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 1611
    if-eqz p1, :cond_9

    if-eqz v0, :cond_a

    if-eq p1, v0, :cond_a

    .line 1616
    :cond_9
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1621
    :cond_a
    :goto_1
    if-eqz v0, :cond_d

    .line 1622
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1624
    iget-object p1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_c

    iget-wide v5, v0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    cmp-long p1, v5, v3

    if-lez p1, :cond_c

    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 1625
    invoke-virtual {p1}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1626
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long/2addr v5, v7

    .line 1628
    cmp-long p1, v5, v3

    if-lez p1, :cond_c

    .line 1629
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p1}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object p1

    .line 1630
    monitor-enter p1

    .line 1631
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1632
    invoke-virtual {p1, v1, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    .line 1634
    if-eqz v1, :cond_b

    .line 1635
    invoke-virtual {v1, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 1637
    :cond_b
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 1640
    :cond_c
    :goto_2
    iput-wide v3, v0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1646
    :cond_d
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean p1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez p1, :cond_e

    .line 1647
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityDisplay;->hasPinnedStack()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1648
    :cond_e
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1649
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v2, p1, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 1652
    :cond_f
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1, p2, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1653
    return-void
.end method

.method private containsActivityFromStack(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1381
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 1382
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1383
    const/4 p1, 0x1

    return p1

    .line 1385
    :cond_0
    goto :goto_0

    .line 1386
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 8

    .line 4212
    nop

    .line 4213
    nop

    .line 4214
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_6

    .line 4215
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4216
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    :goto_1
    if-ltz v5, :cond_5

    .line 4217
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 4218
    iget-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_0

    .line 4219
    goto :goto_2

    .line 4221
    :cond_0
    iget-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v7, :cond_1

    .line 4222
    nop

    .line 4224
    move v3, v1

    :cond_1
    if-eqz p1, :cond_2

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v7, p1, :cond_2

    .line 4225
    goto :goto_2

    .line 4227
    :cond_2
    if-nez v3, :cond_3

    .line 4228
    goto :goto_2

    .line 4230
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4235
    invoke-virtual {p0, v6, v1, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4236
    nop

    .line 4216
    move v2, v1

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4214
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4241
    :cond_6
    if-eqz v2, :cond_7

    .line 4242
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4244
    :cond_7
    return-void
.end method

.method private finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .locals 8

    .line 3676
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3677
    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 3681
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v0, v1, :cond_0

    .line 3682
    if-eqz p3, :cond_0

    .line 3683
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p3, v0}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 3686
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_1

    .line 3687
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3689
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3687
    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 3691
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3693
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3700
    :cond_2
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3701
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 3702
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3703
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 3704
    return-void
.end method

.method private static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 4849
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4853
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_5

    .line 4854
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 4855
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    .line 4856
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 4857
    if-gez v1, :cond_2

    iget v2, p0, Landroid/graphics/Rect;->left:I

    if-ge v2, v0, :cond_3

    :cond_2
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    if-lt v2, v0, :cond_4

    .line 4859
    :cond_3
    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v1

    .line 4861
    :cond_4
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 4862
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 4865
    :cond_5
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_6

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_a

    .line 4866
    :cond_6
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 4867
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    .line 4868
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    .line 4869
    if-gez p1, :cond_7

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-ge v1, v0, :cond_8

    :cond_7
    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    if-lt v1, v0, :cond_9

    .line 4871
    :cond_8
    iget p1, p0, Landroid/graphics/Rect;->top:I

    sub-int p1, v0, p1

    .line 4873
    :cond_9
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 4874
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 4876
    :cond_a
    return-void

    .line 4850
    :cond_b
    :goto_0
    return-void
.end method

.method private getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .locals 5

    .line 2812
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2813
    if-ltz v0, :cond_1

    .line 2814
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2815
    :cond_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_1

    .line 2816
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 2817
    iget v3, v2, Lcom/android/server/am/TaskRecord;->userId:I

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v3, v4, :cond_0

    .line 2818
    return-object v2

    .line 2822
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private insertTaskAtBottom(Lcom/android/server/am/TaskRecord;)V
    .locals 2

    .line 2881
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2882
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 2883
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2884
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 2885
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/StackWindowController;->positionChildAtBottom(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 2887
    return-void
.end method

.method private insertTaskAtPosition(Lcom/android/server/am/TaskRecord;I)V
    .locals 2

    .line 2854
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    .line 2855
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 2856
    return-void

    .line 2857
    :cond_0
    if-gtz p2, :cond_1

    .line 2858
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->insertTaskAtBottom(Lcom/android/server/am/TaskRecord;)V

    .line 2859
    return-void

    .line 2861
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result p2

    .line 2862
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2863
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2864
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackWindowController;->positionChildAt(Lcom/android/server/wm/TaskWindowContainerController;I)V

    .line 2865
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 2866
    return-void
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 1

    .line 2870
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2872
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result p2

    .line 2873
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2874
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 2875
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 2877
    return-void
.end method

.method private isATopFinishingTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 5

    .line 3396
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 3397
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3398
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 3399
    if-eqz v4, :cond_0

    .line 3401
    return v2

    .line 3403
    :cond_0
    if-ne v3, p1, :cond_1

    .line 3404
    return v1

    .line 3396
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3407
    :cond_2
    return v2
.end method

.method private isTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 0

    .line 3051
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 4

    .line 4739
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 4740
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4742
    :goto_0
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 4743
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget p2, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x3

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v2, v1, p2

    const/4 p2, 0x4

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4744
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    const/4 p2, 0x5

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4745
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    const/4 p2, 0x6

    aput-object v0, v1, p2

    const/4 p2, 0x7

    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    .line 4742
    invoke-static {p0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4746
    return-void
.end method

.method private makeInvisible(Lcom/android/server/am/ActivityRecord;)V
    .locals 6

    .line 2125
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_0

    .line 2127
    return-void

    .line 2133
    :cond_0
    :try_start_0
    const-string v0, "makeInvisible"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v0

    .line 2142
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2143
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2144
    move v3, v1

    goto :goto_0

    .line 2143
    :cond_1
    nop

    .line 2144
    move v3, v2

    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityRecord;->setDeferHidingClient(Z)V

    .line 2145
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    .line 2147
    sget-object v3, Lcom/android/server/am/ActivityStack$1;->$SwitchMap$com$android$server$am$ActivityStack$ActivityState:[I

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 2166
    :pswitch_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2168
    goto :goto_1

    .line 2150
    :pswitch_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    .line 2153
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2154
    invoke-static {v2}, Landroid/app/servertransaction/WindowVisibilityItem;->obtain(Z)Landroid/app/servertransaction/WindowVisibilityItem;

    move-result-object v4

    .line 2153
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2159
    :cond_2
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2160
    nop

    .line 2176
    :goto_1
    goto :goto_2

    .line 2173
    :catch_0
    move-exception v0

    .line 2175
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown making hidden: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2177
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private makeVisibleAndRestartIfNeeded(Lcom/android/server/am/ActivityRecord;IZZLcom/android/server/am/ActivityRecord;)Z
    .locals 1

    .line 2104
    const/4 v0, 0x0

    if-nez p3, :cond_0

    iget-boolean p3, p5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez p3, :cond_4

    .line 2108
    :cond_0
    if-eq p5, p1, :cond_1

    .line 2109
    iget-object p3, p5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p5, p3, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 2111
    :cond_1
    iget-boolean p2, p5, Lcom/android/server/am/ActivityRecord;->visible:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    iget-boolean p2, p5, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz p2, :cond_3

    .line 2113
    :cond_2
    invoke-virtual {p5, p3}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    .line 2115
    :cond_3
    if-eq p5, p1, :cond_4

    .line 2116
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1, p5, p4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2117
    return p3

    .line 2120
    :cond_4
    return v0
.end method

.method private postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V
    .locals 0

    .line 5304
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 5305
    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    goto :goto_0

    .line 5306
    :cond_0
    iget-object p2, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p2, :cond_1

    .line 5308
    :try_start_0
    iget-object p2, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object p3, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget p1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {p2, p3, p1}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5310
    goto :goto_0

    .line 5309
    :catch_0
    move-exception p1

    .line 5312
    :cond_1
    :goto_0
    return-void
.end method

.method private postAddToDisplay(Lcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;Z)V
    .locals 7

    .line 704
    iget v0, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 705
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 706
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->onParentChanged()V

    .line 708
    if-eqz p3, :cond_0

    const p2, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 p2, -0x80000000

    :goto_0
    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/ActivityDisplay;->addChild(Lcom/android/server/am/ActivityStack;I)V

    .line 709
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 712
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 713
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 712
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 715
    :cond_1
    return-void
.end method

.method private preAddTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/am/ActivityStack;
    .locals 1

    .line 5289
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 5290
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 5291
    nop

    .line 5292
    if-eqz p3, :cond_0

    const/4 p3, 0x2

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 5291
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    .line 5294
    :cond_1
    return-object v0
.end method

.method private prepareActivityHideTransitionAnimation(Lcom/android/server/am/ActivityRecord;I)V
    .locals 2

    .line 3815
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3816
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 3817
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 3818
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3819
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3821
    :cond_0
    return-void
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 10

    .line 4138
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 4139
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 4143
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 4144
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4147
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v3, "removeActivityFromHistoryLocked"

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4149
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4150
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeWindowContainer()V

    .line 4151
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 4152
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    goto :goto_0

    .line 4155
    :cond_0
    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 4156
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->onlyHasTaskOverlayActivities(Z)Z

    move-result v3

    goto :goto_1

    .line 4158
    :cond_1
    move v3, v1

    :goto_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_4

    .line 4168
    :cond_2
    if-eqz v3, :cond_3

    .line 4176
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    .line 4182
    :cond_3
    if-eqz v2, :cond_4

    .line 4183
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    .line 4186
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4187
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 4188
    return-void
.end method

.method private removeFromDisplay()V
    .locals 1

    .line 722
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 723
    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->removeChild(Lcom/android/server/am/ActivityStack;)V

    .line 726
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 727
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4442
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 4445
    :goto_0
    if-lez p3, :cond_1

    .line 4446
    add-int/lit8 p3, p3, -0x1

    .line 4447
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 4449
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v1, p2, :cond_0

    .line 4451
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4452
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4454
    :cond_0
    goto :goto_0

    .line 4455
    :cond_1
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 13

    .line 4458
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v1, "mLRUActivities"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4459
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v1, "mStoppingActivities"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4461
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v1, "mGoingToSleepActivities"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4463
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    const-string v1, "mActivitiesWaitingForVisibleActivity"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4465
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v1, "mFinishingActivities"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4468
    nop

    .line 4471
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    .line 4474
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_9

    .line 4475
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4476
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 4477
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4479
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 4480
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .line 4481
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4485
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v5, p1, :cond_7

    .line 4486
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_0

    .line 4487
    nop

    .line 4490
    move v3, v1

    :cond_0
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    const/4 v6, 0x2

    if-nez v5, :cond_1

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v5, :cond_2

    :cond_1
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_3

    .line 4493
    :cond_2
    nop

    .line 4506
    :goto_2
    move v5, v1

    goto :goto_3

    .line 4494
    :cond_3
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v5, :cond_4

    iget v5, v4, Lcom/android/server/am/ActivityRecord;->launchCount:I

    if-le v5, v6, :cond_4

    iget-wide v7, v4, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 4495
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const-wide/32 v11, 0xea60

    sub-long/2addr v9, v11

    cmp-long v5, v7, v9

    if-lez v5, :cond_4

    .line 4501
    goto :goto_2

    .line 4504
    :cond_4
    nop

    .line 4506
    move v5, v2

    :goto_3
    if-eqz v5, :cond_5

    .line 4513
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_6

    .line 4514
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Force removing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": app died, no saved state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4515
    const/16 v7, 0x7531

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 4516
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    .line 4517
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x3

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v8, v6

    const/4 v6, 0x4

    const-string/jumbo v9, "proc died without state saved"

    aput-object v9, v8, v6

    .line 4515
    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4519
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v6

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_6

    .line 4520
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v4, v2}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    goto :goto_4

    .line 4529
    :cond_5
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4534
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    iput-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 4535
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v7, :cond_6

    .line 4538
    iput-object v6, v4, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 4541
    :cond_6
    :goto_4
    invoke-direct {p0, v4, v1, v1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4542
    if-eqz v5, :cond_7

    .line 4543
    const-string v5, "appDied"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4546
    :cond_7
    goto/16 :goto_1

    .line 4474
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 4549
    :cond_9
    return v3
.end method

.method private resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I
    .locals 19

    move-object/from16 v0, p2

    .line 3219
    nop

    .line 3220
    iget v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 3221
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 3223
    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3224
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3225
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v2

    .line 3228
    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v6, -0x1

    move/from16 v7, p5

    move v8, v6

    :goto_0
    if-le v4, v2, :cond_e

    .line 3229
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 3230
    iget-boolean v10, v9, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v10, :cond_0

    .line 3231
    goto/16 :goto_9

    .line 3233
    :cond_0
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3234
    and-int/lit8 v11, v10, 0x2

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    .line 3235
    move v11, v5

    goto :goto_1

    .line 3234
    :cond_1
    nop

    .line 3235
    move v11, v12

    :goto_1
    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_2

    .line 3237
    move v12, v5

    goto :goto_2

    .line 3235
    :cond_2
    nop

    .line 3237
    :goto_2
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v10, :cond_4

    .line 3244
    if-gez v8, :cond_3

    .line 3245
    nop

    .line 3228
    move-object/from16 v11, p0

    move v8, v4

    goto/16 :goto_8

    :cond_3
    move-object/from16 v11, p0

    goto/16 :goto_8

    .line 3247
    :cond_4
    if-eqz p3, :cond_3

    if-eqz v12, :cond_3

    if-eqz v1, :cond_3

    iget-object v12, v9, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 3250
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3261
    if-nez p4, :cond_9

    if-eqz v11, :cond_5

    goto :goto_4

    .line 3274
    :cond_5
    if-gez v7, :cond_6

    .line 3275
    iget-object v7, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3279
    :cond_6
    if-ltz v8, :cond_7

    goto :goto_3

    .line 3283
    :cond_7
    move v8, v4

    :goto_3
    if-lt v8, v4, :cond_8

    .line 3284
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .line 3285
    const-string/jumbo v13, "resetAffinityTaskIfNeededLocked"

    invoke-virtual {v11, v0, v7, v13}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    .line 3283
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 3293
    :cond_8
    move-object/from16 v11, p0

    iget-object v8, v11, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    .line 3294
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v13

    .line 3293
    invoke-virtual {v8, v13, v5}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 3300
    iget-object v8, v9, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v8, v5, :cond_d

    .line 3301
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3302
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 3303
    if-lez v13, :cond_d

    .line 3304
    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 3305
    iget-object v8, v14, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    iget-object v9, v9, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 3306
    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string/jumbo v17, "replace"

    const/16 v18, 0x0

    move-object v13, v11

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_7

    .line 3262
    :cond_9
    :goto_4
    move-object/from16 v11, p0

    if-ltz v8, :cond_a

    goto :goto_5

    .line 3265
    :cond_a
    move v8, v4

    :goto_5
    if-lt v8, v4, :cond_c

    .line 3266
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 3267
    iget-boolean v9, v14, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v9, :cond_b

    .line 3268
    goto :goto_6

    .line 3270
    :cond_b
    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "move-affinity"

    const/16 v18, 0x0

    move-object v13, v11

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3265
    :goto_6
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 3273
    :cond_c
    nop

    .line 3313
    :cond_d
    :goto_7
    nop

    .line 3228
    move v8, v6

    :goto_8
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .line 3316
    :cond_e
    :goto_9
    return v7
.end method

.method private resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 3067
    nop

    .line 3069
    nop

    .line 3070
    nop

    .line 3074
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3075
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3076
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v10

    .line 3077
    const/4 v11, 0x1

    sub-int/2addr v0, v11

    move v14, v0

    move/from16 v17, v11

    const/4 v15, 0x0

    const/16 v16, -0x1

    :goto_0
    if-le v14, v10, :cond_15

    .line 3078
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 3079
    iget-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_0

    .line 3080
    goto/16 :goto_f

    .line 3082
    :cond_0
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3083
    and-int/lit8 v1, v0, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 3085
    move v1, v11

    goto :goto_1

    .line 3083
    :cond_1
    nop

    .line 3085
    move v1, v5

    :goto_1
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    .line 3087
    move v0, v11

    goto :goto_2

    .line 3085
    :cond_2
    nop

    .line 3087
    move v0, v5

    :goto_2
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3088
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 3090
    move v2, v11

    goto :goto_3

    .line 3088
    :cond_3
    nop

    .line 3090
    move v2, v5

    :goto_3
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    iget-object v3, v6, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_4

    .line 3099
    if-gez v16, :cond_14

    .line 3100
    nop

    .line 3077
    move/from16 v16, v14

    goto/16 :goto_e

    .line 3102
    :cond_4
    if-nez v1, :cond_b

    if-nez v2, :cond_b

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 3106
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3115
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3116
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    goto :goto_4

    .line 3117
    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_6

    iget-object v1, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 3118
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3122
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3134
    move v12, v5

    goto :goto_5

    .line 3126
    :cond_6
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3127
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v1

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 3126
    move-object v0, v7

    move v12, v5

    move-object/from16 v5, v18

    move-object v13, v6

    move/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3129
    iget-object v1, v13, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 3134
    :goto_5
    nop

    .line 3135
    if-gez v16, :cond_7

    .line 3136
    move/from16 v16, v14

    :cond_7
    move/from16 v1, v16

    move/from16 v5, v17

    :goto_6
    if-lt v1, v14, :cond_a

    .line 3137
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3138
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_8

    .line 3139
    goto :goto_7

    .line 3142
    :cond_8
    nop

    .line 3143
    if-eqz v5, :cond_9

    if-nez v15, :cond_9

    .line 3144
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v15

    .line 3145
    if-eqz v15, :cond_9

    .line 3146
    nop

    .line 3154
    move v5, v12

    :cond_9
    const-string/jumbo v3, "resetTargetTaskIfNeeded"

    invoke-virtual {v2, v0, v12, v3}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    .line 3136
    move/from16 v17, v12

    :goto_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 3157
    :cond_a
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    .line 3158
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v0

    .line 3157
    invoke-virtual {v1, v0, v12}, Lcom/android/server/wm/StackWindowController;->positionChildAtBottom(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 3159
    nop

    .line 3160
    goto :goto_8

    :cond_b
    move v12, v5

    if-nez p2, :cond_d

    if-nez v1, :cond_d

    if-eqz v2, :cond_c

    goto :goto_9

    .line 3202
    :cond_c
    nop

    .line 3077
    :goto_8
    const/16 v16, -0x1

    goto/16 :goto_e

    .line 3166
    :cond_d
    :goto_9
    if-eqz v2, :cond_e

    .line 3170
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v11

    goto :goto_a

    .line 3171
    :cond_e
    if-gez v16, :cond_f

    .line 3172
    nop

    .line 3176
    move v0, v14

    goto :goto_a

    .line 3174
    :cond_f
    nop

    .line 3176
    move/from16 v0, v16

    .line 3177
    :goto_a
    move v13, v14

    move/from16 v5, v17

    move-object/from16 v20, v15

    move v15, v0

    move-object/from16 v0, v20

    :goto_b
    if-gt v13, v15, :cond_13

    .line 3178
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3179
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_10

    .line 3180
    goto :goto_d

    .line 3182
    :cond_10
    nop

    .line 3183
    if-eqz v5, :cond_11

    if-nez v0, :cond_11

    .line 3184
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 3185
    if-eqz v0, :cond_11

    .line 3186
    nop

    .line 3191
    move-object/from16 v16, v0

    move/from16 v17, v12

    goto :goto_c

    :cond_11
    move-object/from16 v16, v0

    move/from16 v17, v5

    :goto_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "reset-task"

    const/4 v5, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3193
    add-int/lit8 v15, v15, -0x1

    .line 3194
    add-int/lit8 v13, v13, -0x1

    .line 3177
    :cond_12
    move-object/from16 v0, v16

    move/from16 v5, v17

    move/from16 v17, v12

    :goto_d
    add-int/2addr v13, v11

    goto :goto_b

    .line 3197
    :cond_13
    nop

    .line 3198
    nop

    .line 3077
    move-object v15, v0

    goto :goto_8

    :cond_14
    :goto_e
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .line 3206
    :cond_15
    :goto_f
    return-object v15
.end method

.method private resumeTopActivityInNextFocusableStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Ljava/lang/String;)Z
    .locals 1

    .line 2793
    invoke-virtual {p0, p3}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2797
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2798
    invoke-virtual {p3}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object p3

    const/4 v0, 0x0

    .line 2797
    invoke-virtual {p2, p3, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p1

    return p1

    .line 2802
    :cond_0
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2807
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2808
    invoke-virtual {p2, p1, p3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2807
    :goto_0
    return p1
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .line 2342
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v0, :cond_0

    .line 2344
    return v1

    .line 2350
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2352
    if-eqz v2, :cond_1

    .line 2355
    move v3, v0

    goto :goto_0

    .line 2352
    :cond_1
    nop

    .line 2355
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2356
    return v1

    .line 2359
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->cancelInitializingActivities()V

    .line 2363
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2364
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v5, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2366
    if-nez v3, :cond_3

    .line 2368
    const-string v0, "noMoreActivities"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInNextFocusableStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 2371
    :cond_3
    iput-boolean v1, v2, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 2374
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, v2, :cond_4

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2375
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2378
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2382
    return v1

    .line 2387
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, v2, :cond_5

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2389
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2390
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v3

    .line 2391
    invoke-virtual {v3, v1}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2394
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2398
    return v1

    .line 2404
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v3, v5}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2405
    const-string p1, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping resume of top activity "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is stopped"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    return v1

    .line 2413
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2414
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2415
    iput-boolean v1, v2, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2416
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2417
    iput-boolean v0, v2, Lcom/android/server/am/ActivityRecord;->launching:Z

    .line 2421
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2422
    if-eq p1, v2, :cond_7

    .line 2423
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/util/custom/thermal/ThermalController;->sendActivePackageChangedBroadcast(Ljava/lang/String;Landroid/content/Context;)V

    .line 2427
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2431
    return v1

    .line 2434
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->setLaunchSource(I)V

    .line 2436
    nop

    .line 2437
    nop

    .line 2438
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2439
    const/4 v5, 0x0

    if-eqz v3, :cond_b

    if-eq v3, p0, :cond_b

    .line 2442
    iget-object v6, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2443
    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2448
    nop

    .line 2450
    move v4, v1

    :cond_9
    if-eqz v6, :cond_a

    const-string/jumbo v3, "resumeTopActivity"

    invoke-virtual {v6, v3, v4}, Lcom/android/server/am/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2457
    move v3, v0

    goto :goto_1

    .line 2450
    :cond_a
    nop

    .line 2457
    move v3, v1

    goto :goto_1

    :cond_b
    move v3, v1

    move-object v6, v5

    :goto_1
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v7, v7, 0x4000

    if-eqz v7, :cond_c

    if-nez v3, :cond_c

    .line 2460
    move v3, v0

    goto :goto_2

    .line 2457
    :cond_c
    nop

    .line 2460
    move v3, v1

    :goto_2
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v4, v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZLcom/android/server/am/ActivityRecord;Z)Z

    move-result v7

    .line 2461
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_d

    .line 2464
    invoke-virtual {p0, v4, v1, v2, v1}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    move-result v4

    or-int/2addr v7, v4

    .line 2466
    :cond_d
    if-eqz v7, :cond_10

    if-nez v3, :cond_10

    .line 2473
    iget-object p1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_e

    iget-object p1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz p1, :cond_e

    .line 2474
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, p2, v0, v5}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2477
    :cond_e
    if-eqz v6, :cond_f

    .line 2478
    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 2480
    :cond_f
    return v0

    .line 2481
    :cond_10
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, v2, :cond_11

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2482
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2488
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2492
    return v0

    .line 2498
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean p2, p2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez p2, :cond_12

    .line 2502
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "resume-no-history"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2504
    iput-object v5, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 2507
    :cond_12
    if-eqz p1, :cond_14

    if-eq p1, v2, :cond_14

    .line 2508
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    if-eqz v2, :cond_13

    iget-boolean p2, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez p2, :cond_13

    .line 2511
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isTopRunningActivity()Z

    move-result p2

    .line 2510
    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/am/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 2512
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2524
    :cond_13
    iget-boolean p2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz p2, :cond_14

    .line 2525
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 2543
    :cond_14
    :goto_3
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v4, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {p2, v3, v1, v4}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 2546
    :catch_0
    move-exception p2

    .line 2547
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed trying to unstop package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2545
    :catch_1
    move-exception p2

    .line 2549
    :goto_4
    nop

    .line 2554
    :goto_5
    nop

    .line 2555
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-nez p2, :cond_15

    .line 2556
    new-instance p2, Landroid/util/BoostFramework;

    invoke-direct {p2}, Landroid/util/BoostFramework;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    .line 2558
    :cond_15
    const/4 p2, 0x6

    if-eqz p1, :cond_1d

    .line 2559
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/16 v4, 0x1083

    if-eqz v3, :cond_19

    .line 2562
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 2563
    nop

    .line 2564
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2, v1, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2573
    move p2, v1

    goto :goto_7

    .line 2566
    :cond_16
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-ne v3, v6, :cond_17

    .line 2567
    const/4 v3, 0x7

    goto :goto_6

    .line 2568
    :cond_17
    const/16 v3, 0x9

    .line 2566
    :goto_6
    invoke-virtual {p2, v3, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2569
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eq p2, v3, :cond_18

    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-eqz p2, :cond_18

    .line 2570
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v4, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 2573
    :cond_18
    move p2, v0

    :goto_7
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    goto :goto_b

    .line 2577
    :cond_19
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2578
    nop

    .line 2579
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_9

    .line 2581
    :cond_1a
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-ne v6, v7, :cond_1b

    .line 2582
    goto :goto_8

    .line 2583
    :cond_1b
    iget-boolean p2, v2, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz p2, :cond_1c

    .line 2584
    const/16 p2, 0x10

    goto :goto_8

    .line 2585
    :cond_1c
    const/16 p2, 0x8

    .line 2581
    :goto_8
    invoke-virtual {v3, p2, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2586
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p1

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p2

    if-eq p1, p2, :cond_1f

    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-eqz p1, :cond_1f

    .line 2587
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    iget-object p2, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4, p2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    goto :goto_a

    .line 2593
    :cond_1d
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 2594
    nop

    .line 2595
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2601
    :goto_9
    move p2, v1

    goto :goto_b

    .line 2597
    :cond_1e
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2601
    :cond_1f
    :goto_a
    move p2, v0

    :goto_b
    if-eqz p2, :cond_20

    .line 2602
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    goto :goto_c

    .line 2604
    :cond_20
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 2607
    :goto_c
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2609
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 2610
    iget-object p2, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_30

    iget-object p2, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz p2, :cond_30

    .line 2621
    if-eqz p1, :cond_22

    .line 2622
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result p2

    if-nez p2, :cond_21

    iget-object p2, p1, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz p2, :cond_22

    iget-object p2, p1, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean p2, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez p2, :cond_22

    .line 2631
    :cond_21
    move p2, v0

    goto :goto_d

    .line 2622
    :cond_22
    nop

    .line 2631
    move p2, v1

    :goto_d
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2633
    :try_start_1
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v4, :cond_23

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v4, :cond_23

    if-eqz p2, :cond_24

    .line 2634
    :cond_23
    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 2638
    :cond_24
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 2641
    if-nez p1, :cond_25

    .line 2642
    move-object p2, v5

    goto :goto_e

    .line 2641
    :cond_25
    iget-object p2, p1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2642
    :goto_e
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v4

    .line 2644
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 2649
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v7, "resumeTopActivityInnerLocked"

    invoke-virtual {v2, v6, v7}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2651
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7, v0, v5}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2652
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2653
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 2657
    nop

    .line 2659
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 2668
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v6, v2, v7, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z

    move-result v6

    .line 2672
    xor-int/2addr v6, v0

    goto :goto_f

    :cond_26
    move v6, v0

    :goto_f
    if-eqz v6, :cond_2a

    .line 2678
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 2682
    if-eq p1, v2, :cond_27

    .line 2684
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 2686
    :cond_27
    iget-boolean p1, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz p1, :cond_28

    iget-boolean p1, v2, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz p1, :cond_29

    .line 2687
    :cond_28
    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 2689
    :cond_29
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->completeResumeLocked()V

    .line 2691
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    .line 2695
    :cond_2a
    :try_start_2
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v6, v7}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v6

    .line 2698
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 2699
    if-eqz v7, :cond_2b

    .line 2700
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2701
    iget-boolean v9, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_2b

    if-lez v8, :cond_2b

    .line 2704
    invoke-static {v7}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2708
    :cond_2b
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v7, :cond_2c

    .line 2709
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-static {v7, v1}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2715
    :cond_2c
    iget-boolean v7, v2, Lcom/android/server/am/ActivityRecord;->stopped:Z

    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityRecord;->notifyAppResumed(Z)V

    .line 2717
    const/16 v7, 0x7537

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    .line 2718
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v9, 0x2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v10

    iget v10, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v10, v8, v9

    .line 2717
    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2721
    iput-boolean v1, v2, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2722
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getAppWarningsLocked()Lcom/android/server/am/AppWarnings;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/am/AppWarnings;->onResumeActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 2723
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v2}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2724
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v0, v7, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2725
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v8, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 2726
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 2727
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->repProcState:I

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2729
    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v8

    .line 2728
    invoke-static {v7, v8}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v7

    .line 2727
    invoke-virtual {v6, v7}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 2730
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2756
    nop

    .line 2757
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2762
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->completeResumeLocked()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2771
    nop

    .line 2772
    goto/16 :goto_12

    .line 2763
    :catch_2
    move-exception p1

    .line 2766
    const-string p2, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown during resume of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2767
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "resume-exception"

    const/4 v8, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2770
    return v0

    .line 2734
    :catch_3
    move-exception v6

    .line 2738
    :try_start_5
    const-string/jumbo v6, "resumeTopActivityInnerLocked"

    invoke-virtual {v2, v4, v6}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2741
    if-eqz p2, :cond_2d

    .line 2742
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v6, "resumeTopActivityInnerLocked"

    invoke-virtual {p2, v4, v6}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2745
    :cond_2d
    const-string p2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restarting because process died: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    iget-boolean p2, v2, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez p2, :cond_2e

    .line 2747
    iput-boolean v0, v2, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_10

    .line 2748
    :cond_2e
    if-eqz p1, :cond_2f

    .line 2749
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isTopStackOnDisplay()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 2750
    invoke-virtual {v2, v5, v1, v1}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2753
    :cond_2f
    :goto_10
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2755
    monitor-exit v3

    return v0

    .line 2757
    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    .line 2774
    :cond_30
    iget-boolean p1, v2, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez p1, :cond_31

    .line 2775
    iput-boolean v0, v2, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_11

    .line 2778
    :cond_31
    invoke-virtual {v2, v5, v1, v1}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2784
    :goto_11
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1, v2, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2788
    :goto_12
    return v0
.end method

.method private returnsToHomeStack()Z
    .locals 2

    .line 1009
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1010
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1011
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->returnsToHomeStack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 1009
    :cond_0
    return v1
.end method

.method private schedulePauseTimeout(Lcom/android/server/am/ActivityRecord;)V
    .locals 3

    .line 1394
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1395
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1396
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    .line 1397
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1399
    return-void
.end method

.method private setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 0

    .line 2331
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p2, p1, :cond_0

    .line 2332
    return-void

    .line 2337
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2338
    return-void
.end method

.method private topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;
    .locals 3

    .line 845
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 846
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 847
    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 848
    :cond_0
    return-object v1

    .line 845
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 851
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private updateBehindFullscreen(ZZLcom/android/server/am/ActivityRecord;)Z
    .locals 0

    .line 2181
    iget-boolean p1, p3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz p1, :cond_0

    .line 2186
    const/4 p2, 0x1

    .line 2188
    :cond_0
    return p2
.end method

.method private updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V
    .locals 4

    .line 4565
    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_0

    .line 4566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 4570
    if-nez p2, :cond_0

    .line 4571
    iget-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 4574
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->invalidateTaskLayers()V

    .line 4575
    return-void
.end method

.method private updateTransitLocked(ILandroid/app/ActivityOptions;)V
    .locals 2

    .line 4553
    if-eqz p2, :cond_1

    .line 4554
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4555
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4556
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_0

    .line 4558
    :cond_0
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 4561
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4562
    return-void
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2

    .line 4411
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4413
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->activityDestroyedLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4415
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4416
    nop

    .line 4417
    return-void

    .line 4415
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method final activityDestroyedLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 2

    .line 4424
    if-eqz p1, :cond_0

    .line 4425
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4430
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4431
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4432
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4433
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4437
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4438
    return-void
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .locals 6

    .line 1523
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 1524
    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1525
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1526
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x1

    if-ne v1, p1, :cond_0

    .line 1529
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1531
    :try_start_0
    invoke-direct {p0, v2, p2}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1534
    nop

    .line 1535
    return-void

    .line 1533
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw p1

    .line 1537
    :cond_0
    const/16 v1, 0x753c

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1538
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    .line 1539
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1

    .line 1540
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v5, "(none)"

    :goto_0
    aput-object v5, v3, v2

    .line 1537
    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1541
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1542
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v2, "activityPausedLocked"

    invoke-virtual {p1, v1, v2}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1543
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_2

    .line 1546
    const-string v1, "activityPausedLocked"

    invoke-virtual {p0, p1, v4, v0, v1}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    .line 1552
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1, p2, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1553
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .locals 2

    .line 1984
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1985
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->addStartingWindowsForVisibleActivities(Z)V

    .line 1984
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1987
    :cond_0
    return-void
.end method

.method addTask(Lcom/android/server/am/TaskRecord;IZLjava/lang/String;)V
    .locals 2

    .line 5245
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result p2

    .line 5247
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5248
    :goto_0
    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/am/ActivityStack;->preAddTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/am/ActivityStack;

    move-result-object p4

    .line 5250
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5251
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setStack(Lcom/android/server/am/ActivityStack;)V

    .line 5253
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 5255
    invoke-direct {p0, p1, p4, p3}, Lcom/android/server/am/ActivityStack;->postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V

    .line 5256
    return-void
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V
    .locals 2

    .line 5232
    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;IZLjava/lang/String;)V

    .line 5233
    if-eqz p2, :cond_1

    .line 5235
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 5238
    :cond_1
    return-void
.end method

.method addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 3

    .line 1656
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1657
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1662
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    .line 1663
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1674
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-gt v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1675
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    nop

    .line 1676
    :cond_2
    :goto_0
    if-nez p2, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    .line 1685
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    goto :goto_2

    .line 1679
    :cond_4
    :goto_1
    if-nez p3, :cond_5

    .line 1680
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto :goto_2

    .line 1682
    :cond_5
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1687
    :goto_2
    return-void
.end method

.method adjustFocusToNextFocusableStack(Ljava/lang/String;)Z
    .locals 1

    .line 3449
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method affectedBySplitScreenResize()Z
    .locals 3

    .line 2013
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->supportsSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2014
    return v1

    .line 2016
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 2017
    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method awakeFromSleepingLocked()V
    .locals 6

    .line 1275
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1276
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1277
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_0

    .line 1278
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1277
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1275
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1281
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2

    .line 1282
    const-string v0, "ActivityManager"

    const-string v2, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 1285
    :cond_2
    return-void
.end method

.method cancelInitializingActivities()V
    .locals 9

    .line 2246
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2247
    nop

    .line 2250
    nop

    .line 2252
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 2255
    nop

    .line 2256
    nop

    .line 2259
    move v1, v2

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_1
    if-ltz v5, :cond_4

    .line 2260
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2261
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    :goto_2
    if-ltz v7, :cond_3

    .line 2262
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 2263
    if-eqz v1, :cond_2

    .line 2264
    if-ne v8, v0, :cond_1

    .line 2265
    nop

    .line 2267
    move v1, v2

    :cond_1
    iget-boolean v8, v8, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    or-int/2addr v4, v8

    .line 2268
    goto :goto_3

    .line 2271
    :cond_2
    invoke-virtual {v8, v4}, Lcom/android/server/am/ActivityRecord;->removeOrphanedStartingWindow(Z)V

    .line 2272
    iget-boolean v8, v8, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    or-int/2addr v4, v8

    .line 2261
    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 2259
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2275
    :cond_4
    return-void
.end method

.method checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z
    .locals 7

    .line 2035
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_0

    .line 2036
    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v2

    .line 2037
    invoke-virtual {v2, v0}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    .line 2038
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v2

    .line 2039
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->canShowWhenLocked()Z

    move-result v3

    .line 2040
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->hasDismissKeyguardWindows()Z

    move-result v4

    .line 2041
    const/4 v5, 0x1

    if-eqz p2, :cond_4

    .line 2042
    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v6, :cond_1

    .line 2043
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    .line 2048
    :cond_1
    if-eqz p3, :cond_2

    .line 2049
    iget-boolean p3, p0, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    or-int/2addr p3, v3

    iput-boolean p3, p0, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 2052
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->canShowWithInsecureKeyguard()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2053
    invoke-virtual {p3}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/KeyguardController;->canDismissKeyguard()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 2054
    move p3, v5

    goto :goto_1

    .line 2053
    :cond_3
    nop

    .line 2054
    move p3, v1

    :goto_1
    if-eqz p3, :cond_4

    .line 2055
    return v5

    .line 2058
    :cond_4
    if-eqz v0, :cond_6

    .line 2061
    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object p2

    .line 2062
    invoke-virtual {p2, p1, v4}, Lcom/android/server/am/KeyguardController;->canShowActivityWhileKeyguardShowing(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2061
    move v1, v5

    goto :goto_2

    .line 2062
    :cond_5
    nop

    .line 2061
    :goto_2
    return v1

    .line 2063
    :cond_6
    if-eqz v2, :cond_8

    .line 2064
    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lcom/android/server/am/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result p1

    if-eqz p1, :cond_7

    move v1, v5

    nop

    :cond_7
    return v1

    .line 2067
    :cond_8
    return p2
.end method

.method checkReadyForSleep()V
    .locals 2

    .line 1304
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 1307
    :cond_0
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 5

    .line 2198
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2199
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 2200
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2201
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 2202
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2203
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v4, p1, :cond_0

    .line 2204
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2201
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2198
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2208
    :cond_2
    return-void
.end method

.method closeSystemDialogsLocked()V
    .locals 10

    .line 4901
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 4902
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4903
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 4904
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 4905
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 4906
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "close-sys"

    const/4 v9, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4903
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4901
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4910
    :cond_2
    return-void
.end method

.method continueUpdateBounds()V
    .locals 4

    .line 795
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 796
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 797
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    if-eqz v0, :cond_3

    .line 798
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 799
    move-object v0, v1

    goto :goto_0

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    .line 799
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 800
    move-object v2, v1

    goto :goto_1

    .line 799
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    .line 800
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    .line 798
    :goto_2
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 802
    :cond_3
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/am/ActivityRecord;)V
    .locals 3

    .line 2192
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2193
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2194
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x6a

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2195
    return-void
.end method

.method createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/StackWindowController;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/graphics/Rect;",
            ")TT;"
        }
    .end annotation

    .line 477
    new-instance v7, Lcom/android/server/wm/StackWindowController;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object v0, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/StackWindowController;-><init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowManagerService;)V

    return-object v7
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;
    .locals 10

    .line 5203
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p6

    .line 5211
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v2, p1

    move-object v3, v7

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/TaskRecord;->create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 5214
    const-string v2, "createTaskRecord"

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    .line 5215
    iget v2, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    iget v2, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_0

    .line 5216
    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v4

    .line 5217
    invoke-virtual {v4, v2}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v2

    .line 5218
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v9

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 5219
    move-object v10, v1

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5220
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->matchParentBounds()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    .line 5221
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 5223
    :cond_1
    iget v0, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    nop

    :cond_2
    invoke-virtual {v1, v8, v3}, Lcom/android/server/am/TaskRecord;->createWindowContainer(ZZ)V

    .line 5224
    return-object v1
.end method

.method deferScheduleMultiWindowModeChanged()Z
    .locals 1

    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method deferUpdateBounds()V
    .locals 1

    .line 783
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    if-nez v0, :cond_0

    .line 784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    .line 787
    :cond_0
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
    .locals 8

    .line 4312
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4315
    return v1

    .line 4318
    :cond_0
    const/16 v0, 0x7542

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 4319
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    .line 4320
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x4

    aput-object p3, v2, v3

    .line 4318
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4322
    nop

    .line 4324
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4326
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    .line 4328
    move v0, v4

    goto :goto_0

    .line 4326
    :cond_1
    nop

    .line 4328
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 4329
    if-eqz p2, :cond_3

    .line 4330
    iget-object p2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4331
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne p2, v3, :cond_2

    iget-object p2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_2

    .line 4332
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v2, p2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 4333
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x19

    invoke-virtual {p2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    .line 4336
    :cond_2
    iget-object p2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 4339
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, v3}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4341
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, v3, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 4342
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 4346
    :cond_3
    nop

    .line 4350
    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object p2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v7, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 4351
    invoke-static {v6, v7}, Landroid/app/servertransaction/DestroyActivityItem;->obtain(ZI)Landroid/app/servertransaction/DestroyActivityItem;

    move-result-object v6

    .line 4350
    invoke-virtual {p2, v3, v5, v6}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4362
    goto :goto_1

    .line 4352
    :catch_0
    move-exception p2

    .line 4357
    iget-boolean p2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz p2, :cond_4

    .line 4358
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " exceptionInScheduleDestroy"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4359
    nop

    .line 4360
    nop

    .line 4364
    move p2, v4

    goto :goto_2

    :cond_4
    :goto_1
    move p2, v1

    move v4, p2

    :goto_2
    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 4373
    iget-boolean p3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz p3, :cond_5

    if-nez v4, :cond_5

    .line 4376
    sget-object p3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v2, "destroyActivityLocked. finishing and not skipping destroy"

    invoke-virtual {p1, p3, v2}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4378
    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {p3, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 4379
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, p3, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4380
    goto :goto_3

    .line 4383
    :cond_5
    sget-object p3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v3, "destroyActivityLocked. not finishing or skipping destroy"

    invoke-virtual {p1, p3, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4386
    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4388
    :goto_3
    goto :goto_4

    .line 4390
    :cond_6
    iget-boolean p2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz p2, :cond_7

    .line 4391
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " hadNoApp"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4392
    nop

    .line 4401
    move p2, v4

    goto :goto_4

    .line 4395
    :cond_7
    sget-object p2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string p3, "destroyActivityLocked. not finishing and had no app"

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4397
    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4401
    move p2, v1

    :goto_4
    iput v1, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 4403
    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    if-eqz v0, :cond_8

    .line 4404
    const-string p3, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " being finished, but not in LRU list"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    :cond_8
    return p2
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    .line 5058
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5059
    const/4 v0, 0x0

    return v0

    .line 5062
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v14, 0x1

    sub-int/2addr v1, v14

    move v15, v1

    :goto_0
    if-ltz v15, :cond_2

    .line 5063
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/am/TaskRecord;

    .line 5064
    if-eqz p6, :cond_1

    .line 5065
    const-string v1, ""

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5067
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Task id #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMinWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMinHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mLastNonFullscreenBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5073
    const-string v1, "      "

    invoke-virtual {v12, v13, v1}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5074
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const-string v4, "    "

    const-string v5, "Hist"

    const/4 v6, 0x1

    xor-int/lit8 v7, p3, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    .line 5062
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_0

    .line 5077
    :cond_2
    return v14
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .locals 1

    .line 1850
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    .line 1852
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 1862
    move/from16 v8, p4

    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 1863
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    .line 1864
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->beginActivityVisibilityUpdate()V

    .line 1866
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 1869
    if-eqz v11, :cond_0

    .line 1870
    invoke-direct {v7, v11}, Lcom/android/server/am/ActivityStack;->checkTranslucentActivityWaiting(Lcom/android/server/am/ActivityRecord;)V

    .line 1875
    :cond_0
    const/4 v12, 0x1

    if-eqz v11, :cond_1

    .line 1876
    move v1, v12

    goto :goto_0

    .line 1875
    :cond_1
    nop

    .line 1876
    move v1, v9

    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v13

    .line 1877
    nop

    .line 1878
    xor-int/lit8 v2, v13, 0x1

    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1879
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1880
    move v3, v12

    goto :goto_1

    .line 1879
    :cond_2
    nop

    .line 1880
    move v3, v9

    .line 1881
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityDisplay;->isTopNotPinnedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1882
    move v14, v12

    goto :goto_2

    .line 1881
    :cond_3
    nop

    .line 1882
    move v14, v9

    :goto_2
    iget-object v4, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v12

    move v15, v4

    move v4, v3

    move/from16 v3, p2

    :goto_3
    if-ltz v15, :cond_15

    .line 1883
    iget-object v5, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 1884
    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1885
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v12

    move/from16 v16, v3

    move/from16 v17, v4

    :goto_4
    if-ltz v5, :cond_12

    .line 1886
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1887
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_4

    .line 1888
    goto :goto_6

    .line 1890
    :cond_4
    if-ne v4, v11, :cond_5

    .line 1891
    move/from16 v18, v12

    goto :goto_5

    .line 1890
    :cond_5
    nop

    .line 1891
    move/from16 v18, v9

    :goto_5
    if-eqz v1, :cond_6

    if-nez v18, :cond_6

    .line 1892
    nop

    .line 1885
    :goto_6
    move-object v10, v6

    goto/16 :goto_e

    .line 1894
    :cond_6
    nop

    .line 1897
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityRecord;->shouldBeVisibleIgnoringKeyguard(Z)Z

    move-result v1

    .line 1899
    iput-boolean v1, v4, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    .line 1902
    if-eqz v18, :cond_7

    if-eqz v14, :cond_7

    move v3, v12

    goto :goto_7

    :cond_7
    move v3, v9

    :goto_7
    invoke-virtual {v7, v4, v1, v3}, Lcom/android/server/am/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v3

    .line 1904
    if-eqz v1, :cond_8

    .line 1905
    xor-int/lit8 v1, v13, 0x1

    invoke-direct {v7, v1, v2, v4}, Lcom/android/server/am/ActivityStack;->updateBehindFullscreen(ZZLcom/android/server/am/ActivityRecord;)Z

    move-result v1

    .line 1908
    move/from16 v19, v1

    goto :goto_8

    :cond_8
    move/from16 v19, v2

    :goto_8
    if-eqz v3, :cond_11

    .line 1913
    if-eq v4, v0, :cond_9

    if-eqz v8, :cond_9

    .line 1914
    move/from16 v3, p3

    invoke-virtual {v4, v9, v3, v12}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    goto :goto_9

    .line 1918
    :cond_9
    move/from16 v3, p3

    :goto_9
    iget-object v1, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_e

    iget-object v1, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_a

    goto :goto_a

    .line 1928
    :cond_a
    iget-boolean v1, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v1, :cond_c

    .line 1933
    iget-boolean v1, v4, Lcom/android/server/am/ActivityRecord;->mClientVisibilityDeferred:Z

    if-eqz v1, :cond_b

    if-eqz v8, :cond_b

    .line 1934
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->makeClientVisible()V

    .line 1937
    :cond_b
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->handleAlreadyVisible()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1938
    nop

    .line 1944
    move-object/from16 v20, v4

    move-object v10, v6

    move/from16 v17, v9

    goto :goto_c

    .line 1941
    :cond_c
    invoke-virtual {v4, v0, v8}, Lcom/android/server/am/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1944
    :cond_d
    move-object/from16 v20, v4

    move v9, v5

    move-object v10, v6

    goto :goto_b

    .line 1919
    :cond_e
    :goto_a
    move-object v1, v7

    move-object v2, v0

    move/from16 v3, v16

    move-object/from16 v20, v4

    move/from16 v4, v18

    move v9, v5

    move/from16 v5, v17

    move-object v10, v6

    move-object/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->makeVisibleAndRestartIfNeeded(Lcom/android/server/am/ActivityRecord;IZZLcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1921
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v9, v1, :cond_f

    .line 1923
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v12

    .line 1944
    move v5, v1

    goto :goto_c

    .line 1925
    :cond_f
    nop

    .line 1944
    move v5, v9

    const/16 v17, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    move v5, v9

    :goto_c
    move-object/from16 v3, v20

    iget v1, v3, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int v16, v16, v1

    goto :goto_d

    .line 1951
    :cond_11
    move-object v3, v4

    move v9, v5

    move-object v10, v6

    invoke-direct {v7, v3}, Lcom/android/server/am/ActivityStack;->makeInvisible(Lcom/android/server/am/ActivityRecord;)V

    .line 1885
    move v5, v9

    :goto_d
    move/from16 v2, v19

    const/4 v1, 0x0

    :goto_e
    add-int/lit8 v5, v5, -0x1

    move-object v6, v10

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_4

    .line 1954
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 1955
    const/4 v4, 0x5

    if-ne v3, v4, :cond_13

    .line 1959
    nop

    .line 1882
    xor-int/lit8 v2, v13, 0x1

    goto :goto_f

    .line 1960
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1969
    nop

    .line 1882
    move v2, v12

    :cond_14
    :goto_f
    add-int/lit8 v15, v15, -0x1

    move/from16 v3, v16

    move/from16 v4, v17

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1973
    :cond_15
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_16

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 1974
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1976
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1979
    :cond_16
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    .line 1980
    nop

    .line 1981
    return-void

    .line 1979
    :catchall_0
    move-exception v0

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 9

    .line 4752
    if-eqz p1, :cond_7

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_0

    goto :goto_4

    .line 4756
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 4757
    nop

    .line 4758
    nop

    .line 4760
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ltz v0, :cond_5

    .line 4761
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 4762
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4764
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    const/4 v7, 0x1

    if-ne v6, v4, :cond_1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v7

    .line 4765
    :goto_1
    if-ltz v4, :cond_3

    .line 4766
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 4767
    invoke-virtual {v6, v1, p2}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v8

    or-int/2addr v2, v8

    .line 4769
    iget-boolean v6, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_2

    .line 4770
    nop

    .line 4771
    nop

    .line 4774
    move v3, v7

    goto :goto_2

    .line 4765
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4774
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 4775
    goto :goto_3

    .line 4760
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4778
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 4781
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4783
    :cond_6
    return-void

    .line 4753
    :cond_7
    :goto_4
    return-void
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .locals 1

    .line 5359
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 5360
    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 5361
    return-void
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;
    .locals 6

    .line 1197
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1198
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1199
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    :cond_0
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 1203
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    .line 1204
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1205
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1207
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_4

    .line 1208
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1209
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1210
    goto :goto_2

    .line 1212
    :cond_1
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_3

    iget v5, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, p2, :cond_3

    .line 1213
    if-eqz p3, :cond_2

    .line 1214
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1215
    return-object v4

    .line 1218
    :cond_2
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1219
    return-object v4

    .line 1207
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1203
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1226
    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1099
    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1100
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1101
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 1102
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 1103
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :cond_0
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1106
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v6

    :goto_0
    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v9

    and-int/2addr v8, v9

    .line 1108
    const/4 v9, 0x0

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    .line 1111
    :cond_2
    move-object v3, v9

    :goto_1
    iget-object v10, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v7

    :goto_2
    if-ltz v10, :cond_c

    .line 1112
    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 1113
    iget-object v12, v11, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v12, :cond_3

    .line 1116
    goto/16 :goto_5

    .line 1118
    :cond_3
    iget v12, v11, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v12, v4, :cond_4

    .line 1121
    goto/16 :goto_5

    .line 1125
    :cond_4
    invoke-virtual {v11, v6}, Lcom/android/server/am/TaskRecord;->getTopActivity(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 1126
    if-eqz v12, :cond_b

    iget-boolean v13, v12, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v13, :cond_b

    iget v13, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v13, v4, :cond_b

    iget v13, v12, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    .line 1129
    goto/16 :goto_5

    .line 1131
    :cond_5
    invoke-virtual {v12, v1}, Lcom/android/server/am/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1133
    goto/16 :goto_5

    .line 1136
    :cond_6
    iget-object v13, v11, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 1137
    iget-object v14, v11, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 1140
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Landroid/content/Intent;->isDocument()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1141
    nop

    .line 1142
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 1156
    :goto_3
    move/from16 v16, v7

    goto :goto_4

    .line 1143
    :cond_7
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Landroid/content/Intent;->isDocument()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1144
    nop

    .line 1145
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    goto :goto_3

    .line 1147
    :cond_8
    nop

    .line 1148
    nop

    .line 1156
    move/from16 v16, v6

    move-object v15, v9

    :goto_4
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_9

    .line 1157
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v13

    if-nez v13, :cond_9

    .line 1158
    invoke-static {v3, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1163
    iput-object v12, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 1164
    iput-boolean v6, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    .line 1165
    goto :goto_6

    .line 1166
    :cond_9
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 1167
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v13

    if-nez v13, :cond_a

    .line 1168
    invoke-static {v3, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1173
    iput-object v12, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 1174
    iput-boolean v6, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    .line 1175
    goto :goto_6

    .line 1176
    :cond_a
    if-nez v8, :cond_b

    if-nez v16, :cond_b

    iget-object v13, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    if-nez v13, :cond_b

    iget-object v13, v11, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v13, :cond_b

    .line 1178
    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1183
    iput-object v12, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 1184
    iput-boolean v7, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    .line 1111
    :cond_b
    :goto_5
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_2

    .line 1188
    :cond_c
    :goto_6
    return-void
.end method

.method final finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 9

    .line 3663
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3664
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_1

    .line 3665
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3666
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3667
    goto :goto_1

    .line 3669
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "request-affinity"

    const/4 v8, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3664
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3671
    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 7

    .line 3711
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z
    .locals 8

    .line 3720
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3721
    const-string p2, "ActivityManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Duplicate finish request for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3722
    return v1

    .line 3725
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 3727
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 3728
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3729
    const/16 v2, 0x7531

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3730
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 3731
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const/4 v4, 0x3

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v3, v4

    const/4 v4, 0x4

    aput-object p4, v3, v4

    .line 3729
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3732
    iget-object p4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3733
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3734
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_1

    .line 3735
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 3736
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 3740
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/ActivityRecord;

    .line 3741
    iget-object p4, p4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p4, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3745
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 3747
    const-string p4, "finishActivity"

    invoke-direct {p0, p1, p4}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityStack(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3749
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 3751
    if-gtz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isClearingToReuseTask()Z

    move-result p2

    if-nez p2, :cond_2

    .line 3752
    move p2, v5

    goto :goto_0

    .line 3751
    :cond_2
    nop

    .line 3752
    move p2, v1

    :goto_0
    if-eqz p2, :cond_3

    const/16 p3, 0x9

    goto :goto_1

    :cond_3
    const/4 p3, 0x7

    .line 3753
    :goto_1
    iget-object p4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p4, p1, :cond_6

    .line 3756
    if-eqz p2, :cond_4

    .line 3757
    iget-object p4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p4, p4, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget p5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p4, p5}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskRemovalStarted(I)V

    .line 3760
    :cond_4
    iget-object p4, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p4, p3, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3763
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 3765
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez p1, :cond_5

    .line 3769
    const/4 p1, 0x0

    invoke-virtual {p0, v1, v1, p1, p6}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    .line 3772
    :cond_5
    if-eqz p2, :cond_d

    .line 3773
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    goto :goto_6

    .line 3775
    :cond_6
    sget-object p2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result p2

    if-nez p2, :cond_d

    .line 3779
    iget-boolean p2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz p2, :cond_7

    .line 3780
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/ActivityStack;->prepareActivityHideTransitionAnimation(Lcom/android/server/am/ActivityRecord;I)V

    .line 3783
    :cond_7
    iget-boolean p2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez p2, :cond_9

    iget-boolean p2, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz p2, :cond_8

    goto :goto_2

    .line 3784
    :cond_8
    nop

    .line 3785
    move v6, v5

    goto :goto_3

    .line 3783
    :cond_9
    :goto_2
    nop

    .line 3785
    :goto_3
    const-string p2, "finishActivityLocked"

    invoke-virtual {p0, p1, v6, p5, p2}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_a

    .line 3795
    move v1, v5

    goto :goto_4

    .line 3785
    :cond_a
    nop

    .line 3795
    :goto_4
    invoke-virtual {v0, v5}, Lcom/android/server/am/TaskRecord;->onlyHasTaskOverlayActivities(Z)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 3796
    iget-object p1, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ActivityRecord;

    .line 3797
    iget-boolean p4, p2, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-nez p4, :cond_b

    .line 3798
    goto :goto_5

    .line 3800
    :cond_b
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityStack;->prepareActivityHideTransitionAnimation(Lcom/android/server/am/ActivityRecord;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3801
    goto :goto_5

    .line 3803
    :cond_c
    nop

    .line 3810
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3803
    return v1

    .line 3808
    :cond_d
    :goto_6
    nop

    .line 3810
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3808
    return v1

    .line 3810
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw p1
.end method

.method finishAllActivitiesLocked(Z)V
    .locals 9

    .line 3903
    nop

    .line 3904
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 3905
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3906
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ltz v4, :cond_1

    .line 3907
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3908
    nop

    .line 3909
    iget-boolean v6, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_0

    if-nez p1, :cond_0

    .line 3910
    goto :goto_2

    .line 3912
    :cond_0
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finishAllActivitiesLocked: finishing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " immediately"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    const-string v6, "finishAllActivitiesLocked"

    invoke-virtual {p0, v2, v5, v5, v6}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    .line 3906
    :goto_2
    add-int/lit8 v4, v4, -0x1

    move v2, v5

    goto :goto_1

    .line 3904
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3917
    :cond_2
    if-eqz v2, :cond_3

    .line 3918
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->remove()V

    .line 3920
    :cond_3
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 6

    .line 3836
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3839
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p2, v2, :cond_3

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v4, :cond_0

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_3

    :cond_0
    if-eqz v0, :cond_3

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v4, :cond_3

    .line 3841
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 3842
    invoke-virtual {p0, p1, v3, v3}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3846
    :cond_1
    sget-object p2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string p4, "finishCurrentActivityLocked"

    invoke-virtual {p1, p2, p4}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3847
    if-eqz p3, :cond_2

    .line 3848
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3851
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->releasePerfLockHandlerIfNeeded()V

    .line 3853
    return-object p1

    .line 3857
    :cond_3
    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p3, p3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3858
    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p3, p3, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3859
    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p3, p3, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3860
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object p3

    .line 3863
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v5, "finishCurrentActivityLocked"

    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3864
    nop

    .line 3865
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-eq v4, v5, :cond_4

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p3, v4, :cond_4

    if-ne p2, v2, :cond_4

    .line 3868
    move v2, v1

    goto :goto_0

    .line 3865
    :cond_4
    nop

    .line 3868
    move v2, v3

    :goto_0
    if-eqz p2, :cond_7

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p3, v4, :cond_5

    if-eq p2, v1, :cond_7

    .line 3870
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result p2

    if-nez p2, :cond_7

    :cond_5
    if-nez v2, :cond_7

    sget-object p2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p3, p2, :cond_7

    sget-object p2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p3, p2, :cond_7

    sget-object p2, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p3, p2, :cond_6

    goto :goto_1

    .line 3896
    :cond_6
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3897
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3898
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 3899
    return-object p1

    .line 3875
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 3876
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "finish-imm:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result p2

    .line 3878
    if-eqz v2, :cond_8

    .line 3881
    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget p4, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p3, v0, p4, v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z

    .line 3884
    :cond_8
    if-eqz p2, :cond_9

    .line 3885
    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 3890
    :cond_9
    if-eqz p2, :cond_a

    const/4 p1, 0x0

    :cond_a
    return-object p1
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 4914
    move/from16 v9, p5

    .line 4915
    nop

    .line 4916
    nop

    .line 4917
    iget-object v0, v6, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v0

    move-object v1, v11

    move-object v2, v1

    move v0, v12

    :goto_0
    if-ltz v13, :cond_e

    .line 4918
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4919
    iget-object v4, v6, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4920
    iget-object v4, v6, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4922
    :goto_1
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 4923
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4924
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 4925
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v8, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 4926
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-nez v7, :cond_2

    iget v4, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v4, v9, :cond_2

    .line 4928
    :cond_1
    move v4, v10

    goto :goto_2

    .line 4926
    :cond_2
    nop

    .line 4928
    move v4, v12

    :goto_2
    const/4 v5, -0x1

    if-eq v9, v5, :cond_3

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, v9, :cond_c

    :cond_3
    if-nez v4, :cond_4

    .line 4929
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-ne v5, v1, :cond_c

    :cond_4
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_5

    if-nez p4, :cond_5

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v5, :cond_c

    .line 4931
    :cond_5
    if-nez p3, :cond_7

    .line 4932
    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_6

    .line 4935
    goto/16 :goto_4

    .line 4937
    :cond_6
    return v10

    .line 4939
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4940
    if-eqz v2, :cond_8

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4941
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skip force-stop again "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4942
    goto :goto_4

    .line 4944
    :cond_8
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 4947
    move-object v12, v0

    goto :goto_3

    :cond_9
    move-object v12, v2

    .line 4948
    :goto_3
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force finishing activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4949
    if-eqz v4, :cond_b

    .line 4950
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_a

    .line 4951
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v10, v0, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 4953
    :cond_a
    iput-object v11, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4955
    :cond_b
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v14

    .line 4956
    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "force-stop"

    const/4 v15, 0x1

    move-object v0, v6

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4959
    move v0, v10

    move-object v2, v12

    move-object v1, v14

    .line 4922
    :cond_c
    :goto_4
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 4917
    :cond_d
    add-int/lit8 v13, v13, -0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 4961
    :cond_e
    return v0
.end method

.method final finishSubActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 10

    .line 3556
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 3557
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3558
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 3559
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3560
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_2

    iget v3, v5, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v3, p3, :cond_2

    .line 3561
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v3, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 3562
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3563
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "request-sub"

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3558
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3556
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3569
    :cond_4
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3570
    return-void
.end method

.method final finishTopCrashedActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;
    .locals 8

    .line 3581
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 3582
    nop

    .line 3583
    if-eqz v1, :cond_6

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 3586
    :cond_0
    const-string p1, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force finishing activity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3587
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3586
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3588
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p1

    .line 3589
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 3590
    nop

    .line 3591
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 3592
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3594
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3595
    nop

    .line 3599
    add-int/lit8 v7, v7, -0x1

    .line 3600
    if-gez v7, :cond_3

    .line 3602
    :cond_1
    add-int/lit8 v6, v6, -0x1

    .line 3603
    if-gez v6, :cond_2

    .line 3604
    goto :goto_0

    .line 3606
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 3607
    if-ltz v7, :cond_1

    .line 3609
    :cond_3
    :goto_0
    if-ltz v7, :cond_5

    .line 3610
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3611
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3612
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v1, :cond_5

    .line 3613
    :cond_4
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Force finishing activity "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3614
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3613
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3619
    :cond_5
    return-object p1

    .line 3584
    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 12

    .line 3623
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 3624
    nop

    .line 3625
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_4

    .line 3626
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3627
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v4}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 3628
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_3

    .line 3629
    iget-object v5, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 3630
    iget-boolean v5, v7, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    .line 3631
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "finish-voice"

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3633
    nop

    .line 3628
    move v2, v1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 3638
    :cond_1
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_2
    if-ltz v4, :cond_3

    .line 3639
    iget-object v5, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3640
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 3641
    invoke-interface {v6}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, p1, :cond_2

    .line 3643
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->clearVoiceSessionLocked()V

    .line 3645
    :try_start_0
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3649
    goto :goto_3

    .line 3647
    :catch_0
    move-exception v3

    .line 3650
    :goto_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->finishRunningVoiceLocked()V

    .line 3651
    goto :goto_4

    .line 3638
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 3625
    :cond_3
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3657
    :cond_4
    if-eqz v2, :cond_5

    .line 3658
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3660
    :cond_5
    return-void
.end method

.method getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I
    .locals 2

    .line 2829
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2830
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p3, :cond_2

    .line 2831
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->okToShowLocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2833
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 2837
    :cond_2
    :goto_0
    if-lez v0, :cond_4

    .line 2838
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 p3, v0, -0x1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/TaskRecord;

    .line 2839
    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 2840
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_3

    .line 2841
    goto :goto_1

    .line 2843
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 2844
    goto :goto_0

    .line 2846
    :cond_4
    :goto_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 838
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 839
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 840
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V

    .line 839
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 842
    :cond_0
    return-void
.end method

.method getAllTasks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .line 5228
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getBoundsForNewConfiguration(Landroid/graphics/Rect;)V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackWindowController;->getBoundsForNewConfiguration(Landroid/graphics/Rect;)V

    .line 764
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ConfigurationContainer;

    return-object p1
.end method

.method protected getChildCount()I
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getDisplay()Lcom/android/server/am/ActivityDisplay;
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 5081
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5083
    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5084
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_5

    .line 5085
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5084
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 5087
    :cond_0
    const-string/jumbo v1, "top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5088
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 5089
    if-ltz p1, :cond_1

    .line 5090
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/TaskRecord;

    iget-object p1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5091
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5092
    if-ltz v1, :cond_1

    .line 5093
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5096
    :cond_1
    goto :goto_3

    .line 5097
    :cond_2
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 5098
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 5100
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_5

    .line 5101
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5102
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5103
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5105
    :cond_3
    goto :goto_2

    .line 5100
    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 5109
    :cond_5
    :goto_3
    return-object v0
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method getPresentUIDs(Landroid/util/IntArray;)V
    .locals 3

    .line 981
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 982
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 983
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->add(I)V

    .line 984
    goto :goto_1

    .line 985
    :cond_0
    goto :goto_0

    .line 986
    :cond_1
    return-void
.end method

.method protected getResumedActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .line 2327
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method getRunningTasks(Ljava/util/List;IIIZ)V
    .locals 7
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/TaskRecord;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 4971
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p0, :cond_0

    .line 4972
    move v0, v2

    goto :goto_0

    .line 4971
    :cond_0
    nop

    .line 4972
    move v0, v1

    .line 4973
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_6

    .line 4974
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 4975
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_1

    .line 4977
    goto :goto_2

    .line 4979
    :cond_1
    if-nez p5, :cond_2

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, v4, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-eq v5, p4, :cond_2

    .line 4981
    goto :goto_2

    .line 4983
    :cond_2
    if-eqz p2, :cond_3

    .line 4984
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 4986
    goto :goto_2

    .line 4988
    :cond_3
    if-eqz p3, :cond_4

    .line 4989
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v5

    if-ne v5, p3, :cond_4

    .line 4991
    goto :goto_2

    .line 4993
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 4997
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 4998
    nop

    .line 5000
    move v2, v1

    :cond_5
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4973
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 5002
    :cond_6
    return-void
.end method

.method getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/StackWindowController;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 748
    return-void
.end method

.method public getStackId()I
    .locals 1

    .line 5338
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    return v0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .locals 2

    .line 910
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 911
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 912
    if-eqz v1, :cond_0

    .line 913
    return-object v1

    .line 910
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 916
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .line 2024
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method getWindowContainerBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackWindowController;->getBounds(Landroid/graphics/Rect;)V

    .line 757
    return-void

    .line 759
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 760
    return-void
.end method

.method getWindowContainerController()Lcom/android/server/wm/StackWindowController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    return-object v0
.end method

.method goToSleep()V
    .locals 9

    .line 1364
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1369
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 1370
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1371
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_1

    .line 1372
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1373
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1374
    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1371
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1369
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1378
    :cond_2
    return-void
.end method

.method goToSleepIfPossible(Z)Z
    .locals 3

    .line 1321
    nop

    .line 1323
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1329
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0, v2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    .line 1330
    nop

    .line 1337
    :goto_0
    move v1, v2

    goto :goto_1

    .line 1331
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    .line 1334
    goto :goto_0

    .line 1337
    :cond_1
    :goto_1
    if-nez p1, :cond_3

    .line 1338
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1343
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 1344
    nop

    .line 1347
    move v1, v2

    :cond_2
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1351
    nop

    .line 1355
    move v1, v2

    :cond_3
    if-eqz v1, :cond_4

    .line 1356
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 1359
    :cond_4
    return v1
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 7

    .line 5037
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 5038
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5039
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 5040
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5041
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_0

    .line 5042
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Force finishing activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5043
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5042
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5045
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5046
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x1a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5048
    const-string v4, "handleAppCrashedLocked"

    invoke-virtual {p0, v3, v6, v6, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    .line 5039
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5037
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5053
    :cond_2
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    .line 5023
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_0

    .line 5026
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 5028
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_1

    .line 5029
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5030
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 5033
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result p1

    return p1
.end method

.method inFrontOfStandardStack()Z
    .locals 3

    .line 3924
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 3925
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3926
    return v1

    .line 3928
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v2

    .line 3929
    if-nez v2, :cond_1

    .line 3930
    return v1

    .line 3932
    :cond_1
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3933
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandard()Z

    move-result v0

    return v0
.end method

.method final isAttached()Z
    .locals 1

    .line 1091
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCompatible(II)Z
    .locals 2

    .line 665
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 668
    nop

    .line 670
    move p2, v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    .line 671
    if-eqz v1, :cond_1

    if-ne p2, v0, :cond_1

    if-nez p1, :cond_1

    .line 675
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getWindowingMode()I

    move-result p1

    .line 677
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->isCompatible(II)Z

    move-result p1

    return p1
.end method

.method isFocusable()Z
    .locals 2

    .line 1086
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1087
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z

    move-result v0

    return v0
.end method

.method final isHomeOrRecentsStack()Z
    .locals 1

    .line 1001
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 0

    .line 945
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 946
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    return-object p1
.end method

.method isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4

    .line 950
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 951
    return-object v0

    .line 953
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 954
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 955
    if-eqz v2, :cond_2

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 956
    if-eq v2, p0, :cond_1

    const-string v0, "ActivityManager"

    const-string v1, "Illegal state! task does not point to stack it is in."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_1
    return-object p1

    .line 960
    :cond_2
    return-object v0
.end method

.method isInStackLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final isOnHomeDisplay()Z
    .locals 1

    .line 1005
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1697
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mForceHidden:Z

    if-eqz v0, :cond_0

    goto :goto_4

    .line 1700
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_6

    .line 1701
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1702
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1703
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_5

    .line 1704
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1706
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1

    .line 1709
    goto :goto_2

    .line 1712
    :cond_1
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v5, :cond_2

    if-eq v4, p1, :cond_2

    .line 1715
    goto :goto_2

    .line 1718
    :cond_2
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v5, :cond_4

    iget-boolean v4, v4, Lcom/android/server/am/ActivityRecord;->hasWallpaper:Z

    if-eqz v4, :cond_3

    goto :goto_3

    .line 1703
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1721
    :cond_4
    :goto_3
    const/4 p1, 0x0

    return p1

    .line 1700
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1725
    :cond_6
    return v1

    .line 1698
    :cond_7
    :goto_4
    return v1
.end method

.method isTopActivityVisible()Z
    .locals 1

    .line 1733
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1734
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTopStackOnDisplay()Z
    .locals 1

    .line 1729
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->isTopStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    return v0
.end method

.method isUidPresent(I)Z
    .locals 3

    .line 969
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 970
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 971
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 972
    const/4 p1, 0x1

    return p1

    .line 974
    :cond_0
    goto :goto_1

    .line 975
    :cond_1
    goto :goto_0

    .line 976
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2

    .line 1259
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "minimalResumeActivityLocked"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1260
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->completeResumeLocked()V

    .line 1263
    return-void
.end method

.method moveHomeStackTaskToTop()V
    .locals 4

    .line 4578
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4582
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 4583
    if-ltz v0, :cond_0

    .line 4584
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 4587
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4588
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4589
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 4591
    :cond_0
    return-void

    .line 4579
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling moveHomeStackTaskToTop() on non-home stack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final moveTaskToBackLocked(I)Z
    .locals 5

    .line 4684
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 4685
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4686
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTaskToBack: bad taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    return v1

    .line 4689
    :cond_0
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToBack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4693
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/LockTaskController;->canMoveTaskToBack(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4694
    return v1

    .line 4700
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isTopStackOnDisplay()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v2, :cond_3

    .line 4701
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 4702
    if-nez p1, :cond_2

    .line 4703
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 4705
    :cond_2
    if-eqz p1, :cond_3

    .line 4707
    nop

    .line 4709
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v4, p1}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4713
    goto :goto_0

    .line 4710
    :catch_0
    move-exception p1

    .line 4711
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 4712
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 4714
    move p1, v3

    :goto_0
    if-nez p1, :cond_3

    .line 4715
    return v1

    .line 4722
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4723
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4724
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 4726
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4727
    const-string p1, "moveTaskToBackLocked"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->moveToBack(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 4729
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4730
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeStack(Lcom/android/server/am/ActivityStack;)V

    .line 4731
    return v3

    .line 4734
    :cond_4
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4735
    return v3
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .locals 6

    .line 4597
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4598
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_0

    .line 4599
    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4600
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 4601
    const/16 v4, 0xa

    if-eqz v2, :cond_9

    if-gez v3, :cond_1

    goto/16 :goto_4

    .line 4611
    :cond_1
    const/4 v2, 0x1

    if-eqz p4, :cond_2

    .line 4613
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_2

    .line 4614
    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    iput-object p4, v5, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 4613
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 4622
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/am/ActivityDisplay;->deferUpdateImeTarget()V

    .line 4626
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 4629
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p4

    .line 4630
    if-eqz p4, :cond_7

    invoke-virtual {p4}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    .line 4639
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object p4

    .line 4640
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p4, p5}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 4643
    const/4 p5, 0x0

    if-eqz p2, :cond_5

    .line 4644
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2, p5, p5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4645
    if-eqz p4, :cond_4

    .line 4646
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4648
    :cond_4
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_2

    .line 4650
    :cond_5
    invoke-direct {p0, v4, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 4658
    :goto_2
    invoke-direct {p0, v0, p1, v1, p3}, Lcom/android/server/am/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 4660
    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 4663
    :cond_6
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4664
    const/16 p2, 0x7532

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    iget p4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, p5

    iget p4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-static {p2, p3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4666
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget p1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p2, p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskMovedToFront(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4668
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityDisplay;->continueUpdateImeTarget()V

    .line 4669
    nop

    .line 4670
    return-void

    .line 4631
    :cond_7
    :goto_3
    if-eqz p4, :cond_8

    .line 4632
    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {p4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 4634
    :cond_8
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4668
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityDisplay;->continueUpdateImeTarget()V

    .line 4635
    return-void

    .line 4668
    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/ActivityDisplay;->continueUpdateImeTarget()V

    throw p1

    .line 4603
    :cond_9
    :goto_4
    if-eqz p2, :cond_a

    .line 4604
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_5

    .line 4606
    :cond_a
    invoke-direct {p0, v4, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 4608
    :goto_5
    return-void
.end method

.method moveToBack(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .locals 2

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1066
    return-void

    .line 1073
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1074
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 1077
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/am/ActivityStack;)V

    .line 1078
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V

    .line 1079
    if-eqz p2, :cond_2

    .line 1080
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityStack;->insertTaskAtBottom(Lcom/android/server/am/TaskRecord;)V

    .line 1081
    return-void

    .line 1083
    :cond_2
    return-void
.end method

.method moveToFront(Ljava/lang/String;)V
    .locals 1

    .line 1015
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 1016
    return-void
.end method

.method moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .locals 4

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    return-void

    .line 1027
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1035
    const/4 v1, 0x1

    .line 1036
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1037
    if-eqz v1, :cond_1

    .line 1038
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1039
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v1

    .line 1040
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v3

    if-le v1, v3, :cond_1

    .line 1041
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " splitScreenToTop"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1046
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->returnsToHomeStack()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1049
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returnToHome"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1052
    :cond_2
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->positionChildAtTop(Lcom/android/server/am/ActivityStack;)V

    .line 1053
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V

    .line 1054
    if-eqz p2, :cond_3

    .line 1055
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 1056
    return-void

    .line 1058
    :cond_3
    return-void
.end method

.method moveToFrontAndResumeStateIfNeeded(Lcom/android/server/am/ActivityRecord;ZZZLjava/lang/String;)V
    .locals 0

    .line 5316
    if-nez p2, :cond_0

    .line 5317
    return-void

    .line 5323
    :cond_0
    if-eqz p3, :cond_1

    .line 5324
    sget-object p2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string p3, "moveToFrontAndResumeStateIfNeeded"

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5325
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5328
    :cond_1
    if-eqz p4, :cond_2

    .line 5329
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 5330
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->schedulePauseTimeout(Lcom/android/server/am/ActivityRecord;)V

    .line 5334
    :cond_2
    invoke-virtual {p0, p5}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 5335
    return-void
.end method

.method final navigateUpToLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 3971
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3972
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3973
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3974
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_a

    if-gez v1, :cond_0

    goto/16 :goto_9

    .line 3977
    :cond_0
    add-int/lit8 v0, v1, -0x1

    .line 3978
    const/4 v12, 0x0

    if-gez v0, :cond_1

    .line 3979
    move-object v2, v12

    goto :goto_0

    .line 3978
    :cond_1
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3979
    :goto_0
    nop

    .line 3980
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 3981
    const/4 v13, 0x1

    if-lez v1, :cond_3

    if-eqz v3, :cond_3

    .line 3982
    move v4, v0

    :goto_1
    if-ltz v4, :cond_3

    .line 3983
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3984
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3985
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3986
    nop

    .line 3987
    nop

    .line 3988
    nop

    .line 3989
    nop

    .line 3994
    move v15, v4

    move-object v14, v5

    move/from16 v16, v13

    goto :goto_2

    .line 3982
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 3994
    :cond_3
    move v15, v0

    move-object v14, v2

    move/from16 v16, v11

    :goto_2
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 3995
    if-eqz v0, :cond_4

    .line 3996
    iget-object v2, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v7, v2, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3997
    if-eqz v2, :cond_4

    .line 3999
    nop

    .line 4001
    :try_start_0
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4005
    goto :goto_3

    .line 4002
    :catch_0
    move-exception v0

    .line 4003
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v12, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 4004
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 4007
    move v0, v13

    :goto_3
    if-nez v0, :cond_4

    .line 4008
    return v11

    .line 4012
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 4013
    move/from16 v3, p3

    move-object/from16 v4, p4

    move v0, v1

    :goto_4
    if-le v0, v15, :cond_5

    .line 4014
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4015
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v17, "navigate-up"

    const/16 v18, 0x1

    move-object v1, v7

    move-wide v11, v5

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4017
    nop

    .line 4018
    nop

    .line 4013
    add-int/lit8 v0, v0, -0x1

    move-wide v5, v11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_4

    .line 4021
    :cond_5
    move-wide v11, v5

    if-eqz v14, :cond_9

    if-eqz v16, :cond_9

    .line 4022
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4023
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 4024
    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    if-eq v0, v13, :cond_8

    const/high16 v0, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    goto :goto_7

    .line 4032
    :cond_6
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4033
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x400

    iget v5, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 4032
    invoke-interface {v0, v1, v2, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 4036
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v1

    const-string v2, "navigateUpTo"

    .line 4037
    invoke-virtual {v1, v9, v2}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    iget-object v2, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 4038
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 4039
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iget-object v1, v14, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 4040
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 4041
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iget v2, v14, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 4042
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iget-object v2, v14, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 4043
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 4044
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iget v1, v14, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 4045
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 4046
    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 4047
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4048
    if-nez v0, :cond_7

    goto :goto_5

    .line 4051
    :cond_7
    const/4 v13, 0x0

    .line 4052
    :goto_5
    move/from16 v16, v13

    goto :goto_6

    .line 4049
    :catch_1
    move-exception v0

    .line 4050
    nop

    .line 4052
    const/16 v16, 0x0

    :goto_6
    iget-object v2, v14, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v5, "navigate-top"

    const/4 v6, 0x1

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_8

    .line 4028
    :cond_8
    :goto_7
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v0, v9, v1}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4056
    :cond_9
    :goto_8
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4057
    return v16

    .line 3975
    :cond_a
    :goto_9
    const/4 v1, 0x0

    return v1
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4

    .line 2219
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2220
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2221
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2224
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2225
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2226
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2227
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2229
    if-eqz v0, :cond_2

    .line 2230
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    .line 2231
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_2

    .line 2233
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    invoke-interface {v1, v0, v3}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2236
    goto :goto_0

    .line 2235
    :catch_0
    move-exception p1

    .line 2240
    :cond_2
    :goto_0
    return-void
.end method

.method numActivities()I
    .locals 3

    .line 450
    nop

    .line 451
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    .line 452
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 451
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 454
    :cond_0
    return v1
.end method

.method onActivityAddedToStack(Lcom/android/server/am/ActivityRecord;)V
    .locals 2

    .line 4076
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_0

    .line 4077
    const-string v0, "onActivityAddedToStack"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4079
    :cond_0
    return-void
.end method

.method onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V
    .locals 2

    .line 4065
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4067
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_0

    .line 4068
    const-string v0, "onActivityRemovedFromStack"

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ActivityStack;->setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4070
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_1

    .line 4071
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 4073
    :cond_1
    return-void
.end method

.method onActivityStateChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p2, v0, :cond_0

    .line 495
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - onActivityStateChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 498
    :cond_0
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p2, v0, :cond_1

    .line 501
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - onActivityStateChanged"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 502
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/am/ActivityManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 503
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 505
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 509
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 510
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 511
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p1

    .line 512
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 513
    invoke-virtual {p1, p0}, Lcom/android/server/am/ActivityDisplay;->onStackWindowingModeChanged(Lcom/android/server/am/ActivityStack;)V

    .line 515
    :cond_0
    return-void
.end method

.method onLockTaskPackagesUpdated()V
    .locals 2

    .line 5353
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 5354
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    .line 5353
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5356
    :cond_0
    return-void
.end method

.method protected onParentChanged()V
    .locals 1

    .line 242
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged()V

    .line 243
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateUIDsPresentOnDisplay()V

    .line 244
    return-void
.end method

.method onPipAnimationEndResize()V
    .locals 1

    .line 4835
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/StackWindowController;->onPipAnimationEndResize()V

    .line 4836
    return-void
.end method

.method positionChildAt(Lcom/android/server/am/TaskRecord;I)V
    .locals 4

    .line 5260
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 5265
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationForStack(Lcom/android/server/am/ActivityStack;)V

    .line 5267
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5268
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 5269
    move v1, v2

    goto :goto_0

    .line 5268
    :cond_0
    nop

    .line 5269
    move v1, v3

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->insertTaskAtPosition(Lcom/android/server/am/TaskRecord;I)V

    .line 5270
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setStack(Lcom/android/server/am/ActivityStack;)V

    .line 5271
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/am/ActivityStack;->postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V

    .line 5273
    if-eqz v1, :cond_2

    .line 5274
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz p1, :cond_1

    .line 5275
    const-string p1, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mResumedActivity was already set when moving mResumedActivity from other stack to this stack mResumedActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " other mResumedActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5279
    :cond_1
    sget-object p1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v1, "positionChildAt"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5284
    :cond_2
    invoke-virtual {p0, p2, v3, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 5285
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 5286
    return-void

    .line 5261
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AS.positionChildAt: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a child of stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " current parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5262
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V
    .locals 2

    .line 767
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 769
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/StackWindowController;->prepareFreezingTaskBounds()V

    .line 752
    return-void
.end method

.method final rankTaskLayers(I)I
    .locals 5

    .line 1831
    nop

    .line 1832
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 1833
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1834
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1835
    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_1

    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v3, :cond_0

    goto :goto_1

    .line 1838
    :cond_0
    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, p1

    iput v1, v2, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 1832
    move v1, v3

    goto :goto_2

    .line 1836
    :cond_1
    :goto_1
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 1832
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1841
    :cond_2
    return v1
.end method

.method final releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 4260
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 4261
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 4262
    nop

    .line 4264
    move v0, v1

    .line 4265
    :cond_0
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    move v4, v0

    :goto_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    if-lez v3, :cond_6

    .line 4266
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 4267
    invoke-virtual {p2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4268
    goto :goto_2

    .line 4271
    :cond_1
    nop

    .line 4272
    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4273
    move v7, v2

    move v8, v7

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_4

    .line 4274
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 4275
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, p1, :cond_3

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4279
    invoke-virtual {p0, v9, v1, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 4280
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eq v10, v9, :cond_2

    .line 4282
    add-int/lit8 v7, v7, -0x1

    .line 4284
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 4273
    :cond_3
    add-int/2addr v7, v1

    goto :goto_1

    .line 4287
    :cond_4
    if-lez v8, :cond_5

    .line 4288
    add-int/2addr v4, v8

    .line 4289
    add-int/lit8 v3, v3, -0x1

    .line 4290
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_5

    .line 4292
    add-int/lit8 v0, v0, -0x1

    .line 4265
    :cond_5
    :goto_2
    add-int/2addr v0, v1

    goto :goto_0

    .line 4298
    :cond_6
    return v4
.end method

.method remove()V
    .locals 1

    .line 731
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->removeFromDisplay()V

    .line 732
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/StackWindowController;->removeContainer()V

    .line 733
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    .line 734
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->onParentChanged()V

    .line 735
    return-void
.end method

.method final removeActivitiesFromLRUListLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 2

    .line 989
    iget-object p1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 990
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 991
    goto :goto_0

    .line 992
    :cond_0
    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V
    .locals 6

    .line 5142
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5143
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    .line 5144
    goto :goto_0

    .line 5146
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 5148
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 5149
    const/16 v0, 0x756d

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5152
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivitiesFromLRUListLocked(Lcom/android/server/am/TaskRecord;)V

    .line 5153
    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 5155
    if-nez p3, :cond_6

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5157
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_2

    .line 5158
    move v1, v3

    goto :goto_1

    .line 5157
    :cond_2
    nop

    .line 5158
    :goto_1
    if-eqz v1, :cond_3

    .line 5160
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v3, v4}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5162
    goto :goto_2

    .line 5161
    :catch_0
    move-exception v0

    .line 5164
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->autoRemoveFromRecents()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    .line 5167
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v0, p1}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 5170
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removeWindowContainer()V

    .line 5173
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5177
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eq p3, v2, :cond_8

    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 5178
    invoke-virtual {p3, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 5179
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " leftTaskHistoryEmpty"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5180
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 5181
    :cond_7
    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p3, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5184
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 5185
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/server/am/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/am/ActivityStack;)V

    .line 5187
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result p2

    if-nez p2, :cond_a

    .line 5188
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->remove()V

    .line 5192
    :cond_a
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/am/TaskRecord;->setStack(Lcom/android/server/am/ActivityStack;)V

    .line 5195
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 5196
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityUnpinned()V

    .line 5198
    :cond_b
    return-void
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2

    .line 4130
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4131
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4132
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4133
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4134
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 4135
    return-void
.end method

.method reparent(Lcom/android/server/am/ActivityDisplay;Z)V
    .locals 3

    .line 684
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->removeFromDisplay()V

    .line 687
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 688
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    iget v1, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/wm/StackWindowController;->reparent(ILandroid/graphics/Rect;Z)V

    .line 689
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->postAddToDisplay(Lcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;Z)V

    .line 690
    const-string/jumbo p1, "reparent"

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Z

    .line 691
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 694
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2, p2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 696
    return-void
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 6

    .line 3542
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 3547
    if-nez v1, :cond_0

    .line 3548
    const/4 p1, 0x0

    return p1

    .line 3551
    :cond_0
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3552
    const/4 p1, 0x1

    return p1
.end method

.method public requestResize(Landroid/graphics/Rect;)V
    .locals 7

    .line 4788
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 4790
    return-void
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 11

    .line 3321
    iget-object p2, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p2, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 p2, p2, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 3323
    move p2, v1

    goto :goto_0

    .line 3321
    :cond_0
    nop

    .line 3323
    move p2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 3327
    nop

    .line 3330
    const/4 v2, 0x0

    .line 3333
    nop

    .line 3335
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, -0x1

    move v9, v0

    move-object v10, v2

    move v0, v3

    move v7, v4

    :goto_1
    if-ltz v0, :cond_2

    .line 3336
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3338
    if-ne v3, v8, :cond_1

    .line 3339
    invoke-direct {p0, v8, p2}, Lcom/android/server/am/ActivityStack;->resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 3340
    nop

    .line 3335
    move v9, v1

    move-object v10, v2

    goto :goto_2

    .line 3342
    :cond_1
    move-object v2, p0

    move-object v4, v8

    move v5, v9

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I

    move-result v7

    .line 3335
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3347
    :cond_2
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 3348
    if-ltz p2, :cond_4

    .line 3350
    :goto_3
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 3351
    if-nez p1, :cond_4

    if-gez v0, :cond_3

    goto :goto_4

    .line 3350
    :cond_3
    move p2, v0

    goto :goto_3

    .line 3354
    :cond_4
    :goto_4
    if-eqz v10, :cond_6

    .line 3357
    if-eqz p1, :cond_5

    .line 3358
    invoke-virtual {p1, v10}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_5

    .line 3360
    :cond_5
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->abort()V

    .line 3364
    :cond_6
    :goto_5
    return-object p1
.end method

.method resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    .line 4795
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->updateBoundsAllowed(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4796
    return-void

    .line 4800
    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    .line 4801
    :cond_1
    move-object p2, p1

    :goto_0
    if-eqz p3, :cond_2

    .line 4803
    move-object v0, p3

    goto :goto_1

    :cond_2
    move-object v0, p2

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 4804
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 4806
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4807
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_6

    .line 4808
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 4809
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4810
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4815
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4816
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v4, p1}, Lcom/android/server/am/ActivityStack;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4817
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    goto :goto_3

    .line 4819
    :cond_3
    invoke-virtual {v3, p2, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 4823
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4824
    if-eqz p3, :cond_5

    .line 4825
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v3, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4807
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 4829
    :cond_6
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    iget-object p3, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, p3, v0}, Lcom/android/server/wm/StackWindowController;->resize(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 4830
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 4831
    monitor-exit v1

    .line 4832
    return-void

    .line 4831
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method resizeStackWithLaunchBounds()Z
    .locals 1

    .line 2001
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    return v0
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 8

    .line 5113
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5117
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 5118
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5119
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_1
    if-ltz v4, :cond_1

    .line 5120
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 5121
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5122
    iput-boolean v2, v5, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 5123
    if-eqz v0, :cond_0

    if-ne v5, v0, :cond_0

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v6, :cond_0

    .line 5124
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v7, 0x100

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 5119
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 5117
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5131
    :cond_2
    return-object v0
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .line 2294
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2296
    return v1

    .line 2299
    :cond_0
    nop

    .line 2302
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    .line 2303
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p1

    .line 2312
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object p2

    .line 2313
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->canTurnScreenOn()Z

    move-result p2

    if-nez p2, :cond_2

    .line 2314
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2317
    :cond_2
    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, p2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    .line 2318
    nop

    .line 2320
    return p1

    .line 2317
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, p2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    throw p1
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 1

    .line 4247
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4251
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result p1

    return p1

    .line 4253
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 2

    .line 4206
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4207
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4208
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4209
    return-void
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 8

    .line 3370
    if-lez p1, :cond_0

    .line 3371
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3372
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3371
    move v1, p1

    move-object v3, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 3378
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, p2, :cond_1

    iget-object p1, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz p1, :cond_1

    .line 3380
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3381
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3383
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 3384
    invoke-static {p1}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object p1

    .line 3383
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3385
    return-void

    .line 3386
    :catch_0
    move-exception p1

    .line 3387
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3391
    :cond_1
    const/4 v3, 0x0

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3392
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .locals 1

    .line 830
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method public setWindowingMode(I)V
    .locals 6

    .line 519
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V

    .line 521
    return-void
.end method

.method setWindowingMode(IZZZZ)V
    .locals 23

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 525
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 526
    move v3, v5

    goto :goto_0

    .line 525
    :cond_0
    nop

    .line 526
    const/4 v3, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v6

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v7

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 529
    invoke-virtual {v7}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 530
    iget-object v10, v1, Lcom/android/server/am/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v10, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 534
    const/4 v10, 0x0

    if-eqz v3, :cond_1

    .line 535
    nop

    .line 538
    move v11, v0

    goto :goto_1

    .line 536
    :cond_1
    iget-object v11, v1, Lcom/android/server/am/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v12

    .line 536
    invoke-virtual {v7, v10, v11, v8, v12}, Lcom/android/server/am/ActivityDisplay;->resolveWindowingMode(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;I)I

    move-result v11

    .line 538
    :goto_1
    const/4 v12, 0x4

    if-ne v9, v1, :cond_2

    if-ne v11, v12, :cond_2

    .line 541
    nop

    .line 544
    move v11, v5

    :cond_2
    invoke-virtual {v7}, Lcom/android/server/am/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v13

    .line 548
    nop

    .line 550
    xor-int/lit8 v14, p4, 0x1

    const/4 v15, 0x3

    if-eqz v13, :cond_6

    if-ne v11, v5, :cond_6

    if-eqz v14, :cond_6

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 552
    if-eq v0, v15, :cond_4

    if-ne v0, v12, :cond_3

    goto :goto_2

    .line 555
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 552
    :cond_4
    :goto_2
    nop

    .line 555
    move v0, v5

    :goto_3
    if-nez v0, :cond_5

    if-eqz v3, :cond_6

    .line 559
    :cond_5
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 560
    invoke-virtual {v7}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V

    .line 566
    :cond_6
    if-ne v6, v11, :cond_7

    .line 568
    return-void

    .line 571
    :cond_7
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 574
    if-eqz v14, :cond_8

    if-eq v11, v5, :cond_8

    if-eqz v0, :cond_8

    .line 575
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isNonResizableOrForcedResizable()Z

    move-result v14

    if-eqz v14, :cond_8

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v14, :cond_8

    .line 579
    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 580
    iget-object v10, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v12, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v12, v5, v14}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 584
    :cond_8
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 586
    if-nez p2, :cond_9

    if-eqz v0, :cond_9

    .line 587
    :try_start_0
    iget-object v10, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_9
    invoke-super {v1, v11}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    if-eqz v3, :cond_b

    .line 631
    if-eqz p3, :cond_a

    if-nez v13, :cond_a

    iget v0, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_a

    if-ne v11, v15, :cond_a

    .line 646
    const/4 v2, 0x4

    invoke-virtual {v7, v2, v15, v5}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 649
    const-string/jumbo v2, "setWindowingMode"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 651
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 653
    :cond_a
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 593
    return-void

    .line 596
    :cond_b
    const/4 v0, 0x2

    if-eq v11, v0, :cond_12

    if-eq v6, v0, :cond_12

    .line 604
    if-ne v11, v15, :cond_d

    if-nez v9, :cond_c

    goto :goto_4

    .line 608
    :cond_c
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Setting primary split-screen windowing mode while there is already one isn\'t currently supported"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_d
    :goto_4
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 614
    if-eq v11, v5, :cond_e

    .line 615
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/StackWindowController;->getRawBounds(Landroid/graphics/Rect;)V

    .line 616
    const/4 v0, 0x5

    if-ne v11, v0, :cond_e

    .line 617
    if-eqz v8, :cond_e

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_e

    .line 621
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 627
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 628
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    :cond_f
    if-eqz p3, :cond_10

    if-nez v13, :cond_10

    iget v0, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_10

    if-ne v11, v15, :cond_10

    .line 646
    const/4 v2, 0x4

    invoke-virtual {v7, v2, v15, v5}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 649
    const-string/jumbo v2, "setWindowingMode"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 651
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 653
    :cond_10
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 654
    nop

    .line 656
    if-nez p5, :cond_11

    .line 657
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 658
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 660
    :cond_11
    return-void

    .line 600
    :cond_12
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Changing pinned windowing mode not currently supported"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 631
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_13

    if-nez v13, :cond_13

    iget v2, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v2, :cond_13

    if-ne v11, v15, :cond_13

    .line 646
    const/4 v2, 0x4

    invoke-virtual {v7, v2, v15, v5}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 649
    const-string/jumbo v3, "setWindowingMode"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 651
    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 653
    :cond_13
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z
    .locals 13

    .line 1743
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mForceHidden:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1746
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1747
    return v2

    .line 1750
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1751
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isTopStackOnDisplay()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1754
    return v1

    .line 1757
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 1758
    nop

    .line 1759
    nop

    .line 1760
    nop

    .line 1761
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 1762
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result v4

    .line 1763
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    move v6, v1

    move v7, v6

    move v8, v7

    :goto_0
    if-ltz v5, :cond_d

    .line 1764
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 1765
    if-ne v9, p0, :cond_3

    .line 1767
    return v2

    .line 1770
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v10

    .line 1772
    const/4 v11, 0x4

    const/4 v12, 0x3

    if-ne v10, v2, :cond_7

    .line 1779
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v10

    .line 1780
    if-ne v3, v12, :cond_5

    .line 1781
    const/4 v12, 0x2

    if-eq v10, v12, :cond_4

    if-ne v10, v11, :cond_5

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1783
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1784
    :cond_4
    return v2

    .line 1787
    :cond_5
    invoke-virtual {v9, p1}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1789
    goto :goto_2

    .line 1791
    :cond_6
    return v1

    .line 1792
    :cond_7
    if-ne v10, v12, :cond_9

    if-nez v6, :cond_9

    .line 1794
    nop

    .line 1795
    nop

    .line 1796
    invoke-virtual {v9, p1}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    .line 1797
    xor-int/2addr v6, v2

    if-ne v3, v12, :cond_8

    if-eqz v6, :cond_8

    .line 1800
    return v1

    .line 1813
    :cond_8
    move v8, v2

    goto :goto_1

    .line 1802
    :cond_9
    if-ne v10, v11, :cond_a

    if-nez v7, :cond_a

    .line 1804
    nop

    .line 1805
    nop

    .line 1806
    invoke-virtual {v9, p1}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v7

    .line 1807
    xor-int/2addr v7, v2

    if-ne v3, v11, :cond_8

    if-eqz v7, :cond_8

    .line 1810
    return v1

    .line 1813
    :cond_a
    :goto_1
    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    .line 1816
    return v1

    .line 1818
    :cond_b
    if-eqz v4, :cond_c

    if-eqz v8, :cond_c

    .line 1822
    return v1

    .line 1763
    :cond_c
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1827
    :cond_d
    return v2

    .line 1744
    :cond_e
    :goto_3
    return v1
.end method

.method shouldSleepActivities()Z
    .locals 2

    .line 5364
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 5368
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 5369
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->isKeyguardGoingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5370
    const/4 v0, 0x0

    return v0

    .line 5373
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->isSleeping()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    move-result v0

    :goto_0
    return v0
.end method

.method shouldSleepOrShutDownActivities()Z
    .locals 1

    .line 5377
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isShuttingDownLocked()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method shouldUpRecreateTaskLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 3

    .line 3939
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 3940
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3947
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p2

    .line 3948
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->isDocument()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3950
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inFrontOfStandardStack()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3952
    return v0

    .line 3955
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3956
    if-gtz v1, :cond_2

    .line 3957
    const-string p2, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3958
    return v2

    .line 3960
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/TaskRecord;

    .line 3961
    iget-object p2, p2, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3963
    return v0

    .line 3966
    :cond_3
    return v2

    .line 3941
    :cond_4
    :goto_0
    return v0
.end method

.method startActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V
    .locals 8

    .line 2891
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2892
    iget v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 2894
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_1

    .line 2898
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 2900
    :cond_1
    nop

    .line 2901
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_5

    .line 2903
    nop

    .line 2904
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    move-object v6, v1

    move v5, v3

    :goto_0
    if-ltz v4, :cond_6

    .line 2905
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 2906
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_2

    .line 2908
    goto :goto_1

    .line 2910
    :cond_2
    if-ne v6, v0, :cond_3

    .line 2914
    if-nez v5, :cond_6

    .line 2917
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->createWindowContainer()V

    .line 2918
    invoke-static {p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2919
    return-void

    .line 2922
    :cond_3
    iget v7, v6, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-lez v7, :cond_4

    .line 2923
    nop

    .line 2904
    move v5, v2

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2932
    :cond_5
    move-object v6, v1

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2933
    if-ne v6, v0, :cond_7

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-eq v4, v5, :cond_7

    .line 2934
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v2, v4, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2939
    :cond_7
    nop

    .line 2947
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v4

    if-nez v4, :cond_8

    .line 2948
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->createWindowContainer()V

    .line 2950
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 2952
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v0

    if-lez v0, :cond_9

    goto :goto_2

    .line 3021
    :cond_9
    invoke-static {p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto/16 :goto_a

    .line 2955
    :cond_a
    :goto_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v4, 0x10000

    and-int/2addr v0, v4

    if-eqz v0, :cond_b

    .line 2956
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2, p4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2957
    iget-object p4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p4, p4, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2959
    :cond_b
    const/4 v0, 0x6

    .line 2960
    if-eqz p3, :cond_e

    .line 2961
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_c

    .line 2962
    const/16 v0, 0x10

    goto :goto_3

    .line 2968
    :cond_c
    invoke-direct {p0, p2, v1, p1, p5}, Lcom/android/server/am/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2970
    iput-boolean v3, p2, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 2972
    :cond_d
    const/16 v0, 0x8

    .line 2975
    :cond_e
    :goto_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0, p4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2976
    iget-object p4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p4, p4, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2978
    :goto_4
    nop

    .line 2979
    if-eqz p3, :cond_10

    .line 2985
    iget-object p4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p4}, Landroid/content/Intent;->getFlags()I

    move-result p4

    const/high16 p5, 0x200000

    and-int/2addr p4, p5

    if-eqz p4, :cond_11

    .line 2986
    invoke-virtual {p0, p1, p1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 2987
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object p4

    if-ne p4, p1, :cond_f

    goto :goto_6

    :cond_f
    goto :goto_5

    .line 2989
    :cond_10
    if-eqz p5, :cond_11

    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result p4

    const/4 p5, 0x5

    if-ne p4, p5, :cond_11

    .line 2991
    nop

    .line 2993
    :goto_5
    move p4, v2

    goto :goto_7

    :cond_11
    :goto_6
    move p4, v3

    :goto_7
    iget-boolean p5, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz p5, :cond_12

    .line 2996
    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 2997
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_9

    .line 2998
    :cond_12
    if-eqz p4, :cond_15

    .line 3003
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p4

    .line 3004
    invoke-virtual {p4}, Lcom/android/server/am/TaskRecord;->topRunningActivityWithStartingWindowLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object p5

    .line 3005
    if-eqz p5, :cond_14

    .line 3008
    invoke-virtual {p5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eq v0, p4, :cond_13

    .line 3009
    goto :goto_8

    .line 3012
    :cond_13
    iget-boolean p4, p5, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz p4, :cond_14

    .line 3013
    goto :goto_8

    .line 3016
    :cond_14
    move-object v1, p5

    :goto_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->isTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result p2

    invoke-virtual {p1, v1, p3, p2}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3018
    :cond_15
    :goto_9
    nop

    .line 3023
    :goto_a
    return-void
.end method

.method final startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z
    .locals 8

    .line 1418
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1419
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1420
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1419
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1425
    invoke-direct {p0, v1, p3}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1430
    if-nez v0, :cond_2

    .line 1431
    if-nez p3, :cond_1

    .line 1432
    const-string p1, "ActivityManager"

    const-string p2, "Trying to pause when nothing is resumed"

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1435
    :cond_1
    return v1

    .line 1438
    :cond_2
    if-ne v0, p3, :cond_3

    .line 1439
    const-string p1, "ActivityManager"

    const-string p2, "Trying to pause activity that is in process of being resumed"

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    return v1

    .line 1445
    :cond_3
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1446
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1447
    nop

    .line 1448
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1447
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    goto :goto_0

    .line 1448
    :cond_4
    move-object v2, v3

    goto :goto_1

    :cond_5
    :goto_0
    move-object v2, v0

    :goto_1
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1449
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v4, "startPausingLocked"

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1451
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 1453
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityMetricsLogger;->stopFullyDrawnTraceIfNeeded()V

    .line 1455
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1457
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_6

    .line 1460
    :try_start_0
    iget v2, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "userLeaving="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lcom/android/server/am/EventLogTags;->writeAmPauseActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 1462
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1464
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 1465
    invoke-static {v6, p1, v7, p4}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object p1

    .line 1464
    invoke-virtual {v2, v4, v5, p1}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1467
    :catch_0
    move-exception p1

    .line 1469
    const-string v2, "ActivityManager"

    const-string v4, "Exception thrown during pause"

    invoke-static {v2, v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1470
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1471
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1472
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1473
    :goto_2
    goto :goto_3

    .line 1475
    :cond_6
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1476
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1477
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1482
    :goto_3
    if-nez p2, :cond_7

    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1483
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->acquireLaunchWakelock()V

    .line 1486
    :cond_7
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz p1, :cond_a

    .line 1491
    if-nez p2, :cond_8

    .line 1492
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 1497
    :cond_8
    if-eqz p4, :cond_9

    .line 1500
    invoke-direct {p0, v1, p3}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    .line 1501
    return v1

    .line 1504
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->schedulePauseTimeout(Lcom/android/server/am/ActivityRecord;)V

    .line 1505
    const/4 p1, 0x1

    return p1

    .line 1512
    :cond_a
    if-nez p3, :cond_b

    .line 1513
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1515
    :cond_b
    return v1
.end method

.method final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 8

    .line 3478
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->launching:Z

    .line 3479
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 3481
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v1, :cond_1

    .line 3482
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3484
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "stop-no-history"

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3488
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3489
    return-void

    .line 3498
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_4

    .line 3499
    const-string/jumbo v1, "stopActivity"

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityStack(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3500
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3502
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3505
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v3, "stopActivityLocked"

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3508
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_2

    .line 3509
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    .line 3511
    :cond_2
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3512
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 3511
    invoke-static {v0, v2, v3}, Lcom/android/server/am/EventLogTags;->writeAmStopActivity(IILjava/lang/String;)V

    .line 3513
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 3514
    invoke-static {v4, v5}, Landroid/app/servertransaction/StopActivityItem;->obtain(ZI)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v4

    .line 3513
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 3515
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3516
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 3518
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3519
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2af8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3532
    goto :goto_0

    .line 3520
    :catch_0
    move-exception v0

    .line 3524
    const-string v2, "ActivityManager"

    const-string v3, "Exception thrown during pause"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3526
    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3528
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v2, "stopActivityLocked"

    invoke-virtual {p1, v0, v2}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3529
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v0, :cond_4

    .line 3530
    const-string/jumbo v0, "stop-except"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 3534
    :cond_4
    :goto_0
    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .locals 2

    .line 2006
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2007
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 2008
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2007
    :goto_0
    return v0
.end method

.method final switchUserLocked(I)V
    .locals 3

    .line 1233
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 1234
    return-void

    .line 1236
    :cond_0
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 1239
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1240
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 1241
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 1243
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1246
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1247
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 1251
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1253
    :goto_1
    goto :goto_0

    .line 1254
    :cond_2
    return-void
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 3

    .line 935
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 936
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 937
    iget v2, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_0

    .line 938
    return-object v1

    .line 935
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 941
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 5343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityStack{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5344
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5345
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5346
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " translucent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5347
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 5349
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tasks}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5343
    return-object v0
.end method

.method topActivityOccludesKeyguard()Z
    .locals 1

    .line 1993
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    return v0
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .line 834
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .locals 5

    .line 892
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 893
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 894
    iget v2, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p2, :cond_0

    .line 895
    goto :goto_2

    .line 897
    :cond_0
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 898
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 899
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 901
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 902
    return-object v3

    .line 898
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 892
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 906
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 5

    .line 869
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 870
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 871
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 872
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 873
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 874
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v4, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 875
    return-object v3

    .line 872
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 869
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 879
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method topRunningNonOverlayTaskActivity()Lcom/android/server/am/ActivityRecord;
    .locals 5

    .line 855
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 856
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 857
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 858
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 859
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 860
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-nez v4, :cond_0

    .line 861
    return-object v3

    .line 858
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 855
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 865
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method final topTask()Lcom/android/server/am/TaskRecord;
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 921
    if-lez v0, :cond_0

    .line 922
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    return-object v0

    .line 924
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method unhandledBackLocked()V
    .locals 7

    .line 5005
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5007
    if-ltz v0, :cond_0

    .line 5008
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5009
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5010
    if-ltz v1, :cond_0

    .line 5011
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "unhandled-back"

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5015
    :cond_0
    return-void
.end method

.method updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 7

    .line 1288
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1289
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1291
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 1292
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1293
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_1

    .line 1294
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1296
    iget v6, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v1, v6, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1297
    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityRecord;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 1293
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1291
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1301
    :cond_2
    return-void
.end method

.method updateBoundsAllowed(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 806
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 807
    return v1

    .line 809
    :cond_0
    if-eqz p1, :cond_1

    .line 810
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 812
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 814
    :goto_0
    if-eqz p2, :cond_2

    .line 815
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 817
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 819
    :goto_1
    if-eqz p3, :cond_3

    .line 820
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 822
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 824
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    .line 825
    const/4 p1, 0x0

    return p1
.end method

.method final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 996
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    return v0
.end method

.method willActivityBeVisibleLocked(Landroid/os/IBinder;)Z
    .locals 7

    .line 4879
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_3

    .line 4880
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4881
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_2

    .line 4882
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 4883
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-ne v6, p1, :cond_0

    .line 4884
    return v1

    .line 4886
    :cond_0
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_1

    iget-boolean v5, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_1

    .line 4887
    return v2

    .line 4881
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4879
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4891
    :cond_3
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 4892
    if-nez p1, :cond_4

    .line 4893
    return v2

    .line 4895
    :cond_4
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4897
    :cond_5
    iget-boolean p1, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    xor-int/2addr p1, v1

    return p1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 4

    .line 5381
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 5382
    const-wide v0, 0x10b00000001L

    const/4 v2, 0x0

    invoke-super {p0, p1, v0, v1, v2}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 5383
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5384
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 5385
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 5386
    const-wide v2, 0x20b00000003L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/am/TaskRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5384
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5388
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    .line 5389
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5391
    :cond_1
    const-wide v0, 0x10500000005L

    iget v2, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5392
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5393
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5394
    const-wide v1, 0x10b00000007L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5398
    :cond_2
    const-wide v0, 0x10800000006L

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->matchParentBounds()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5399
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5400
    return-void
.end method
