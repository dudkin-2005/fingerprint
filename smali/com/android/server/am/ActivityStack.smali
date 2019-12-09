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

.field static final EVALUATE_GAME_MODE_MSG:I = 0x6d

.field static final EVALUATE_READ_MODE_MSG:I = 0x6c

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

.field static final UPDATE_SCREEN_SCREEN_EFFECT_DISABLED_MSG:I = 0x6e

.field private static final mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

.field static final mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;


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

.field protected mOnePlusActivityStack:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field public mPerf:Landroid/util/BoostFramework;

.field public mPerfWeibo:Landroid/util/BoostFramework;

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
.method static constructor <clinit>()V
    .registers 1

    .line 406
    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    .line 408
    new-instance v0, Lcom/android/server/am/ActivityPluginDelegate;

    invoke-direct {v0}, Lcom/android/server/am/ActivityPluginDelegate;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;IIZ)V
    .registers 10
    .param p1, "display"    # Lcom/android/server/am/ActivityDisplay;
    .param p2, "stackId"    # I
    .param p3, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p4, "windowingMode"    # I
    .param p5, "activityType"    # I
    .param p6, "onTop"    # Z

    .line 501
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    .line 292
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfWeibo:Landroid/util/BoostFramework;

    .line 298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 311
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 318
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 325
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 330
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 338
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 350
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mForceHidden:Z

    .line 354
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    .line 355
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    .line 356
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    .line 364
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    .line 365
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    .line 366
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 367
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    .line 502
    iput-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 503
    iget-object v1, p3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 504
    new-instance v1, Lcom/android/server/am/ActivityStack$ActivityStackHandler;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 505
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 506
    iput p2, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 507
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 508
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 511
    iget v1, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iput v1, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 512
    invoke-virtual {p0, p5}, Lcom/android/server/am/ActivityStack;->setActivityType(I)V

    .line 513
    invoke-virtual {p0, p4}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 514
    iget v1, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, p6, v2}, Lcom/android/server/am/ActivityStack;->createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/StackWindowController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    .line 516
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_aa

    goto :goto_ac

    :cond_aa
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    :goto_ac
    invoke-direct {p0, p1, v0, p6}, Lcom/android/server/am/ActivityStack;->postAddToDisplay(Lcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;Z)V

    .line 520
    new-instance v0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;

    invoke-direct {v0, p0, p3}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;

    .line 523
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/ActivityStack;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "x2"    # Ljava/lang/String;

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    return-void
.end method

.method private adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "allowFocusSelf"    # Z

    .line 3769
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3770
    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextFocusableStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3771
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adjustFocusToNextFocusableStack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3772
    .local v1, "myReason":Ljava/lang/String;
    if-nez v0, :cond_1d

    .line 3773
    const/4 v2, 0x0

    return v2

    .line 3776
    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3778
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_34

    if-eqz v2, :cond_2d

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v3, :cond_34

    .line 3781
    :cond_2d
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 3784
    :cond_34
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3785
    const/4 v3, 0x1

    return v3
.end method

.method private adjustFocusedActivityStack(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3723
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v0, p1, :cond_11

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_11

    goto :goto_67

    .line 3728
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3729
    .local v0, "next":Lcom/android/server/am/ActivityRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adjustFocus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3731
    .local v1, "myReason":Ljava/lang/String;
    if-ne v0, p1, :cond_34

    .line 3732
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3733
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 3732
    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 3734
    return-void

    .line 3737
    :cond_34
    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 3739
    return-void

    .line 3744
    :cond_3d
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 3746
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_50

    .line 3751
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 3752
    return-void

    .line 3756
    :cond_4a
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    .line 3757
    return-void

    .line 3747
    :cond_50
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activity no longer associated with task:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3725
    .end local v0    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "myReason":Ljava/lang/String;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_67
    :goto_67
    return-void
.end method

.method private bottomTask()Lcom/android/server/am/TaskRecord;
    .registers 3

    .line 993
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 994
    const/4 v0, 0x0

    return-object v0

    .line 996
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method private canShowWithInsecureKeyguard()Z
    .registers 5

    .line 2270
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 2271
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_14

    .line 2276
    iget-object v1, v0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    move-result v1

    .line 2277
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2

    .line 2272
    .end local v1    # "flags":I
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack is not attached to any display, stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkTranslucentActivityWaiting(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "top"    # Lcom/android/server/am/ActivityRecord;

    .line 2281
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eq v0, p1, :cond_1a

    .line 2282
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2283
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_13

    .line 2285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2286
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2288
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2290
    :cond_1a
    return-void
.end method

.method private cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "cleanServices"    # Z
    .param p3, "setState"    # Z

    .line 4483
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    .line 4485
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 4486
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 4488
    const/4 v1, 0x0

    if-eqz p3, :cond_4d

    .line 4489
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v2, :cond_2a

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to DESTROYED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (cleaning up)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4490
    :cond_2a
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v3, "cleanupActivityLocked"

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4491
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v2, :cond_4b

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing app during cleanUp for activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    :cond_4b
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4496
    :cond_4d
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->cleanupActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 4500
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_7c

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v2, :cond_7c

    .line 4501
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 4502
    .local v3, "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    .line 4503
    .local v4, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz v4, :cond_79

    .line 4504
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 4506
    .end local v3    # "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v4    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_79
    goto :goto_60

    .line 4507
    :cond_7a
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4510
    :cond_7c
    if-eqz p2, :cond_81

    .line 4511
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4515
    :cond_81
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4518
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchesCleared(Landroid/os/IBinder;)V

    .line 4519
    return-void
.end method

.method private cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4587
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v0, :cond_21

    .line 4588
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4589
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 4590
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 4591
    .local v1, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 4592
    .end local v1    # "c":Lcom/android/server/am/ConnectionRecord;
    goto :goto_a

    .line 4593
    :cond_1f
    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 4595
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_21
    return-void
.end method

.method private clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1376
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1377
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    goto :goto_1b

    .line 1379
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1380
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1382
    :goto_1b
    return-void
.end method

.method private completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V
    .registers 12
    .param p1, "resumeNext"    # Z
    .param p2, "resuming"    # Lcom/android/server/am/ActivityRecord;

    .line 1703
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1704
    .local v0, "prev":Lcom/android/server/am/ActivityRecord;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_1c

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Complete pause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_1c
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_111

    .line 1707
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 1708
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v3

    .line 1709
    .local v3, "wasStopping":Z
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v5, "completePausedLocked"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1710
    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_58

    .line 1711
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_4f

    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Executing finish of activity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_4f
    const/4 v4, 0x2

    const-string v6, "completedPausedLocked"

    invoke-virtual {p0, v0, v4, v2, v6}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto/16 :goto_10a

    .line 1714
    :cond_58
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_ef

    .line 1715
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_88

    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enqueue pending stop if needed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " wasStopping="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " visible="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_88
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 1718
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_9a

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_b0

    :cond_9a
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Complete pause, no longer waiting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :cond_b0
    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v4, :cond_d4

    .line 1723
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_ce

    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re-launching after pause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_ce
    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ActivityRecord;->relaunchActivityLocked(ZZ)V

    goto :goto_10a

    .line 1726
    :cond_d4
    if-eqz v3, :cond_de

    .line 1730
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v6, "completePausedLocked"

    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    goto :goto_10a

    .line 1731
    :cond_de
    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v4, :cond_e8

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v4

    if-eqz v4, :cond_10a

    .line 1733
    :cond_e8
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityRecord;->setDeferHidingClient(Z)V

    .line 1736
    invoke-virtual {p0, v0, v5, v2}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto :goto_10a

    .line 1739
    :cond_ef
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_109

    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App died during pause, not stopping: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :cond_109
    const/4 v0, 0x0

    .line 1745
    :cond_10a
    :goto_10a
    if-eqz v0, :cond_10f

    .line 1746
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1748
    :cond_10f
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1751
    .end local v3    # "wasStopping":Z
    :cond_111
    if-eqz p1, :cond_137

    .line 1752
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 1753
    .local v3, "topStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v4

    if-nez v4, :cond_125

    .line 1754
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v3, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_137

    .line 1756
    :cond_125
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    .line 1757
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1758
    .local v1, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_132

    if-eqz v0, :cond_137

    if-eq v1, v0, :cond_137

    .line 1763
    :cond_132
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1768
    .end local v1    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_137
    :goto_137
    if-eqz v0, :cond_188

    .line 1769
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1771
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_186

    iget-wide v5, v0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v1, v5, v3

    if-lez v1, :cond_186

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 1772
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_186

    .line 1773
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v5}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long/2addr v5, v7

    .line 1775
    .local v5, "diff":J
    cmp-long v1, v5, v3

    if-lez v1, :cond_186

    .line 1776
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    .line 1777
    .local v1, "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v1

    .line 1778
    :try_start_16e
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1779
    invoke-virtual {v1, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v7

    .line 1781
    .local v7, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v7, :cond_181

    .line 1782
    invoke-virtual {v7, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 1784
    .end local v7    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_181
    monitor-exit v1

    goto :goto_186

    :catchall_183
    move-exception v2

    monitor-exit v1
    :try_end_185
    .catchall {:try_start_16e .. :try_end_185} :catchall_183

    throw v2

    .line 1787
    .end local v1    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v5    # "diff":J
    :cond_186
    :goto_186
    iput-wide v3, v0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1796
    :cond_188
    const/4 v1, 0x0

    .line 1797
    .local v1, "mHasPinnedStack":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    if-eqz v3, :cond_197

    .line 1798
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->hasPinnedStack()Z

    move-result v1

    .line 1800
    :cond_197
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez v3, :cond_19f

    if-eqz v1, :cond_1aa

    .line 1802
    :cond_19f
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1803
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v2, v3, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 1806
    :cond_1aa
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p2, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1807
    return-void
.end method

.method private containsActivityFromStack(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1492
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p1, "rs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1493
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-ne v2, p0, :cond_18

    .line 1494
    const/4 v0, 0x1

    return v0

    .line 1496
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_18
    goto :goto_4

    .line 1497
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 13
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4604
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    .line 4605
    .local v0, "lastIsOpaque":Z
    const/4 v1, 0x0

    .line 4606
    .local v1, "activityRemoved":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "taskNdx":I
    :goto_a
    if-ltz v2, :cond_8d

    .line 4607
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4608
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "activityNdx":I
    :goto_1b
    if-ltz v5, :cond_89

    .line 4609
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 4610
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_28

    .line 4611
    goto :goto_86

    .line 4613
    :cond_28
    iget-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v7, :cond_2d

    .line 4614
    const/4 v0, 0x1

    .line 4616
    :cond_2d
    if-eqz p1, :cond_34

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v7, p1, :cond_34

    .line 4617
    goto :goto_86

    .line 4619
    :cond_34
    if-nez v0, :cond_37

    .line 4620
    goto :goto_86

    .line 4622
    :cond_37
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v7

    if-eqz v7, :cond_86

    .line 4623
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v7, :cond_7f

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Destroying "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " in state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4624
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " resumed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " pausing="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " for reason "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4623
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4627
    :cond_7f
    invoke-virtual {p0, v6, v3, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_86

    .line 4628
    const/4 v1, 0x1

    .line 4608
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_86
    :goto_86
    add-int/lit8 v5, v5, -0x1

    goto :goto_1b

    .line 4606
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "activityNdx":I
    :cond_89
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_a

    .line 4633
    .end local v2    # "taskNdx":I
    :cond_8d
    if-eqz v1, :cond_94

    .line 4634
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4636
    :cond_94
    return-void
.end method

.method private finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .registers 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .line 4033
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 4038
    .local v0, "resultTo":Lcom/android/server/am/ActivityRecord;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v1, :cond_86

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mRequestHashCode:I

    if-ne v1, v2, :cond_86

    .line 4039
    const/4 v1, -0x1

    if-eqz p3, :cond_63

    .line 4041
    const-string v2, "OP_APP_LOCKER_BLOCKING_UID"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4043
    .local v2, "userId":I
    const-string v3, "OP_APP_LOCKER_PACKAGE"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4044
    .local v3, "pkg":Ljava/lang/String;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppLocker: res="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    if-ne p2, v1, :cond_62

    if-eqz v3, :cond_62

    .line 4046
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPassedPackageList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4049
    .end local v2    # "userId":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_62
    goto :goto_85

    :cond_63
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mHintConfirmed:Z

    if-nez v2, :cond_85

    if-ne p2, v1, :cond_85

    .line 4050
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mHintConfirmed:Z

    .line 4051
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "op_applocker_hint_confirmed"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4053
    const-string v1, "ActivityManager"

    const-string v2, "AppLocker: hint confirmed"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    :cond_85
    :goto_85
    const/4 v0, 0x0

    .line 4061
    .end local v0    # "resultTo":Lcom/android/server/am/ActivityRecord;
    .local v6, "resultTo":Lcom/android/server/am/ActivityRecord;
    :cond_86
    move-object v6, v0

    const/4 v7, 0x0

    if-eqz v6, :cond_ff

    .line 4062
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_c8

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " who="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " req="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    :cond_c8
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v0, v1, :cond_d5

    .line 4066
    if-eqz p3, :cond_d5

    .line 4067
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p3, v0}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 4070
    :cond_d5
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_f1

    .line 4071
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 4073
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 4071
    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 4075
    :cond_f1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4077
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    goto :goto_119

    .line 4079
    :cond_ff
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_119

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No result destination from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    :cond_119
    :goto_119
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4085
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4086
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4087
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 4088
    return-void
.end method

.method private static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    .line 5241
    if-eqz p1, :cond_76

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_76

    .line 5245
    :cond_f
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_1b

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_42

    .line 5246
    :cond_1b
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 5247
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    .line 5248
    .local v0, "maxRight":I
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 5249
    .local v1, "horizontalDiff":I
    if-gez v1, :cond_2f

    iget v2, p0, Landroid/graphics/Rect;->left:I

    if-ge v2, v0, :cond_34

    :cond_2f
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    if-lt v2, v0, :cond_38

    .line 5251
    :cond_34
    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v2

    .line 5253
    :cond_38
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 5254
    iget v2, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 5257
    .end local v0    # "maxRight":I
    .end local v1    # "horizontalDiff":I
    :cond_42
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_4e

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_75

    .line 5258
    :cond_4e
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 5259
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    .line 5260
    .local v0, "maxBottom":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 5261
    .local v1, "verticalDiff":I
    if-gez v1, :cond_62

    iget v2, p0, Landroid/graphics/Rect;->top:I

    if-ge v2, v0, :cond_67

    :cond_62
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    if-lt v2, v0, :cond_6b

    .line 5263
    :cond_67
    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int v1, v0, v2

    .line 5265
    :cond_6b
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 5266
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 5268
    .end local v0    # "maxBottom":I
    .end local v1    # "verticalDiff":I
    :cond_75
    return-void

    .line 5242
    :cond_76
    :goto_76
    return-void
.end method

.method private getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .registers 8
    .param p1, "targetTask"    # Lcom/android/server/am/TaskRecord;

    .line 3084
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3085
    .local v0, "index":I
    if-ltz v0, :cond_24

    .line 3086
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3087
    .local v1, "numTasks":I
    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_24

    .line 3088
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3089
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    iget v5, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, v5, :cond_21

    .line 3090
    return-object v3

    .line 3087
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 3094
    .end local v1    # "numTasks":I
    .end local v2    # "i":I
    :cond_24
    const/4 v1, 0x0

    return-object v1
.end method

.method private insertTaskAtBottom(Lcom/android/server/am/TaskRecord;)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 3153
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3154
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 3155
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3156
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 3157
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/StackWindowController;->positionChildAtBottom(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 3159
    return-void
.end method

.method private insertTaskAtPosition(Lcom/android/server/am/TaskRecord;I)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "position"    # I

    .line 3126
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_d

    .line 3127
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 3128
    return-void

    .line 3129
    :cond_d
    if-gtz p2, :cond_13

    .line 3130
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->insertTaskAtBottom(Lcom/android/server/am/TaskRecord;)V

    .line 3131
    return-void

    .line 3133
    :cond_13
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result p2

    .line 3134
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3135
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3136
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackWindowController;->positionChildAt(Lcom/android/server/wm/TaskWindowContainerController;I)V

    .line 3137
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 3138
    return-void
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "starting"    # Lcom/android/server/am/ActivityRecord;

    .line 3142
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3144
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 3145
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3146
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 3147
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 3149
    return-void
.end method

.method private isATopFinishingTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 3708
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_20

    .line 3709
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3710
    .local v3, "current":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 3711
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_1a

    .line 3713
    return v2

    .line 3715
    :cond_1a
    if-ne v3, p1, :cond_1d

    .line 3716
    return v1

    .line 3708
    .end local v3    # "current":Lcom/android/server/am/TaskRecord;
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3719
    .end local v0    # "i":I
    :cond_20
    return v2
.end method

.method private isTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "topFocusedActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 3363
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .registers 8
    .param p0, "tag"    # I
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .line 5131
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 5132
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 5134
    .local v1, "strData":Ljava/lang/String;
    :goto_e
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 5135
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5136
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5137
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5134
    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5138
    return-void
.end method

.method private makeInvisible(Lcom/android/server/am/ActivityRecord;)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2319
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_1f

    .line 2320
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_1e

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already invisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    :cond_1e
    return-void

    .line 2325
    :cond_1f
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_45

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Making invisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_45
    :try_start_45
    const-string/jumbo v0, "makeInvisible"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v0

    .line 2336
    .local v0, "canEnterPictureInPicture":Z
    const/4 v2, 0x0

    if-eqz v0, :cond_5e

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2337
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v3

    if-nez v3, :cond_5e

    move v3, v1

    goto :goto_5f

    :cond_5e
    move v3, v2

    .line 2338
    .local v3, "deferHidingClient":Z
    :goto_5f
    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityRecord;->setDeferHidingClient(Z)V

    .line 2339
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    .line 2341
    sget-object v4, Lcom/android/server/am/ActivityStack$1;->$SwitchMap$com$android$server$am$ActivityStack$ActivityState:[I

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_d4

    .line 2341
    .end local v0    # "canEnterPictureInPicture":Z
    .end local v3    # "deferHidingClient":Z
    goto :goto_b3

    .line 2360
    .restart local v0    # "canEnterPictureInPicture":Z
    .restart local v3    # "deferHidingClient":Z
    :pswitch_75
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2362
    goto :goto_b3

    .line 2344
    :pswitch_79
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_b0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_b0

    .line 2345
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_9d

    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling invisibility: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    :cond_9d
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v1

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2348
    invoke-static {v2}, Landroid/app/servertransaction/WindowVisibilityItem;->obtain(Z)Landroid/app/servertransaction/WindowVisibilityItem;

    move-result-object v6

    .line 2347
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2353
    :cond_b0
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_b2} :catch_b4

    .line 2354
    nop

    .line 2370
    .end local v0    # "canEnterPictureInPicture":Z
    .end local v3    # "deferHidingClient":Z
    :goto_b3
    goto :goto_d1

    .line 2367
    :catch_b4
    move-exception v0

    .line 2369
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown making hidden: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2371
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d1
    return-void

    nop

    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_79
        :pswitch_79
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
    .end packed-switch
.end method

.method private makeVisibleAndRestartIfNeeded(Lcom/android/server/am/ActivityRecord;IZZLcom/android/server/am/ActivityRecord;)Z
    .registers 11
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "isTop"    # Z
    .param p4, "andResume"    # Z
    .param p5, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2298
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    if-nez p3, :cond_7

    iget-boolean v1, p5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v1, :cond_56

    .line 2301
    :cond_7
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_21

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start and freeze screen for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    :cond_21
    if-eq p5, p1, :cond_28

    .line 2303
    iget-object v1, p5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p5, v1, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 2305
    :cond_28
    iget-boolean v1, p5, Lcom/android/server/am/ActivityRecord;->visible:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_31

    iget-boolean v1, p5, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_4e

    .line 2306
    :cond_31
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_4b

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting and making visible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    :cond_4b
    invoke-virtual {p5, v2}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    .line 2309
    :cond_4e
    if-eq p5, p1, :cond_56

    .line 2310
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p5, p4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2311
    return v2

    .line 2314
    :cond_56
    return v0
.end method

.method private postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "prevStack"    # Lcom/android/server/am/ActivityStack;
    .param p3, "schedulePictureInPictureModeChange"    # Z

    .line 5719
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p3, :cond_a

    if-eqz p2, :cond_a

    .line 5720
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    goto :goto_19

    .line 5721
    :cond_a
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_19

    .line 5723
    :try_start_e
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v1, v2}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    .line 5725
    goto :goto_19

    .line 5724
    :catch_18
    move-exception v0

    .line 5727
    :cond_19
    :goto_19
    return-void
.end method

.method private postAddToDisplay(Lcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;Z)V
    .registers 12
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityDisplay;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "onTop"    # Z

    .line 769
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 770
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 771
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->onParentChanged()V

    .line 773
    if-eqz p3, :cond_10

    const v0, 0x7fffffff

    goto :goto_12

    :cond_10
    const/high16 v0, -0x80000000

    :goto_12
    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/ActivityDisplay;->addChild(Lcom/android/server/am/ActivityStack;I)V

    .line 774
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 777
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 778
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 777
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 780
    :cond_29
    return-void
.end method

.method private preAddTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/am/ActivityStack;
    .registers 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "toTop"    # Z

    .line 5704
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 5705
    .local v0, "prevStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_11

    if-eq v0, p0, :cond_11

    .line 5706
    nop

    .line 5707
    if-eqz p3, :cond_d

    const/4 v1, 0x2

    goto :goto_e

    :cond_d
    const/4 v1, 0x1

    .line 5706
    :goto_e
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    .line 5709
    :cond_11
    return-object v0
.end method

.method private prepareActivityHideTransitionAnimation(Lcom/android/server/am/ActivityRecord;I)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "transit"    # I

    .line 4199
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4200
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 4201
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 4202
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 4203
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4205
    :cond_1f
    return-void
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .registers 15
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4530
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 4531
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 4532
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v2, :cond_2f

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from stack callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    .line 4533
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4532
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4535
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 4536
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4537
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v2, :cond_54

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to DESTROYED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (removed from history)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4539
    :cond_54
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v3, "removeActivityFromHistoryLocked"

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4540
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v2, :cond_76

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing app during remove for activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4541
    :cond_76
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4542
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeWindowContainer()V

    .line 4543
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 4544
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_86

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    goto :goto_87

    :cond_86
    move v2, v1

    .line 4547
    .local v2, "lastActivity":Z
    :goto_87
    if-eqz v0, :cond_8e

    .line 4548
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->onlyHasTaskOverlayActivities(Z)Z

    move-result v3

    goto :goto_8f

    :cond_8e
    move v3, v1

    .line 4550
    .local v3, "onlyHasTaskOverlays":Z
    :goto_8f
    if-nez v2, :cond_93

    if-eqz v3, :cond_c8

    .line 4551
    :cond_93
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v4, :cond_b6

    .line 4552
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeActivityFromHistoryLocked: last activity removed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " onlyHasTaskOverlays="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4560
    :cond_b6
    if-eqz v3, :cond_c3

    .line 4568
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v11, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    .line 4574
    :cond_c3
    if-eqz v2, :cond_c8

    .line 4575
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    .line 4578
    :cond_c8
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4579
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 4580
    return-void
.end method

.method private removeFromDisplay()V
    .registers 3

    .line 787
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 788
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_9

    .line 789
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->removeChild(Lcom/android/server/am/ActivityStack;)V

    .line 791
    :cond_9
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 792
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 9
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "listName"    # Ljava/lang/String;
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

    .line 4834
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4835
    .local v0, "i":I
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v1, :cond_33

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4837
    :cond_33
    :goto_33
    if-lez v0, :cond_75

    .line 4838
    add-int/lit8 v0, v0, -0x1

    .line 4839
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4840
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v2, :cond_5f

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4841
    :cond_5f
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_74

    .line 4842
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v2, :cond_6e

    const-string v2, "ActivityManager"

    const-string v3, "---> REMOVING this entry!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4843
    :cond_6e
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4844
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4846
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_74
    goto :goto_33

    .line 4847
    :cond_75
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 20
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4850
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p0

    .line 4850
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string/jumbo v3, "mLRUActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4851
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string/jumbo v3, "mStoppingActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4853
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string/jumbo v3, "mGoingToSleepActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4855
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    const-string/jumbo v3, "mActivitiesWaitingForVisibleActivity"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4857
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string/jumbo v3, "mFinishingActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4860
    const/4 v2, 0x0

    .line 4863
    .local v2, "hasVisibleActivities":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v3

    .line 4864
    .local v3, "i":I
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v4, :cond_60

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " from history with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " entries"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4866
    :cond_60
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 4866
    .local v4, "taskNdx":I
    :goto_68
    if-ltz v4, :cond_20c

    .line 4867
    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4868
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 4869
    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4871
    :goto_7e
    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_208

    .line 4872
    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    .line 4873
    .local v7, "targetIndex":I
    iget-object v8, v0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 4874
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v9, :cond_c1

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Record #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ": app="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4877
    :cond_c1
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v9, v1, :cond_206

    .line 4878
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v9, :cond_ca

    .line 4879
    const/4 v2, 0x1

    .line 4882
    :cond_ca
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->haveState:Z

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-nez v9, :cond_d4

    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v9, :cond_d8

    :cond_d4
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v9, :cond_da

    .line 4885
    :cond_d8
    const/4 v9, 0x1

    .line 4885
    .local v9, "remove":Z
    :goto_d9
    goto :goto_f4

    .line 4886
    .end local v9    # "remove":Z
    :cond_da
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v9, :cond_f3

    iget v9, v8, Lcom/android/server/am/ActivityRecord;->launchCount:I

    if-le v9, v10, :cond_f3

    iget-wide v12, v8, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 4887
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0xea60

    sub-long v14, v14, v16

    cmp-long v9, v12, v14

    if-lez v9, :cond_f3

    .line 4893
    const/4 v9, 0x1

    goto :goto_d9

    .line 4896
    :cond_f3
    move v9, v11

    .line 4898
    .restart local v9    # "remove":Z
    :goto_f4
    if-eqz v9, :cond_1b0

    .line 4899
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    const/4 v13, 0x5

    if-nez v12, :cond_ff

    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v12, :cond_153

    :cond_ff
    const-string v12, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Removing activity "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " from stack at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": haveState="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v8, Lcom/android/server/am/ActivityRecord;->haveState:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " stateNotNeeded="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v8, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " finishing="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " state="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4904
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " callers="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4899
    invoke-static {v12, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4905
    :cond_153
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v12, :cond_1fc

    .line 4906
    const-string v12, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Force removing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ": app died, no saved state"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4907
    const/16 v12, 0x7531

    new-array v13, v13, [Ljava/lang/Object;

    iget v14, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 4908
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    .line 4909
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v14

    iget v14, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v10, 0x3

    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v14, v13, v10

    const/4 v10, 0x4

    const-string/jumbo v14, "proc died without state saved"

    aput-object v14, v13, v10

    .line 4907
    invoke-static {v12, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4911
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v10

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v12, :cond_1fc

    .line 4912
    iget-object v10, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10, v8, v11}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    goto :goto_1fc

    .line 4918
    :cond_1b0
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v10, :cond_1bb

    const-string v10, "ActivityManager"

    const-string v11, "Keeping entry, setting app to null"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4919
    :cond_1bb
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v10, :cond_1d5

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Clearing app during removeHistory for activity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4921
    :cond_1d5
    const/4 v10, 0x0

    iput-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4926
    iget-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    iput-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 4927
    iget-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v11, :cond_1fc

    .line 4928
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    if-eqz v11, :cond_1fa

    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "App died, clearing saved state of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4930
    :cond_1fa
    iput-object v10, v8, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 4933
    :cond_1fc
    :goto_1fc
    invoke-direct {v0, v8, v5, v5}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4934
    if-eqz v9, :cond_206

    .line 4935
    const-string v10, "appDied"

    invoke-direct {v0, v8, v10}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4938
    .end local v7    # "targetIndex":I
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "remove":Z
    :cond_206
    goto/16 :goto_7e

    .line 4866
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_208
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_68

    .line 4941
    .end local v4    # "taskNdx":I
    :cond_20c
    return v2
.end method

.method private resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I
    .registers 35
    .param p1, "affinityTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "topTaskIsHigher"    # Z
    .param p4, "forceReset"    # Z
    .param p5, "taskInsertionPoint"    # I

    .line 3531
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 3531
    const/4 v2, -0x1

    .line 3532
    .local v2, "replyChainEnd":I
    iget v3, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 3533
    .local v3, "taskId":I
    iget-object v4, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 3535
    .local v4, "taskAffinity":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3536
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3537
    .local v6, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v7

    .line 3540
    .local v7, "rootActivityNdx":I
    add-int/lit8 v8, v6, -0x1

    move v9, v2

    move/from16 v2, p5

    .line 3540
    .end local p5    # "taskInsertionPoint":I
    .local v2, "taskInsertionPoint":I
    .local v8, "i":I
    .local v9, "replyChainEnd":I
    :goto_18
    if-le v8, v7, :cond_1fa

    .line 3541
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .line 3542
    .local v10, "target":Lcom/android/server/am/ActivityRecord;
    iget-boolean v11, v10, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v11, :cond_31

    .line 3543
    nop

    .line 3628
    move-object/from16 v0, p0

    move/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    goto/16 :goto_204

    .line 3545
    :cond_31
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3546
    .local v11, "flags":I
    and-int/lit8 v12, v11, 0x2

    const/4 v13, 0x0

    if-eqz v12, :cond_3c

    const/4 v12, 0x1

    goto :goto_3d

    :cond_3c
    move v12, v13

    .line 3547
    .local v12, "finishOnTaskLaunch":Z
    :goto_3d
    and-int/lit8 v15, v11, 0x40

    if-eqz v15, :cond_43

    const/4 v13, 0x1

    nop

    .line 3549
    .local v13, "allowTaskReparenting":Z
    :cond_43
    iget-object v15, v10, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v15, :cond_56

    .line 3556
    if-gez v9, :cond_4a

    .line 3557
    move v9, v8

    .line 3540
    .end local v3    # "taskId":I
    .end local v4    # "taskAffinity":Ljava/lang/String;
    .end local v6    # "numActivities":I
    .end local v7    # "rootActivityNdx":I
    .end local v10    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "flags":I
    .end local v12    # "finishOnTaskLaunch":Z
    .end local v13    # "allowTaskReparenting":Z
    .local v16, "taskId":I
    .local v18, "taskAffinity":Ljava/lang/String;
    .local v19, "numActivities":I
    .local v20, "rootActivityNdx":I
    :cond_4a
    move-object/from16 v0, p0

    move/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    goto/16 :goto_1ea

    .line 3559
    .end local v16    # "taskId":I
    .end local v18    # "taskAffinity":Ljava/lang/String;
    .end local v19    # "numActivities":I
    .end local v20    # "rootActivityNdx":I
    .restart local v3    # "taskId":I
    .restart local v4    # "taskAffinity":Ljava/lang/String;
    .restart local v6    # "numActivities":I
    .restart local v7    # "rootActivityNdx":I
    .restart local v10    # "target":Lcom/android/server/am/ActivityRecord;
    .restart local v11    # "flags":I
    .restart local v12    # "finishOnTaskLaunch":Z
    .restart local v13    # "allowTaskReparenting":Z
    :cond_56
    if-eqz p3, :cond_1e0

    if-eqz v13, :cond_1e0

    if-eqz v4, :cond_1e0

    iget-object v14, v10, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 3562
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e0

    .line 3573
    if-nez p4, :cond_18a

    if-eqz v12, :cond_74

    .line 3574
    move-object/from16 v0, p0

    move/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    goto/16 :goto_194

    .line 3586
    :cond_74
    if-gez v2, :cond_7f

    .line 3587
    move/from16 v16, v3

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3587
    .end local v3    # "taskId":I
    .restart local v16    # "taskId":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_81

    .line 3591
    .end local v16    # "taskId":I
    .restart local v3    # "taskId":I
    :cond_7f
    move/from16 v16, v3

    .line 3591
    .end local v3    # "taskId":I
    .restart local v16    # "taskId":I
    :goto_81
    if-ltz v9, :cond_85

    move v3, v9

    goto :goto_86

    :cond_85
    move v3, v8

    .line 3592
    .local v3, "start":I
    :goto_86
    sget-boolean v17, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v17, :cond_c7

    move-object/from16 v18, v4

    const-string v4, "ActivityManager"

    .line 3592
    .end local v4    # "taskAffinity":Ljava/lang/String;
    .restart local v18    # "taskAffinity":Ljava/lang/String;
    move/from16 v19, v6

    new-instance v6, Ljava/lang/StringBuilder;

    .line 3592
    .end local v6    # "numActivities":I
    .restart local v19    # "numActivities":I
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v7

    const-string v7, "Reparenting from task="

    .line 3592
    .end local v7    # "rootActivityNdx":I
    .restart local v20    # "rootActivityNdx":I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    .line 3595
    .end local v18    # "taskAffinity":Ljava/lang/String;
    .end local v19    # "numActivities":I
    .end local v20    # "rootActivityNdx":I
    .restart local v4    # "taskAffinity":Ljava/lang/String;
    .restart local v6    # "numActivities":I
    .restart local v7    # "rootActivityNdx":I
    :cond_c7
    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    .line 3595
    .end local v4    # "taskAffinity":Ljava/lang/String;
    .end local v6    # "numActivities":I
    .end local v7    # "rootActivityNdx":I
    .restart local v18    # "taskAffinity":Ljava/lang/String;
    .restart local v19    # "numActivities":I
    .restart local v20    # "rootActivityNdx":I
    :goto_cd
    move v4, v3

    .line 3595
    .local v4, "srcPos":I
    :goto_ce
    if-lt v4, v8, :cond_141

    .line 3596
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 3597
    .local v6, "p":Lcom/android/server/am/ActivityRecord;
    const-string/jumbo v7, "resetAffinityTaskIfNeededLocked"

    invoke-virtual {v6, v1, v2, v7}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    .line 3599
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v7, :cond_10e

    const-string v7, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v2

    const-string v2, "Removing and adding activity "

    .line 3599
    .end local v2    # "taskInsertionPoint":I
    .local v21, "taskInsertionPoint":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to stack at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 3601
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3599
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_110

    .line 3602
    .end local v21    # "taskInsertionPoint":I
    .restart local v2    # "taskInsertionPoint":I
    :cond_10e
    move/from16 v21, v2

    .line 3602
    .end local v2    # "taskInsertionPoint":I
    .restart local v21    # "taskInsertionPoint":I
    :goto_110
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_13a

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pulling activity "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " in to resetting task "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    .end local v6    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_13a
    add-int/lit8 v4, v4, -0x1

    move/from16 v2, v21

    move-object/from16 v0, p1

    goto :goto_ce

    .line 3605
    .end local v4    # "srcPos":I
    .end local v21    # "taskInsertionPoint":I
    .restart local v2    # "taskInsertionPoint":I
    :cond_141
    move/from16 v21, v2

    .line 3605
    .end local v2    # "taskInsertionPoint":I
    .restart local v21    # "taskInsertionPoint":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    .line 3606
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v4

    .line 3605
    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 3612
    iget-object v2, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v2, v6, :cond_187

    .line 3613
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3614
    .local v2, "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 3615
    .local v4, "targetNdx":I
    if-lez v4, :cond_187

    .line 3616
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 3617
    .restart local v6    # "p":Lcom/android/server/am/ActivityRecord;
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v1, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_187

    .line 3618
    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string/jumbo v26, "replace"

    const/16 v27, 0x0

    move-object/from16 v22, v0

    move-object/from16 v23, v6

    invoke-virtual/range {v22 .. v27}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3625
    .end local v2    # "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "start":I
    .end local v4    # "targetNdx":I
    .end local v6    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_187
    move/from16 v2, v21

    goto :goto_1dd

    .line 3574
    .end local v16    # "taskId":I
    .end local v18    # "taskAffinity":Ljava/lang/String;
    .end local v19    # "numActivities":I
    .end local v20    # "rootActivityNdx":I
    .end local v21    # "taskInsertionPoint":I
    .local v2, "taskInsertionPoint":I
    .local v3, "taskId":I
    .local v4, "taskAffinity":Ljava/lang/String;
    .local v6, "numActivities":I
    .restart local v7    # "rootActivityNdx":I
    :cond_18a
    move-object/from16 v0, p0

    move/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    .line 3574
    .end local v3    # "taskId":I
    .end local v4    # "taskAffinity":Ljava/lang/String;
    .end local v6    # "numActivities":I
    .end local v7    # "rootActivityNdx":I
    .restart local v16    # "taskId":I
    .restart local v18    # "taskAffinity":Ljava/lang/String;
    .restart local v19    # "numActivities":I
    .restart local v20    # "rootActivityNdx":I
    :goto_194
    if-ltz v9, :cond_198

    move v1, v9

    goto :goto_199

    :cond_198
    move v1, v8

    .line 3575
    .local v1, "start":I
    :goto_199
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_1bb

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finishing task at index "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    :cond_1bb
    move v3, v1

    .line 3577
    .local v3, "srcPos":I
    :goto_1bc
    if-lt v3, v8, :cond_1dc

    .line 3578
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3579
    .local v4, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1c9

    .line 3580
    goto :goto_1d9

    .line 3582
    :cond_1c9
    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string/jumbo v26, "move-affinity"

    const/16 v27, 0x0

    move-object/from16 v22, v0

    move-object/from16 v23, v4

    invoke-virtual/range {v22 .. v27}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .end local v4    # "p":Lcom/android/server/am/ActivityRecord;
    :goto_1d9
    add-int/lit8 v3, v3, -0x1

    goto :goto_1bc

    .line 3585
    .end local v1    # "start":I
    .end local v3    # "srcPos":I
    :cond_1dc
    nop

    .line 3625
    :goto_1dd
    const/4 v1, -0x1

    .line 3540
    .end local v9    # "replyChainEnd":I
    .end local v10    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "flags":I
    .end local v12    # "finishOnTaskLaunch":Z
    .end local v13    # "allowTaskReparenting":Z
    .local v1, "replyChainEnd":I
    move v9, v1

    goto :goto_1ea

    .line 3540
    .end local v1    # "replyChainEnd":I
    .end local v16    # "taskId":I
    .end local v18    # "taskAffinity":Ljava/lang/String;
    .end local v19    # "numActivities":I
    .end local v20    # "rootActivityNdx":I
    .local v3, "taskId":I
    .local v4, "taskAffinity":Ljava/lang/String;
    .restart local v6    # "numActivities":I
    .restart local v7    # "rootActivityNdx":I
    .restart local v9    # "replyChainEnd":I
    :cond_1e0
    move-object/from16 v0, p0

    move/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    .line 3540
    .end local v3    # "taskId":I
    .end local v4    # "taskAffinity":Ljava/lang/String;
    .end local v6    # "numActivities":I
    .end local v7    # "rootActivityNdx":I
    .restart local v16    # "taskId":I
    .restart local v18    # "taskAffinity":Ljava/lang/String;
    .restart local v19    # "numActivities":I
    .restart local v20    # "rootActivityNdx":I
    :goto_1ea
    add-int/lit8 v8, v8, -0x1

    move/from16 v3, v16

    move-object/from16 v4, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto/16 :goto_18

    .line 3628
    .end local v8    # "i":I
    .end local v16    # "taskId":I
    .end local v18    # "taskAffinity":Ljava/lang/String;
    .end local v19    # "numActivities":I
    .end local v20    # "rootActivityNdx":I
    .restart local v3    # "taskId":I
    .restart local v4    # "taskAffinity":Ljava/lang/String;
    .restart local v6    # "numActivities":I
    .restart local v7    # "rootActivityNdx":I
    :cond_1fa
    move-object/from16 v0, p0

    move/from16 v16, v3

    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    .line 3628
    .end local v3    # "taskId":I
    .end local v4    # "taskAffinity":Ljava/lang/String;
    .end local v6    # "numActivities":I
    .end local v7    # "rootActivityNdx":I
    .restart local v16    # "taskId":I
    .restart local v18    # "taskAffinity":Ljava/lang/String;
    .restart local v19    # "numActivities":I
    .restart local v20    # "rootActivityNdx":I
    :goto_204
    return v2
.end method

.method private resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;
    .registers 30
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "forceReset"    # Z

    .line 3379
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 3379
    const/4 v0, 0x0

    .line 3381
    .local v0, "topOptions":Landroid/app/ActivityOptions;
    const/4 v1, -0x1

    .line 3382
    .local v1, "replyChainEnd":I
    const/4 v2, 0x1

    .line 3386
    .local v2, "canMoveOptions":Z
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3387
    .local v9, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3388
    .local v10, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v11

    .line 3389
    .local v11, "rootActivityNdx":I
    add-int/lit8 v3, v10, -0x1

    move-object v12, v0

    move v13, v1

    move v14, v2

    .line 3389
    .end local v0    # "topOptions":Landroid/app/ActivityOptions;
    .end local v1    # "replyChainEnd":I
    .end local v2    # "canMoveOptions":Z
    .local v3, "i":I
    .local v12, "topOptions":Landroid/app/ActivityOptions;
    .local v13, "replyChainEnd":I
    .local v14, "canMoveOptions":Z
    :goto_16
    move v15, v3

    .line 3389
    .end local v3    # "i":I
    .local v15, "i":I
    if-le v15, v11, :cond_25e

    .line 3390
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 3391
    .local v6, "target":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_29

    .line 3392
    nop

    .line 3518
    move/from16 v25, v10

    goto/16 :goto_260

    .line 3394
    :cond_29
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3395
    .local v5, "flags":I
    and-int/lit8 v0, v5, 0x2

    const/16 v16, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_37

    move/from16 v0, v16

    goto :goto_38

    :cond_37
    move v0, v4

    :goto_38
    move/from16 v17, v0

    .line 3397
    .local v17, "finishOnTaskLaunch":Z
    and-int/lit8 v0, v5, 0x40

    if-eqz v0, :cond_41

    move/from16 v0, v16

    goto :goto_42

    :cond_41
    move v0, v4

    :goto_42
    move/from16 v18, v0

    .line 3399
    .local v18, "allowTaskReparenting":Z
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3400
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_52

    move/from16 v0, v16

    goto :goto_53

    :cond_52
    move v0, v4

    :goto_53
    move/from16 v19, v0

    .line 3402
    .local v19, "clearWhenTaskReset":Z
    if-nez v17, :cond_65

    if-nez v19, :cond_65

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_65

    .line 3411
    if-gez v13, :cond_61

    .line 3412
    move v0, v15

    .line 3389
    .end local v13    # "replyChainEnd":I
    .local v0, "replyChainEnd":I
    move v13, v0

    .line 3389
    .end local v0    # "replyChainEnd":I
    .end local v5    # "flags":I
    .end local v6    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "numActivities":I
    .end local v17    # "finishOnTaskLaunch":Z
    .end local v18    # "allowTaskReparenting":Z
    .end local v19    # "clearWhenTaskReset":Z
    .restart local v13    # "replyChainEnd":I
    .local v25, "numActivities":I
    :cond_61
    move/from16 v25, v10

    goto/16 :goto_258

    .line 3414
    .end local v25    # "numActivities":I
    .restart local v5    # "flags":I
    .restart local v6    # "target":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "numActivities":I
    .restart local v17    # "finishOnTaskLaunch":Z
    .restart local v18    # "allowTaskReparenting":Z
    .restart local v19    # "clearWhenTaskReset":Z
    :cond_65
    if-nez v17, :cond_1cf

    if-nez v19, :cond_1cf

    if-eqz v18, :cond_1cf

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_1cf

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v1, v8, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 3418
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cf

    .line 3427
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a2

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 3428
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    goto :goto_a3

    :cond_a2
    const/4 v0, 0x0

    :goto_a3
    move-object v3, v0

    .line 3429
    .local v3, "bottom":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_e6

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_e6

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 3430
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 3434
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3435
    .local v0, "targetTask":Lcom/android/server/am/TaskRecord;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_de

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start pushing activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " out to bottom task "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    :cond_de
    move-object/from16 v23, v3

    move/from16 v20, v5

    move/from16 v25, v10

    move-object v10, v6

    goto :goto_130

    .line 3438
    .end local v0    # "targetTask":Lcom/android/server/am/TaskRecord;
    :cond_e6
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3439
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v1

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 3438
    move-object v0, v7

    move-object/from16 v23, v3

    move-object v3, v4

    .line 3438
    .end local v3    # "bottom":Lcom/android/server/am/ActivityRecord;
    .local v23, "bottom":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v4, v16

    move/from16 v20, v5

    move-object/from16 v5, v21

    .line 3438
    .end local v5    # "flags":I
    .local v20, "flags":I
    move/from16 v25, v10

    move-object v10, v6

    move/from16 v6, v22

    .line 3438
    .end local v6    # "target":Lcom/android/server/am/ActivityRecord;
    .local v10, "target":Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "numActivities":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3441
    .restart local v0    # "targetTask":Lcom/android/server/am/TaskRecord;
    iget-object v1, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 3442
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_130

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start pushing activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " out to new task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    :cond_130
    :goto_130
    move v1, v14

    .line 3447
    .local v1, "noOptions":Z
    if-gez v13, :cond_135

    move v2, v15

    goto :goto_136

    :cond_135
    move v2, v13

    .line 3448
    .local v2, "start":I
    :goto_136
    move v3, v1

    move v1, v2

    .line 3448
    .local v1, "srcPos":I
    .local v3, "noOptions":Z
    :goto_138
    if-lt v1, v15, :cond_1c1

    .line 3449
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3450
    .local v4, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_149

    .line 3451
    nop

    .line 3448
    move/from16 v26, v2

    const/4 v6, 0x0

    goto :goto_1bb

    .line 3454
    :cond_149
    const/4 v5, 0x0

    .line 3455
    .end local v14    # "canMoveOptions":Z
    .local v5, "canMoveOptions":Z
    if-eqz v3, :cond_155

    if-nez v12, :cond_155

    .line 3456
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v12

    .line 3457
    if-eqz v12, :cond_155

    .line 3458
    const/4 v3, 0x0

    .line 3461
    :cond_155
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v6, :cond_18f

    const-string v6, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v2

    const-string v2, "Removing activity "

    .line 3461
    .end local v2    # "start":I
    .local v26, "start":I
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from task="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " adding to task="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Callers="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    .line 3463
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3461
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_191

    .line 3464
    .end local v26    # "start":I
    .restart local v2    # "start":I
    :cond_18f
    move/from16 v26, v2

    .line 3464
    .end local v2    # "start":I
    .restart local v26    # "start":I
    :goto_191
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_1b3

    const-string v2, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Pushing next activity "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " out to target\'s task "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    :cond_1b3
    const-string/jumbo v2, "resetTargetTaskIfNeeded"

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    .line 3448
    .end local v4    # "p":Lcom/android/server/am/ActivityRecord;
    move v14, v5

    .line 3448
    .end local v5    # "canMoveOptions":Z
    .restart local v14    # "canMoveOptions":Z
    :goto_1bb
    add-int/lit8 v1, v1, -0x1

    move/from16 v2, v26

    goto/16 :goto_138

    .line 3469
    .end local v1    # "srcPos":I
    .end local v26    # "start":I
    .restart local v2    # "start":I
    :cond_1c1
    move/from16 v26, v2

    const/4 v6, 0x0

    .line 3469
    .end local v2    # "start":I
    .restart local v26    # "start":I
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    .line 3470
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v2

    .line 3469
    invoke-virtual {v1, v2, v6}, Lcom/android/server/wm/StackWindowController;->positionChildAtBottom(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 3471
    const/4 v0, -0x1

    .line 3472
    .end local v3    # "noOptions":Z
    .end local v13    # "replyChainEnd":I
    .end local v23    # "bottom":Lcom/android/server/am/ActivityRecord;
    .end local v26    # "start":I
    .local v0, "replyChainEnd":I
    goto :goto_1dc

    .line 3472
    .end local v0    # "replyChainEnd":I
    .end local v20    # "flags":I
    .end local v25    # "numActivities":I
    .local v5, "flags":I
    .restart local v6    # "target":Lcom/android/server/am/ActivityRecord;
    .local v10, "numActivities":I
    .restart local v13    # "replyChainEnd":I
    :cond_1cf
    move/from16 v20, v5

    move/from16 v25, v10

    move-object v10, v6

    .line 3472
    .end local v5    # "flags":I
    .end local v6    # "target":Lcom/android/server/am/ActivityRecord;
    .local v10, "target":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "flags":I
    .restart local v25    # "numActivities":I
    if-nez p2, :cond_1df

    if-nez v17, :cond_1df

    if-eqz v19, :cond_1db

    goto :goto_1df

    .line 3514
    :cond_1db
    const/4 v0, -0x1

    .line 3389
    .end local v10    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v17    # "finishOnTaskLaunch":Z
    .end local v18    # "allowTaskReparenting":Z
    .end local v19    # "clearWhenTaskReset":Z
    .end local v20    # "flags":I
    :goto_1dc
    move v13, v0

    goto/16 :goto_258

    .line 3478
    .restart local v10    # "target":Lcom/android/server/am/ActivityRecord;
    .restart local v17    # "finishOnTaskLaunch":Z
    .restart local v18    # "allowTaskReparenting":Z
    .restart local v19    # "clearWhenTaskReset":Z
    .restart local v20    # "flags":I
    :cond_1df
    :goto_1df
    if-eqz v19, :cond_1e8

    .line 3482
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3482
    .local v0, "end":I
    :goto_1e7
    goto :goto_1ed

    .line 3483
    .end local v0    # "end":I
    :cond_1e8
    if-gez v13, :cond_1ec

    .line 3484
    move v0, v15

    goto :goto_1e7

    .line 3486
    :cond_1ec
    move v0, v13

    .line 3488
    .restart local v0    # "end":I
    :goto_1ed
    move v1, v14

    .line 3489
    .local v1, "noOptions":Z
    move-object v2, v12

    move v12, v0

    move v0, v15

    .line 3489
    .local v0, "srcPos":I
    .local v2, "topOptions":Landroid/app/ActivityOptions;
    .local v12, "end":I
    :goto_1f1
    move v5, v0

    .line 3489
    .end local v0    # "srcPos":I
    .local v5, "srcPos":I
    if-gt v5, v12, :cond_254

    .line 3490
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3491
    .restart local v4    # "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_200

    .line 3492
    goto :goto_251

    .line 3494
    :cond_200
    const/4 v14, 0x0

    .line 3495
    if-eqz v1, :cond_20c

    if-nez v2, :cond_20c

    .line 3496
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 3497
    if-eqz v2, :cond_20c

    .line 3498
    const/4 v1, 0x0

    .line 3501
    .end local v1    # "noOptions":Z
    .end local v2    # "topOptions":Landroid/app/ActivityOptions;
    .local v21, "topOptions":Landroid/app/ActivityOptions;
    .local v22, "noOptions":Z
    :cond_20c
    move/from16 v22, v1

    move-object/from16 v21, v2

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_22b

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetTaskIntendedTask: calling finishActivity on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    :cond_22b
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v23, "reset-task"

    const/16 v24, 0x0

    move-object v0, v7

    move-object v1, v4

    move-object/from16 v26, v4

    move-object/from16 v4, v23

    .line 3503
    .end local v4    # "p":Lcom/android/server/am/ActivityRecord;
    .local v26, "p":Lcom/android/server/am/ActivityRecord;
    move/from16 v23, v5

    move/from16 v5, v24

    .line 3503
    .end local v5    # "srcPos":I
    .local v23, "srcPos":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_24b

    .line 3505
    add-int/lit8 v12, v12, -0x1

    .line 3506
    add-int/lit8 v5, v23, -0x1

    .line 3489
    .end local v23    # "srcPos":I
    .end local v26    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "srcPos":I
    move-object/from16 v2, v21

    move/from16 v1, v22

    goto :goto_251

    .line 3489
    .end local v5    # "srcPos":I
    .restart local v23    # "srcPos":I
    :cond_24b
    move-object/from16 v2, v21

    move/from16 v1, v22

    move/from16 v5, v23

    .line 3489
    .end local v21    # "topOptions":Landroid/app/ActivityOptions;
    .end local v22    # "noOptions":Z
    .end local v23    # "srcPos":I
    .restart local v1    # "noOptions":Z
    .restart local v2    # "topOptions":Landroid/app/ActivityOptions;
    .restart local v5    # "srcPos":I
    :goto_251
    add-int/lit8 v0, v5, 0x1

    .line 3489
    .end local v5    # "srcPos":I
    .restart local v0    # "srcPos":I
    goto :goto_1f1

    .line 3509
    .end local v0    # "srcPos":I
    :cond_254
    const/4 v0, -0x1

    .line 3510
    .end local v1    # "noOptions":Z
    .end local v12    # "end":I
    .end local v13    # "replyChainEnd":I
    .local v0, "replyChainEnd":I
    nop

    .line 3389
    move v13, v0

    move-object v12, v2

    .line 3389
    .end local v0    # "replyChainEnd":I
    .end local v2    # "topOptions":Landroid/app/ActivityOptions;
    .end local v10    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v17    # "finishOnTaskLaunch":Z
    .end local v18    # "allowTaskReparenting":Z
    .end local v19    # "clearWhenTaskReset":Z
    .end local v20    # "flags":I
    .local v12, "topOptions":Landroid/app/ActivityOptions;
    .restart local v13    # "replyChainEnd":I
    :goto_258
    add-int/lit8 v3, v15, -0x1

    .line 3389
    .end local v15    # "i":I
    .local v3, "i":I
    move/from16 v10, v25

    goto/16 :goto_16

    .line 3518
    .end local v3    # "i":I
    .end local v25    # "numActivities":I
    .local v10, "numActivities":I
    :cond_25e
    move/from16 v25, v10

    .line 3518
    .end local v10    # "numActivities":I
    .restart local v25    # "numActivities":I
    :goto_260
    return-object v12
.end method

.method private resumeTopActivityInNextFocusableStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Ljava/lang/String;)Z
    .registers 7
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "reason"    # Ljava/lang/String;

    .line 3065
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p3}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3069
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3070
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    .line 3069
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    .line 3074
    :cond_14
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3075
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_37

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeTopActivityInNextFocusableStack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", go home"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    :cond_37
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 3079
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3080
    invoke-virtual {v0, p1, p3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    .line 3079
    :goto_51
    return v0
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 38
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .line 2536
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 2536
    move-object/from16 v9, p2

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    const/4 v10, 0x0

    if-nez v0, :cond_14

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v0, :cond_14

    .line 2538
    return v10

    .line 2544
    :cond_14
    const/4 v11, 0x1

    invoke-direct {v7, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 2546
    .local v12, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_1d

    move v0, v11

    goto :goto_1e

    :cond_1d
    move v0, v10

    :goto_1e
    move v13, v0

    .line 2549
    .local v13, "hasRunningActivity":Z
    if-eqz v13, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_28

    .line 2550
    return v10

    .line 2553
    :cond_28
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->cancelInitializingActivities()V

    .line 2557
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2558
    .local v0, "userLeaving":Z
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v10, v1, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2560
    if-nez v13, :cond_3f

    .line 2562
    const-string/jumbo v1, "noMoreActivities"

    invoke-direct {v7, v8, v9, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInNextFocusableStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 2565
    :cond_3f
    iput-boolean v10, v12, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 2568
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, v12, :cond_7d

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v12, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v1

    if-eqz v1, :cond_7d

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2569
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 2572
    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2573
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_73

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeTopActivityLocked: Top activity resumed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    :cond_73
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_7c

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2576
    :cond_7c
    return v10

    .line 2581
    :cond_7d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_ca

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, v12, :cond_ca

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2583
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 2596
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLastResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v1, v12, :cond_b1

    .line 2597
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_ca

    .line 2598
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeTopActivityLocked: skip sleep for resume next="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca

    .line 2601
    :cond_b1
    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2602
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_c0

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "resumeTopActivityLocked: Going to sleep and all paused"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    :cond_c0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_c9

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2605
    :cond_c9
    return v10

    .line 2613
    :cond_ca
    :goto_ca
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v2, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v1

    if-nez v1, :cond_105

    .line 2614
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping resume of top activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_104

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2617
    :cond_104
    return v10

    .line 2622
    :cond_105
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2623
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2624
    iput-boolean v10, v12, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2625
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2626
    iput-boolean v11, v12, Lcom/android/server/am/ActivityRecord;->launching:Z

    .line 2628
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_138

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resuming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    :cond_138
    sget-object v1, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v1, :cond_149

    .line 2631
    sget-object v1, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v12, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v12, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/ActivityTrigger;->activityResumeTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Z)V

    .line 2635
    :cond_149
    sget-object v1, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    if-eqz v1, :cond_158

    .line 2636
    sget-object v1, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    iget-object v1, v12, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v2, v12, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 2637
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityPluginDelegate;->activityInvokeNotification(Ljava/lang/String;Z)V

    .line 2641
    :cond_158
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v1

    if-nez v1, :cond_17e

    .line 2642
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v1, :cond_16c

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v1, :cond_16c

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_174

    :cond_16c
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "resumeTopActivityLocked: Skip resume: some activity pausing."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    :cond_174
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_17d

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2645
    :cond_17d
    return v10

    .line 2648
    :cond_17e
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->setLaunchSource(I)V

    .line 2650
    const/4 v1, 0x0

    .line 2651
    .local v1, "lastResumedCanPip":Z
    const/4 v2, 0x0

    .line 2652
    .local v2, "lastResumed":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v14

    .line 2653
    .local v14, "lastFocusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v14, :cond_1d7

    if-eq v14, v7, :cond_1d7

    .line 2656
    iget-object v2, v14, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2657
    if-eqz v0, :cond_1c8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_1c8

    invoke-virtual {v14, v12}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_1c8

    .line 2660
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v3, :cond_1c7

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Overriding userLeaving to false next="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " lastResumed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    :cond_1c7
    const/4 v0, 0x0

    .line 2664
    :cond_1c8
    if-eqz v2, :cond_1d5

    const-string/jumbo v3, "resumeTopActivity"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1d5

    move v3, v11

    goto :goto_1d6

    :cond_1d5
    move v3, v10

    :goto_1d6
    move v1, v3

    .line 2671
    .end local v0    # "userLeaving":Z
    .end local v1    # "lastResumedCanPip":Z
    .end local v2    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .local v5, "lastResumed":Lcom/android/server/am/ActivityRecord;
    .local v6, "userLeaving":Z
    .local v15, "lastResumedCanPip":Z
    :cond_1d7
    move v6, v0

    move v15, v1

    move-object v5, v2

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1e6

    if-nez v15, :cond_1e6

    move v0, v11

    goto :goto_1e7

    :cond_1e6
    move v0, v10

    :goto_1e7
    move/from16 v16, v0

    .line 2674
    .local v16, "resumeWhilePausing":Z
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v6, v12, v10}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZLcom/android/server/am/ActivityRecord;Z)Z

    move-result v0

    .line 2675
    .local v0, "pausing":Z
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_215

    .line 2676
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_210

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeTopActivityLocked: Pausing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    :cond_210
    invoke-virtual {v7, v6, v10, v12, v10}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2680
    .end local v0    # "pausing":Z
    .local v17, "pausing":Z
    :cond_215
    move/from16 v17, v0

    const/4 v4, 0x0

    if-eqz v17, :cond_24c

    if-nez v16, :cond_24c

    .line 2681
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_224

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_22c

    :cond_224
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "resumeTopActivityLocked: Skip resume: need to start pausing"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    :cond_22c
    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_23d

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_23d

    .line 2688
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1, v11, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2690
    :cond_23d
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_246

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2691
    :cond_246
    if-eqz v5, :cond_24b

    .line 2692
    invoke-virtual {v5, v11}, Lcom/android/server/am/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 2694
    :cond_24b
    return v11

    .line 2695
    :cond_24c
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v12, :cond_288

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v12, v0}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_288

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2696
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_288

    .line 2702
    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2703
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_27e

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeTopActivityLocked: Top activity resumed (dontWaitForPause) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    :cond_27e
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_287

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2706
    :cond_287
    return v11

    .line 2711
    :cond_288
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v0, :cond_35b

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityManagerService;->isAppLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_35b

    .line 2712
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppLocker: blocking resume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :try_start_2b4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfirmIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2715
    .local v0, "confirmIntent":Landroid/content/Intent;
    const-string v1, "OP_APP_LOCKER_BLOCKING_UID"

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2716
    const-string v1, "OP_APP_LOCKER_COMPONENT"

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2db

    .line 2717
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2dd

    :cond_2db
    const-string v2, ""

    .line 2716
    :goto_2dd
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2718
    iget-object v1, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v1, :cond_311

    .line 2719
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v1

    const-string/jumbo v2, "resumeTopActivityInnerLocked->AppLocker"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 2720
    invoke-virtual {v1, v10}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2721
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mRequestHashCode:I

    .line 2722
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setRequestCode(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfirmResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2723
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 2724
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStarter;->execute()I

    goto :goto_33e

    .line 2726
    :cond_311
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v22, ""

    iget-object v4, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v10, v12, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v11, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v11, v11, Lcom/android/server/am/ActivityManagerService;->mRequestHashCode:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, -0x2710

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v0

    move-object/from16 v23, v4

    move-object/from16 v24, v10

    move/from16 v25, v11

    invoke-virtual/range {v18 .. v30}, Lcom/android/server/am/ActivityManagerService;->oemStartActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I
    :try_end_33e
    .catch Ljava/lang/Exception; {:try_start_2b4 .. :try_end_33e} :catch_340

    .line 2731
    :goto_33e
    const/4 v1, 0x1

    return v1

    .line 2732
    .end local v0    # "confirmIntent":Landroid/content/Intent;
    :catch_340
    move-exception v0

    .line 2733
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppLocker: No activity to handle start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfirmIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2741
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_35b
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;

    invoke-virtual {v0, v8, v9, v12}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)Z

    .line 2747
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x458

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 2748
    .local v10, "m":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v11, v0

    .line 2749
    .local v11, "bundle":Landroid/os/Bundle;
    iget-object v4, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 2750
    .local v4, "pkgName":Ljava/lang/String;
    const-string/jumbo v0, "pkg"

    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    invoke-virtual {v10, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2752
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2760
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_3d0

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_3d0

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_3d0

    .line 2762
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_3b2

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no-history finish of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on new resume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    :cond_3b2
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string/jumbo v18, "resume-no-history"

    const/16 v19, 0x0

    move-object v1, v7

    move-object/from16 v20, v4

    move-object v4, v0

    .line 2764
    .end local v4    # "pkgName":Ljava/lang/String;
    .local v20, "pkgName":Ljava/lang/String;
    move-object/from16 v21, v5

    move-object/from16 v5, v18

    .line 2764
    .end local v5    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .local v21, "lastResumed":Lcom/android/server/am/ActivityRecord;
    move/from16 v18, v6

    move/from16 v6, v19

    .line 2764
    .end local v6    # "userLeaving":Z
    .local v18, "userLeaving":Z
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2766
    const/4 v1, 0x0

    iput-object v1, v7, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_3d7

    .line 2770
    .end local v18    # "userLeaving":Z
    .end local v20    # "pkgName":Ljava/lang/String;
    .end local v21    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .restart local v6    # "userLeaving":Z
    :cond_3d0
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v18, v6

    const/4 v1, 0x0

    .line 2770
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "userLeaving":Z
    .restart local v18    # "userLeaving":Z
    .restart local v20    # "pkgName":Ljava/lang/String;
    .restart local v21    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    :goto_3d7
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v0

    if-eqz v0, :cond_3ec

    .line 2771
    if-eqz v12, :cond_3ec

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3ec

    .line 2772
    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v2, "--AM_RESUME_ACTIVITY--"

    invoke-static {v0, v2}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 2777
    :cond_3ec
    if-eqz v8, :cond_493

    if-eq v8, v12, :cond_493

    .line 2778
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_422

    if-eqz v12, :cond_422

    iget-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_422

    .line 2780
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2781
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_493

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resuming top, waiting visible to hide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_493

    .line 2792
    :cond_422
    iget-boolean v0, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_45f

    .line 2793
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 2794
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_493

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not waiting for visible to hide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", waitingVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    .line 2796
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", nowVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v12, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2794
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_493

    .line 2799
    :cond_45f
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_493

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous already visible but still waiting to hide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", waitingVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    .line 2802
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", nowVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v12, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2799
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    :cond_493
    :goto_493
    :try_start_493
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_49f
    .catch Landroid/os/RemoteException; {:try_start_493 .. :try_end_49f} :catch_4c2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_493 .. :try_end_49f} :catch_4a0

    goto :goto_4c3

    .line 2814
    :catch_4a0
    move-exception v0

    .line 2815
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed trying to unstop package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_4c4

    .line 2813
    :catch_4c2
    move-exception v0

    .line 2817
    :goto_4c3
    nop

    .line 2822
    :goto_4c4
    const/4 v0, 0x1

    .line 2823
    .local v0, "anim":Z
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-nez v2, :cond_4d0

    .line 2824
    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    iput-object v2, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    .line 2826
    :cond_4d0
    const/4 v2, 0x6

    if-eqz v8, :cond_590

    .line 2827
    iget-boolean v3, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/16 v4, 0x1083

    if-eqz v3, :cond_534

    .line 2828
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v2, :cond_4f3

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepare close transition: prev="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    :cond_4f3
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_505

    .line 2831
    const/4 v0, 0x0

    .line 2832
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_52e

    .line 2834
    :cond_505
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-ne v3, v5, :cond_513

    .line 2835
    const/4 v3, 0x7

    goto :goto_515

    .line 2836
    :cond_513
    const/16 v3, 0x9

    .line 2834
    :goto_515
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2837
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eq v2, v3, :cond_52e

    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_52e

    .line 2838
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 2841
    :cond_52e
    :goto_52e
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    goto/16 :goto_5ac

    .line 2843
    :cond_534
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_54e

    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prepare open transition: prev="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    :cond_54e
    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_560

    .line 2846
    const/4 v0, 0x0

    .line 2847
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_5ac

    .line 2849
    :cond_560
    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-ne v5, v6, :cond_56d

    .line 2850
    goto :goto_576

    .line 2851
    :cond_56d
    iget-boolean v2, v12, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v2, :cond_574

    .line 2852
    const/16 v2, 0x10

    goto :goto_576

    .line 2853
    :cond_574
    const/16 v2, 0x8

    .line 2849
    :goto_576
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2854
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eq v2, v3, :cond_5ac

    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_5ac

    .line 2855
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    goto :goto_5ac

    .line 2860
    :cond_590
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_59b

    const-string v3, "ActivityManager"

    const-string v4, "Prepare open transition: no previous"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    :cond_59b
    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5af

    .line 2862
    const/4 v0, 0x0

    .line 2863
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2869
    .end local v0    # "anim":Z
    .local v19, "anim":Z
    :cond_5ac
    :goto_5ac
    move/from16 v19, v0

    goto :goto_5b6

    .line 2865
    .end local v19    # "anim":Z
    .restart local v0    # "anim":Z
    :cond_5af
    const/4 v3, 0x0

    iget-object v4, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_5ac

    .line 2869
    .end local v0    # "anim":Z
    .restart local v19    # "anim":Z
    :goto_5b6
    if-eqz v19, :cond_5bc

    .line 2870
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    goto :goto_5bf

    .line 2872
    :cond_5bc
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 2875
    :goto_5bf
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2877
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 2878
    .local v6, "lastStack":Lcom/android/server/am/ActivityStack;
    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_8a0

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_8a0

    .line 2879
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_604

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resume running: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " stopped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v12, Lcom/android/server/am/ActivityRecord;->stopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v12, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    :cond_604
    if-eqz v6, :cond_618

    .line 2890
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_616

    iget-object v0, v6, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_618

    iget-object v0, v6, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v0, :cond_618

    :cond_616
    const/4 v0, 0x1

    goto :goto_619

    :cond_618
    const/4 v0, 0x0

    :goto_619
    move/from16 v22, v0

    .line 2899
    .local v22, "lastActivityTranslucent":Z
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2901
    :try_start_622
    iget-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->visible:Z
    :try_end_624
    .catchall {:try_start_622 .. :try_end_624} :catchall_89a

    if-eqz v0, :cond_631

    :try_start_626
    iget-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->stopped:Z
    :try_end_628
    .catchall {:try_start_626 .. :try_end_628} :catchall_62d

    if-nez v0, :cond_631

    if-eqz v22, :cond_635

    goto :goto_631

    .line 3025
    :catchall_62d
    move-exception v0

    move-object v9, v6

    goto/16 :goto_89c

    .line 2902
    :cond_631
    :goto_631
    const/4 v3, 0x1

    :try_start_632
    invoke-virtual {v12, v3}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 2906
    :cond_635
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 2909
    if-nez v6, :cond_63c

    move-object v4, v1

    goto :goto_63e

    :cond_63c
    iget-object v4, v6, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :goto_63e
    move-object v3, v4

    .line 2910
    .local v3, "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    move-object v4, v0

    .line 2912
    .local v4, "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 2914
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z
    :try_end_64b
    .catchall {:try_start_632 .. :try_end_64b} :catchall_89a

    if-eqz v0, :cond_668

    :try_start_64d
    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moving to RESUMED: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (in existing)"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_668
    .catchall {:try_start_64d .. :try_end_668} :catchall_62d

    .line 2917
    :cond_668
    :try_start_668
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v1, "resumeTopActivityInnerLocked"

    invoke-virtual {v12, v0, v1}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2919
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_674
    .catchall {:try_start_668 .. :try_end_674} :catchall_89a

    move-object/from16 v31, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_678
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2920
    .end local v6    # "lastStack":Lcom/android/server/am/ActivityStack;
    .local v31, "lastStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v7, v12}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2921
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 2925
    const/4 v0, 0x1

    .line 2927
    .local v0, "notUpdated":Z
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1
    :try_end_68a
    .catchall {:try_start_678 .. :try_end_68a} :catchall_896

    if-eqz v1, :cond_69e

    .line 2936
    :try_start_68c
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v7, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v6, 0x0

    const/4 v9, 0x1

    invoke-virtual {v1, v12, v5, v9, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z

    move-result v1

    xor-int/2addr v1, v9

    move v0, v1

    goto :goto_69f

    .line 3025
    .end local v0    # "notUpdated":Z
    .end local v3    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    :catchall_699
    move-exception v0

    move-object/from16 v9, v31

    goto/16 :goto_89c

    .line 2940
    .restart local v0    # "notUpdated":Z
    .restart local v3    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_69e
    move v1, v0

    .line 2940
    .end local v0    # "notUpdated":Z
    .local v1, "notUpdated":Z
    :goto_69f
    if-eqz v1, :cond_6ed

    .line 2946
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2947
    .local v0, "nextNext":Lcom/android/server/am/ActivityRecord;
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v5, :cond_6ad

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_6cb

    :cond_6ad
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity config changed during resume: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", new next: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    :cond_6cb
    if-eq v0, v12, :cond_6d2

    .line 2952
    iget-object v5, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 2954
    :cond_6d2
    iget-boolean v5, v12, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_6da

    iget-boolean v5, v12, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v5, :cond_6de

    .line 2955
    :cond_6da
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 2957
    :cond_6de
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->completeResumeLocked()V

    .line 2958
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_6ea

    iget-object v5, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2959
    :cond_6ea
    monitor-exit v2
    :try_end_6eb
    .catchall {:try_start_68c .. :try_end_6eb} :catchall_699

    const/4 v2, 0x1

    return v2

    .line 2963
    .end local v0    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_6ed
    :try_start_6ed
    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v0, v5}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 2966
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v5, v12, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;
    :try_end_6f9
    .catch Ljava/lang/Exception; {:try_start_6ed .. :try_end_6f9} :catch_821
    .catchall {:try_start_6ed .. :try_end_6f9} :catchall_896

    .line 2967
    .local v5, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v5, :cond_73f

    .line 2968
    :try_start_6fb
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2969
    .local v6, "N":I
    iget-boolean v9, v12, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_73f

    if-lez v6, :cond_73f

    .line 2970
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v9, :cond_72c

    const-string v9, "ActivityManager"
    :try_end_70b
    .catch Ljava/lang/Exception; {:try_start_6fb .. :try_end_70b} :catch_738
    .catchall {:try_start_6fb .. :try_end_70b} :catchall_699

    move/from16 v32, v1

    :try_start_70d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2970
    .end local v1    # "notUpdated":Z
    .local v32, "notUpdated":Z
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v33, v6

    const-string v6, "Delivering results to "

    .line 2970
    .end local v6    # "N":I
    .local v33, "N":I
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_730

    .line 2972
    .end local v32    # "notUpdated":Z
    .end local v33    # "N":I
    .restart local v1    # "notUpdated":Z
    .restart local v6    # "N":I
    :cond_72c
    move/from16 v32, v1

    move/from16 v33, v6

    .line 2972
    .end local v1    # "notUpdated":Z
    .end local v6    # "N":I
    .restart local v32    # "notUpdated":Z
    .restart local v33    # "N":I
    :goto_730
    invoke-static {v5}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_737
    .catch Ljava/lang/Exception; {:try_start_70d .. :try_end_737} :catch_750
    .catchall {:try_start_70d .. :try_end_737} :catchall_699

    .line 2972
    .end local v33    # "N":I
    goto :goto_741

    .line 3002
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v5    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v32    # "notUpdated":Z
    .restart local v1    # "notUpdated":Z
    :catch_738
    move-exception v0

    move/from16 v32, v1

    move-object/from16 v9, v31

    .line 3002
    .end local v1    # "notUpdated":Z
    .restart local v32    # "notUpdated":Z
    goto/16 :goto_826

    .line 2976
    .end local v32    # "notUpdated":Z
    .restart local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v1    # "notUpdated":Z
    .restart local v5    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_73f
    move/from16 v32, v1

    .line 2976
    .end local v1    # "notUpdated":Z
    .restart local v32    # "notUpdated":Z
    :goto_741
    :try_start_741
    iget-object v1, v12, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_743
    .catch Ljava/lang/Exception; {:try_start_741 .. :try_end_743} :catch_81d
    .catchall {:try_start_741 .. :try_end_743} :catchall_896

    if-eqz v1, :cond_755

    .line 2977
    :try_start_745
    iget-object v1, v12, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_74f
    .catch Ljava/lang/Exception; {:try_start_745 .. :try_end_74f} :catch_750
    .catchall {:try_start_745 .. :try_end_74f} :catchall_699

    goto :goto_755

    .line 3002
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v5    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_750
    move-exception v0

    move-object/from16 v9, v31

    goto/16 :goto_826

    .line 2983
    .restart local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v5    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_755
    :goto_755
    :try_start_755
    iget-boolean v1, v12, Lcom/android/server/am/ActivityRecord;->stopped:Z

    invoke-virtual {v12, v1}, Lcom/android/server/am/ActivityRecord;->notifyAppResumed(Z)V

    .line 2985
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v9, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v23, 0x0

    aput-object v9, v6, v23

    .line 2986
    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v23, 0x1

    aput-object v9, v6, v23

    const/4 v9, 0x2

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v9

    const/4 v1, 0x3

    iget-object v9, v12, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v6, v1

    .line 2985
    const/16 v1, 0x7537

    invoke-static {v1, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2989
    const/4 v1, 0x0

    iput-boolean v1, v12, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2990
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getAppWarningsLocked()Lcom/android/server/am/AppWarnings;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/server/am/AppWarnings;->onResumeActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 2991
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v12}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2992
    iget-object v1, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2993
    iget-object v1, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    invoke-virtual {v1, v6}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 2994
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 2995
    iget-object v1, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->repProcState:I

    iget-object v6, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2997
    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v6

    .line 2996
    invoke-static {v1, v6}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v1

    .line 2995
    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 2998
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 3000
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z
    :try_end_7c8
    .catch Ljava/lang/Exception; {:try_start_755 .. :try_end_7c8} :catch_81d
    .catchall {:try_start_755 .. :try_end_7c8} :catchall_896

    if-eqz v1, :cond_7e1

    :try_start_7ca
    const-string v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resumeTopActivityLocked: Resumed "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e1
    .catch Ljava/lang/Exception; {:try_start_7ca .. :try_end_7e1} :catch_750
    .catchall {:try_start_7ca .. :try_end_7e1} :catchall_699

    .line 3024
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v5    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_7e1
    nop

    .line 3025
    .end local v3    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v32    # "notUpdated":Z
    :try_start_7e2
    monitor-exit v2
    :try_end_7e3
    .catchall {:try_start_7e2 .. :try_end_7e3} :catchall_896

    .line 3030
    :try_start_7e3
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->completeResumeLocked()V
    :try_end_7e6
    .catch Ljava/lang/Exception; {:try_start_7e3 .. :try_end_7e6} :catch_7ec

    .line 3039
    nop

    .line 3040
    .end local v22    # "lastActivityTranslucent":Z
    nop

    .line 3055
    move-object/from16 v9, v31

    goto/16 :goto_8e9

    .line 3031
    .restart local v22    # "lastActivityTranslucent":Z
    :catch_7ec
    move-exception v0

    move-object v1, v0

    .line 3034
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown during resume of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3035
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "resume-exception"

    const/4 v6, 0x1

    move-object v1, v7

    move-object/from16 v9, v31

    .line 3035
    .end local v31    # "lastStack":Lcom/android/server/am/ActivityStack;
    .local v9, "lastStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3037
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_81b

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 3038
    :cond_81b
    const/4 v1, 0x1

    return v1

    .line 3002
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v31    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v32    # "notUpdated":Z
    :catch_81d
    move-exception v0

    move-object/from16 v9, v31

    .line 3002
    .end local v31    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v9    # "lastStack":Lcom/android/server/am/ActivityStack;
    goto :goto_826

    .line 3002
    .end local v9    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v32    # "notUpdated":Z
    .restart local v1    # "notUpdated":Z
    .restart local v31    # "lastStack":Lcom/android/server/am/ActivityStack;
    :catch_821
    move-exception v0

    move/from16 v32, v1

    move-object/from16 v9, v31

    .line 3004
    .end local v1    # "notUpdated":Z
    .end local v31    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v9    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v32    # "notUpdated":Z
    :goto_826
    :try_start_826
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_848

    const-string v1, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resume failed; resetting state to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    :cond_848
    const-string/jumbo v1, "resumeTopActivityInnerLocked"

    invoke-virtual {v12, v4, v1}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3009
    if-eqz v3, :cond_858

    .line 3010
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v5, "resumeTopActivityInnerLocked"

    invoke-virtual {v3, v1, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3013
    :cond_858
    const-string v1, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restarting because process died: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    iget-boolean v1, v12, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v1, :cond_876

    .line 3015
    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_883

    .line 3016
    :cond_876
    if-eqz v9, :cond_883

    .line 3017
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isTopStackOnDisplay()Z

    move-result v1

    if-eqz v1, :cond_883

    .line 3018
    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v5, v1, v1}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3021
    :cond_883
    :goto_883
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v12, v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3022
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_893

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 3023
    :cond_893
    monitor-exit v2

    const/4 v1, 0x1

    return v1

    .line 3025
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v9    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v32    # "notUpdated":Z
    .restart local v31    # "lastStack":Lcom/android/server/am/ActivityStack;
    :catchall_896
    move-exception v0

    move-object/from16 v9, v31

    .line 3025
    .end local v31    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v9    # "lastStack":Lcom/android/server/am/ActivityStack;
    goto :goto_89c

    .line 3025
    .end local v9    # "lastStack":Lcom/android/server/am/ActivityStack;
    .local v6, "lastStack":Lcom/android/server/am/ActivityStack;
    :catchall_89a
    move-exception v0

    move-object v9, v6

    .line 3025
    .end local v6    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v9    # "lastStack":Lcom/android/server/am/ActivityStack;
    :goto_89c
    monitor-exit v2
    :try_end_89d
    .catchall {:try_start_826 .. :try_end_89d} :catchall_89e

    throw v0

    :catchall_89e
    move-exception v0

    goto :goto_89c

    .line 3042
    .end local v9    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v22    # "lastActivityTranslucent":Z
    .restart local v6    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_8a0
    move-object v9, v6

    .line 3042
    .end local v6    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v9    # "lastStack":Lcom/android/server/am/ActivityStack;
    iget-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_8a9

    .line 3043
    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_8c8

    .line 3046
    :cond_8a9
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v12, v2, v1, v1}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3049
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_8c8

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restarting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    :cond_8c8
    :goto_8c8
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_8e3

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeTopActivityLocked: Restarting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    :cond_8e3
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v12, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3055
    :goto_8e9
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_8f2

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 3058
    :cond_8f2
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0, v8, v12}, Lcom/android/server/am/IEmbryoManager;->activityTransition(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 3060
    const/4 v1, 0x1

    return v1
.end method

.method private returnsToHomeStack()Z
    .registers 3

    .line 1074
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1075
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1076
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->returnsToHomeStack()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x1

    nop

    .line 1074
    :cond_1f
    return v1
.end method

.method private schedulePauseTimeout(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1505
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1506
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1507
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    .line 1508
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1509
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_22

    const-string v1, "ActivityManager"

    const-string v2, "Waiting for pause to complete..."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    :cond_22
    return-void
.end method

.method private setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2525
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_5

    .line 2526
    return-void

    .line 2529
    :cond_5
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_3a

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setResumedActivity stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " + from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    :cond_3a
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2532
    return-void
.end method

.method private topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;
    .registers 5
    .param p1, "focusableOnly"    # Z

    .line 910
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_24

    .line 911
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 912
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_21

    if-eqz p1, :cond_20

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 913
    :cond_20
    return-object v1

    .line 910
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 916
    .end local v0    # "taskNdx":I
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateBehindFullscreen(ZZLcom/android/server/am/ActivityRecord;)Z
    .registers 7
    .param p1, "stackInvisible"    # Z
    .param p2, "behindFullscreenActivity"    # Z
    .param p3, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2375
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_2f

    .line 2376
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_2e

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fullscreen: at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " stackInvisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " behindFullscreenActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    :cond_2e
    const/4 p2, 0x1

    .line 2382
    :cond_2f
    return p2
.end method

.method private updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toFront"    # Z

    .line 4957
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_13

    .line 4958
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 4962
    if-nez p2, :cond_13

    .line 4963
    iget-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 4966
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->invalidateTaskLayers()V

    .line 4967
    return-void
.end method

.method private updateTransitLocked(ILandroid/app/ActivityOptions;)V
    .registers 5
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 4945
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p2, :cond_17

    .line 4946
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4947
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_14

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 4948
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_17

    .line 4950
    :cond_14
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 4953
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4954
    return-void
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4803
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4805
    .local v0, "origId":J
    :try_start_4
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/server/am/ActivityStack;->activityDestroyedLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 4807
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4808
    nop

    .line 4809
    return-void

    .line 4807
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method final activityDestroyedLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .registers 6
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4816
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p1, :cond_9

    .line 4817
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4820
    :cond_9
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONTAINERS:Z

    if-eqz v0, :cond_23

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityDestroyedLocked: r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4822
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 4823
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4824
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4825
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4829
    :cond_3b
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4830
    return-void
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z

    .line 1667
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v0, :cond_22

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity paused: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1671
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_d5

    .line 1672
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1673
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v4, 0x1

    if-ne v3, v0, :cond_76

    .line 1674
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v2, :cond_5a

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to PAUSED: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1675
    if-eqz p2, :cond_4e

    const-string v5, " (due to timeout)"

    goto :goto_50

    :cond_4e
    const-string v5, " (pause complete)"

    :goto_50
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1674
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_5a
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1678
    :try_start_61
    invoke-direct {p0, v4, v1}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_6d

    .line 1680
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1681
    nop

    .line 1682
    return-void

    .line 1680
    :catchall_6d
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v1

    .line 1684
    :cond_76
    const/16 v3, 0x753c

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1685
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v5, v6

    const/4 v4, 0x3

    .line 1686
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_9c

    .line 1687
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    goto :goto_9e

    :cond_9c
    const-string v7, "(none)"

    :goto_9e
    aput-object v7, v5, v4

    .line 1684
    invoke-static {v3, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1688
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 1689
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v4, "activityPausedLocked"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1690
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_d5

    .line 1691
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v3, :cond_d0

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Executing finish of failed to pause activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :cond_d0
    const-string v3, "activityPausedLocked"

    invoke-virtual {p0, v0, v6, v2, v3}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    .line 1699
    :cond_d5
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v1, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1700
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .registers 4
    .param p1, "taskSwitch"    # Z

    .line 2178
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 2179
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->addStartingWindowsForVisibleActivities(Z)V

    .line 2178
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2181
    .end local v0    # "taskNdx":I
    :cond_18
    return-void
.end method

.method addTask(Lcom/android/server/am/TaskRecord;IZLjava/lang/String;)V
    .registers 8
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "position"    # I
    .param p3, "schedulePictureInPictureModeChange"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 5660
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5661
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result p2

    .line 5662
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 5663
    .local v0, "toTop":Z
    :goto_15
    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/am/ActivityStack;->preAddTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 5665
    .local v1, "prevStack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5666
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setStack(Lcom/android/server/am/ActivityStack;)V

    .line 5668
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 5670
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/am/ActivityStack;->postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V

    .line 5671
    return-void
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5647
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p2, :cond_6

    const v0, 0x7fffffff

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;IZLjava/lang/String;)V

    .line 5648
    if-eqz p2, :cond_16

    .line 5650
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 5653
    :cond_16
    return-void
.end method

.method addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "scheduleIdle"    # Z
    .param p3, "idleDelayed"    # Z

    .line 1810
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1811
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1819
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    .line 1820
    const-string v0, "com.sankuai.meituan"

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1821
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v0, :cond_3b

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v1, "OauthLoginActivity"

    .line 1822
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1823
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 1825
    :cond_3b
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToStopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-gt v0, v1, :cond_70

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1836
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_6e

    goto :goto_70

    :cond_6e
    const/4 v2, 0x0

    nop

    :cond_70
    :goto_70
    move v0, v2

    .line 1837
    .local v0, "forceIdle":Z
    if-nez p2, :cond_7a

    if-eqz v0, :cond_76

    goto :goto_7a

    .line 1846
    :cond_76
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    goto :goto_ac

    .line 1838
    :cond_7a
    :goto_7a
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_9f

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling idle now: forceIdle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "immediate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, p3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    :cond_9f
    if-nez p3, :cond_a7

    .line 1841
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto :goto_ac

    .line 1843
    :cond_a7
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1848
    :goto_ac
    return-void
.end method

.method adjustFocusToNextFocusableStack(Ljava/lang/String;)Z
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 3761
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method affectedBySplitScreenResize()Z
    .registers 4

    .line 2207
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->supportsSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2208
    return v1

    .line 2210
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 2211
    .local v0, "windowingMode":I
    const/4 v2, 0x5

    if-eq v0, v2, :cond_14

    const/4 v2, 0x2

    if-eq v0, v2, :cond_14

    const/4 v1, 0x1

    nop

    :cond_14
    return v1
.end method

.method awakeFromSleepingLocked()V
    .registers 7

    .line 1386
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 1387
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1388
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "activityNdx":I
    :goto_19
    if-ltz v3, :cond_28

    .line 1389
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1388
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1386
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1392
    .end local v0    # "taskNdx":I
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_3d

    .line 1393
    const-string v0, "ActivityManager"

    const-string v2, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 1396
    :cond_3d
    return-void
.end method

.method protected canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 8
    .param p1, "pipCandidate"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "toFrontTask"    # Lcom/android/server/am/TaskRecord;
    .param p3, "toFrontActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "opts"    # Landroid/app/ActivityOptions;

    .line 3344
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    if-eqz p4, :cond_a

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3346
    return v0

    .line 3348
    :cond_a
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_29

    .line 3352
    :cond_13
    if-eqz p2, :cond_1a

    .line 3353
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    goto :goto_1e

    :cond_1a
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3354
    .local v1, "targetStack":Lcom/android/server/am/ActivityStack;
    :goto_1e
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3356
    return v0

    .line 3358
    :cond_27
    const/4 v0, 0x1

    return v0

    .line 3350
    .end local v1    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_29
    :goto_29
    return v0
.end method

.method cancelInitializingActivities()V
    .registers 9

    .line 2440
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2441
    .local v0, "topActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x1

    .line 2444
    .local v1, "aboveTop":Z
    const/4 v2, 0x0

    .line 2446
    .local v2, "behindFullscreenActivity":Z
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 2449
    const/4 v1, 0x0

    .line 2450
    const/4 v2, 0x1

    .line 2453
    :cond_f
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "taskNdx":I
    :goto_17
    if-ltz v3, :cond_46

    .line 2454
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2455
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "activityNdx":I
    :goto_29
    if-ltz v5, :cond_43

    .line 2456
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 2457
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_3a

    .line 2458
    if-ne v6, v0, :cond_36

    .line 2459
    const/4 v1, 0x0

    .line 2461
    :cond_36
    iget-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    or-int/2addr v2, v7

    .line 2462
    goto :goto_40

    .line 2465
    :cond_3a
    invoke-virtual {v6, v2}, Lcom/android/server/am/ActivityRecord;->removeOrphanedStartingWindow(Z)V

    .line 2466
    iget-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    or-int/2addr v2, v7

    .line 2455
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_40
    add-int/lit8 v5, v5, -0x1

    goto :goto_29

    .line 2453
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "activityNdx":I
    :cond_43
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 2469
    .end local v3    # "taskNdx":I
    :cond_46
    return-void
.end method

.method checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z
    .registers 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "shouldBeVisible"    # Z
    .param p3, "isTop"    # Z

    .line 2229
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    iget v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_a

    :cond_9
    move v0, v1

    .line 2230
    .local v0, "displayId":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v2

    .line 2231
    invoke-virtual {v2, v0}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v2

    .line 2232
    .local v2, "keyguardOrAodShowing":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v3

    .line 2233
    .local v3, "keyguardLocked":Z
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->canShowWhenLocked()Z

    move-result v4

    .line 2234
    .local v4, "showWhenLocked":Z
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->hasDismissKeyguardWindows()Z

    move-result v5

    .line 2235
    .local v5, "dismissKeyguard":Z
    const/4 v6, 0x1

    if-eqz p2, :cond_50

    .line 2236
    if-eqz v5, :cond_31

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v7, :cond_31

    .line 2237
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    .line 2242
    :cond_31
    if-eqz p3, :cond_38

    .line 2243
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    or-int/2addr v7, v4

    iput-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 2246
    :cond_38
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->canShowWithInsecureKeyguard()Z

    move-result v7

    if-eqz v7, :cond_4c

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2247
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/KeyguardController;->canDismissKeyguard()Z

    move-result v7

    if-eqz v7, :cond_4c

    move v7, v6

    goto :goto_4d

    :cond_4c
    move v7, v1

    .line 2248
    .local v7, "canShowWithKeyguard":Z
    :goto_4d
    if-eqz v7, :cond_50

    .line 2249
    return v6

    .line 2252
    .end local v7    # "canShowWithKeyguard":Z
    :cond_50
    if-eqz v2, :cond_64

    .line 2255
    if-eqz p2, :cond_62

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v7

    .line 2256
    invoke-virtual {v7, p1, v5}, Lcom/android/server/am/KeyguardController;->canShowActivityWhileKeyguardShowing(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 2255
    move v1, v6

    goto :goto_63

    .line 2256
    :cond_62
    nop

    .line 2255
    :goto_63
    return v1

    .line 2257
    :cond_64
    if-eqz v3, :cond_77

    .line 2258
    if-eqz p2, :cond_76

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v7

    invoke-virtual {v7, v5, v4}, Lcom/android/server/am/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v7

    if-eqz v7, :cond_76

    move v1, v6

    nop

    :cond_76
    return v1

    .line 2261
    :cond_77
    return p2
.end method

.method checkReadyForSleep()V
    .registers 3

    .line 1415
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1416
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 1418
    :cond_13
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .registers 8
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .line 2392
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_2f

    .line 2393
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 2394
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2395
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1a
    if-ltz v3, :cond_2c

    .line 2396
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 2397
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v5, p1, :cond_29

    .line 2398
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2395
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_29
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 2392
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2402
    .end local v0    # "taskNdx":I
    :cond_2f
    return-void
.end method

.method closeSystemDialogsLocked()V
    .registers 11

    .line 5293
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_3a

    .line 5294
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5295
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "activityNdx":I
    :goto_1a
    if-ltz v2, :cond_37

    .line 5296
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5297
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_34

    .line 5298
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "close-sys"

    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5295
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 5293
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5302
    .end local v0    # "taskNdx":I
    :cond_3a
    return-void
.end method

.method continueUpdateBounds()V
    .registers 6

    .line 860
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 861
    .local v0, "wasDeferred":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 862
    if-eqz v0, :cond_32

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    if-eqz v1, :cond_32

    .line 863
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 864
    move-object v1, v2

    goto :goto_18

    .line 863
    :cond_16
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    .line 864
    :goto_18
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 865
    move-object v3, v2

    goto :goto_24

    .line 864
    :cond_22
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    .line 865
    :goto_24
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_2f

    :cond_2d
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    .line 863
    :goto_2f
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 867
    :cond_32
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2386
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2387
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2388
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2389
    return-void
.end method

.method createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/StackWindowController;
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "onTop"    # Z
    .param p3, "outBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/graphics/Rect;",
            ")TT;"
        }
    .end annotation

    .line 526
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
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
    .registers 17
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z

    .line 5618
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
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
    .registers 25
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z
    .param p7, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p8, "source"    # Lcom/android/server/am/ActivityRecord;
    .param p9, "options"    # Landroid/app/ActivityOptions;

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p6

    .line 5626
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v2, p1

    move-object v3, v7

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/TaskRecord;->create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 5629
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    const-string v2, "createTaskRecord"

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    .line 5630
    iget v2, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_22

    iget v2, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_23

    :cond_22
    move v2, v3

    .line 5631
    .local v2, "displayId":I
    :goto_23
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v4

    .line 5632
    invoke-virtual {v4, v2}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v4

    .line 5633
    .local v4, "isLockscreenShown":Z
    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v9

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 5634
    move-object v10, v1

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v5

    if-nez v5, :cond_59

    .line 5635
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->matchParentBounds()Z

    move-result v5

    if-nez v5, :cond_59

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v5

    if-eqz v5, :cond_59

    if-nez v4, :cond_59

    .line 5636
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 5638
    :cond_59
    iget v5, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_61

    const/4 v3, 0x1

    nop

    :cond_61
    invoke-virtual {v1, v8, v3}, Lcom/android/server/am/TaskRecord;->createWindowContainer(ZZ)V

    .line 5639
    return-object v1
.end method

.method deferScheduleMultiWindowModeChanged()Z
    .registers 2

    .line 840
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method deferUpdateBounds()V
    .registers 2

    .line 848
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    if-nez v0, :cond_a

    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 850
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    .line 852
    :cond_a
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
    .registers 14
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "removeFromApp"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 4700
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v0, :cond_39

    :cond_8
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing activity from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4702
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2d

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_2f

    :cond_2d
    const-string v2, "(null)"

    :goto_2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4700
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4704
    :cond_39
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_67

    .line 4705
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_66

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already destroying.skipping request with reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4707
    :cond_66
    return v1

    .line 4710
    :cond_67
    const/16 v0, 0x7542

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 4711
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

    .line 4712
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

    .line 4710
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4714
    const/4 v0, 0x0

    .line 4716
    .local v0, "removedFromHistory":Z
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4718
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_a0

    goto :goto_a1

    :cond_a0
    move v4, v1

    :goto_a1
    move v2, v4

    .line 4720
    .local v2, "hadApp":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_1bb

    .line 4721
    if-eqz p2, :cond_ec

    .line 4722
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4723
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, v5, :cond_cd

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_cd

    .line 4724
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 4725
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x19

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    .line 4728
    :cond_cd
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 4731
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4733
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 4734
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 4738
    :cond_ec
    move v4, v1

    .line 4741
    .local v4, "skipDestroy":Z
    :try_start_ed
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v5, :cond_107

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Destroying: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4742
    :cond_107
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 4743
    invoke-static {v8, v9}, Landroid/app/servertransaction/DestroyActivityItem;->obtain(ZI)Landroid/app/servertransaction/DestroyActivityItem;

    move-result-object v8

    .line 4742
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_11e} :catch_11f

    .line 4754
    goto :goto_13a

    .line 4744
    :catch_11f
    move-exception v5

    .line 4749
    .local v5, "e":Ljava/lang/Exception;
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_13a

    .line 4750
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " exceptionInScheduleDestroy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4751
    const/4 v0, 0x1

    .line 4752
    const/4 v4, 0x1

    .line 4756
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_13a
    :goto_13a
    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 4765
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_178

    if-nez v4, :cond_178

    .line 4766
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_161

    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving to DESTROYING: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " (destroy requested)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4768
    :cond_161
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v5, "destroyActivityLocked. finishing and not skipping destroy"

    invoke-virtual {p1, v3, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4770
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-virtual {v3, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 4771
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4772
    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_1ba

    .line 4773
    :cond_178
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_197

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Moving to DESTROYED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " (destroy skipped)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4775
    :cond_197
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v6, "destroyActivityLocked. not finishing or skipping destroy"

    invoke-virtual {p1, v5, v6}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4777
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v5, :cond_1b8

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clearing app during destroy for activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4778
    :cond_1b8
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4780
    .end local v4    # "skipDestroy":Z
    :goto_1ba
    goto :goto_217

    .line 4782
    :cond_1bb
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1d5

    .line 4783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " hadNoApp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4784
    const/4 v0, 0x1

    goto :goto_217

    .line 4786
    :cond_1d5
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_1f4

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving to DESTROYED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " (no app)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4787
    :cond_1f4
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v5, "destroyActivityLocked. not finishing and had no app"

    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4788
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v4, :cond_215

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clearing app during destroy for activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4789
    :cond_215
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4793
    :goto_217
    iput v1, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 4795
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23e

    if-eqz v2, :cond_23e

    .line 4796
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " being finished, but not in LRU list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4799
    :cond_23e
    return v0
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .registers 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    .line 5460
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5461
    const/4 v1, 0x0

    return v1

    .line 5463
    :cond_e
    const-string v14, "    "

    .line 5464
    .local v14, "prefix":Ljava/lang/String;
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    .local v1, "taskNdx":I
    :goto_18
    move v12, v1

    .end local v1    # "taskNdx":I
    .local v12, "taskNdx":I
    if-ltz v12, :cond_de

    .line 5465
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 5466
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    if-eqz p6, :cond_2b

    .line 5467
    const-string v1, ""

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5469
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Task id #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMinWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMinHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mLastNonFullscreenBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5475
    const-string v1, "      "

    invoke-virtual {v11, v13, v1}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5476
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const-string v4, "    "

    const-string v5, "Hist"

    const/4 v6, 0x1

    xor-int/lit8 v7, p3, 0x1

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .local v17, "task":Lcom/android/server/am/TaskRecord;
    move/from16 v16, v12

    move-object/from16 v12, v17

    .end local v12    # "taskNdx":I
    .local v16, "taskNdx":I
    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    .line 5464
    .end local v17    # "task":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v1, v16, -0x1

    .end local v16    # "taskNdx":I
    .restart local v1    # "taskNdx":I
    goto/16 :goto_18

    .line 5479
    .end local v1    # "taskNdx":I
    :cond_de
    return v15
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .registers 5
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    .line 2015
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    .line 2017
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V
    .registers 31
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 2027
    move/from16 v9, p4

    const/4 v10, 0x0

    iput-boolean v10, v7, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 2028
    const/4 v11, 0x0

    iput-object v11, v7, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    .line 2029
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->beginActivityVisibilityUpdate()V

    .line 2031
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    move-object v12, v0

    .line 2032
    .local v12, "top":Lcom/android/server/am/ActivityRecord;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_40

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureActivitiesVisible behind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " configChanges=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2033
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2032
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :cond_40
    if-eqz v12, :cond_45

    .line 2035
    invoke-direct {v7, v12}, Lcom/android/server/am/ActivityStack;->checkTranslucentActivityWaiting(Lcom/android/server/am/ActivityRecord;)V

    .line 2040
    :cond_45
    const/4 v13, 0x1

    if-eqz v12, :cond_4a

    move v0, v13

    goto :goto_4b

    :cond_4a
    move v0, v10

    .line 2041
    .local v0, "aboveTop":Z
    :goto_4b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    move v14, v1

    .line 2042
    .local v14, "stackShouldBeVisible":Z
    if-nez v14, :cond_54

    move v1, v13

    goto :goto_55

    :cond_54
    move v1, v10

    .line 2043
    .local v1, "behindFullscreenActivity":Z
    :goto_55
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 2044
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_65

    move v2, v13

    goto :goto_66

    :cond_65
    move v2, v10

    .line 2045
    .local v2, "resumeNextActivity":Z
    :goto_66
    nop

    .line 2046
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityDisplay;->isTopNotPinnedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_79

    move v3, v13

    goto :goto_7a

    :cond_79
    move v3, v10

    :goto_7a
    move v15, v3

    .line 2047
    .local v15, "isTopNotPinnedStack":Z
    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_81
    .catchall {:try_start_15 .. :try_end_81} :catchall_322

    sub-int/2addr v3, v13

    move/from16 v5, p2

    move v4, v2

    move v2, v1

    move v1, v0

    .end local v0    # "aboveTop":Z
    .end local p2    # "configChanges":I
    .local v1, "aboveTop":Z
    .local v2, "behindFullscreenActivity":Z
    .local v3, "taskNdx":I
    .local v4, "resumeNextActivity":Z
    .local v5, "configChanges":I
    :goto_87
    move v6, v3

    .end local v3    # "taskNdx":I
    .local v6, "taskNdx":I
    if-ltz v6, :cond_307

    .line 2053
    :try_start_8a
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;
    :try_end_92
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8a .. :try_end_92} :catch_2ea
    .catchall {:try_start_8a .. :try_end_92} :catchall_2e6

    .line 2057
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    nop

    .line 2056
    nop

    .line 2059
    :try_start_94
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2060
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16
    :try_end_9a
    .catchall {:try_start_94 .. :try_end_9a} :catchall_2e6

    add-int/lit8 v16, v16, -0x1

    move/from16 v17, v4

    move/from16 v18, v5

    .end local v4    # "resumeNextActivity":Z
    .end local v5    # "configChanges":I
    .local v16, "activityNdx":I
    .local v17, "resumeNextActivity":Z
    .local v18, "configChanges":I
    :goto_a0
    move/from16 v5, v16

    .end local v16    # "activityNdx":I
    .local v5, "activityNdx":I
    if-ltz v5, :cond_29a

    .line 2061
    :try_start_a4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 2062
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v11, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v11, :cond_af

    .line 2063
    goto :goto_b9

    .line 2065
    :cond_af
    if-ne v4, v12, :cond_b3

    move v11, v13

    goto :goto_b4

    :cond_b3
    move v11, v10

    .line 2066
    .local v11, "isTop":Z
    :goto_b4
    if-eqz v1, :cond_c1

    if-nez v11, :cond_c1

    .line 2067
    nop

    .line 2060
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "isTop":Z
    :goto_b9
    move-object v8, v3

    move/from16 v20, v6

    move/from16 v23, v10

    move v3, v13

    goto/16 :goto_288

    .line 2069
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v11    # "isTop":Z
    :cond_c1
    const/16 v16, 0x0

    .line 2072
    .end local v1    # "aboveTop":Z
    .local v16, "aboveTop":Z
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityRecord;->shouldBeVisibleIgnoringKeyguard(Z)Z

    move-result v1

    .line 2074
    .local v1, "visibleIgnoringKeyguard":Z
    iput-boolean v1, v4, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    .line 2077
    if-eqz v11, :cond_cf

    if-eqz v15, :cond_cf

    move v10, v13

    nop

    :cond_cf
    invoke-virtual {v7, v4, v1, v10}, Lcom/android/server/am/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v10

    .line 2079
    .local v10, "reallyVisible":Z
    if-eqz v1, :cond_df

    .line 2080
    if-nez v14, :cond_d8

    goto :goto_d9

    :cond_d8
    const/4 v13, 0x0

    :goto_d9
    invoke-direct {v7, v13, v2, v4}, Lcom/android/server/am/ActivityStack;->updateBehindFullscreen(ZZLcom/android/server/am/ActivityRecord;)Z

    move-result v13

    move v2, v13

    goto :goto_e0

    .line 2091
    :cond_df
    move v13, v2

    .end local v2    # "behindFullscreenActivity":Z
    .local v13, "behindFullscreenActivity":Z
    :goto_e0
    move-object/from16 v20, v3

    const/4 v2, 0x1

    new-array v3, v2, [I

    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v20, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v2, 0x47

    const/16 v19, 0x0

    aput v2, v3, v19

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_f9

    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mIsFingerprintEnabled:Z

    if-eqz v2, :cond_f9

    const/4 v2, 0x1

    goto :goto_fa

    :cond_f9
    const/4 v2, 0x0

    :goto_fa
    move/from16 v21, v2

    .line 2093
    .local v21, "shouldFPaccelerate":Z
    if-nez v10, :cond_11a

    if-eqz v1, :cond_11a

    if-nez v21, :cond_108

    .line 2094
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_11a

    :cond_108
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2095
    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_11a

    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2096
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_11a

    const/4 v2, 0x1

    goto :goto_11b

    :cond_11a
    const/4 v2, 0x0

    :goto_11b
    move/from16 v22, v2

    .line 2097
    .local v22, "makeFocusedStackVisible":Z
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_15a

    if-eqz v22, :cond_15a

    .line 2098
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v1

    const-string v1, "Make Home visible "

    .end local v1    # "visibleIgnoringKeyguard":Z
    .local v23, "visibleIgnoringKeyguard":Z
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " finishing="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2099
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " stackShouldBeVisible="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2098
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15c

    .line 2101
    .end local v23    # "visibleIgnoringKeyguard":Z
    .restart local v1    # "visibleIgnoringKeyguard":Z
    :cond_15a
    move/from16 v23, v1

    .end local v1    # "visibleIgnoringKeyguard":Z
    .restart local v23    # "visibleIgnoringKeyguard":Z
    :goto_15c
    if-nez v10, :cond_1ba

    if-eqz v22, :cond_161

    goto :goto_1ba

    .line 2140
    :cond_161
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_1ab

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Make invisible? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " finishing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2141
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " stackShouldBeVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " behindFullscreenActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLaunchTaskBehind="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2140
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :cond_1ab
    invoke-direct {v7, v4}, Lcom/android/server/am/ActivityStack;->makeInvisible(Lcom/android/server/am/ActivityRecord;)V

    .line 2060
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "reallyVisible":Z
    .end local v11    # "isTop":Z
    .end local v21    # "shouldFPaccelerate":Z
    .end local v22    # "makeFocusedStackVisible":Z
    .end local v23    # "visibleIgnoringKeyguard":Z
    move v2, v13

    move/from16 v1, v16

    move-object/from16 v8, v20

    const/4 v3, 0x1

    const/16 v23, 0x0

    move/from16 v20, v6

    goto/16 :goto_288

    .line 2103
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "reallyVisible":Z
    .restart local v11    # "isTop":Z
    .restart local v21    # "shouldFPaccelerate":Z
    .restart local v22    # "makeFocusedStackVisible":Z
    .restart local v23    # "visibleIgnoringKeyguard":Z
    :cond_1ba
    :goto_1ba
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_1ea

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Make visible? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " finishing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2104
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2103
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    :cond_1ea
    if-eq v4, v8, :cond_1f6

    if-eqz v9, :cond_1f6

    .line 2108
    move/from16 v3, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v3, v1}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    goto :goto_1f9

    .line 2112
    :cond_1f6
    move/from16 v3, p3

    const/4 v2, 0x0

    :goto_1f9
    iget-object v1, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_250

    iget-object v1, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_204

    goto :goto_250

    .line 2122
    :cond_204
    iget-boolean v1, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v1, :cond_240

    .line 2124
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_222

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping: already visible at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    :cond_222
    iget-boolean v1, v4, Lcom/android/server/am/ActivityRecord;->mClientVisibilityDeferred:Z

    if-eqz v1, :cond_22b

    if-eqz v9, :cond_22b

    .line 2128
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->makeClientVisible()V

    .line 2131
    :cond_22b
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->handleAlreadyVisible()Z

    move-result v1

    if-eqz v1, :cond_243

    .line 2132
    const/4 v1, 0x0

    .line 2138
    .end local v17    # "resumeNextActivity":Z
    .local v1, "resumeNextActivity":Z
    move/from16 v17, v1

    move-object/from16 v24, v4

    move-object/from16 v8, v20

    move/from16 v19, v23

    const/4 v3, 0x1

    const/16 v23, 0x0

    move/from16 v20, v6

    goto :goto_27f

    .line 2135
    .end local v1    # "resumeNextActivity":Z
    .restart local v17    # "resumeNextActivity":Z
    :cond_240
    invoke-virtual {v4, v8, v9}, Lcom/android/server/am/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2138
    :cond_243
    move-object/from16 v24, v4

    move v9, v5

    move-object/from16 v8, v20

    move/from16 v19, v23

    const/4 v3, 0x1

    const/16 v23, 0x0

    move/from16 v20, v6

    goto :goto_27e

    .line 2113
    :cond_250
    :goto_250
    move/from16 v19, v23

    move-object v1, v7

    .end local v23    # "visibleIgnoringKeyguard":Z
    .local v19, "visibleIgnoringKeyguard":Z
    const/16 v23, 0x0

    move-object v2, v8

    move-object/from16 v8, v20

    move/from16 v3, v18

    .end local v20    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v8, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v24, v4

    move v4, v11

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .local v24, "r":Lcom/android/server/am/ActivityRecord;
    move v9, v5

    move/from16 v5, v17

    .end local v5    # "activityNdx":I
    .local v9, "activityNdx":I
    move/from16 v20, v6

    move-object/from16 v6, v24

    .end local v6    # "taskNdx":I
    .local v20, "taskNdx":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->makeVisibleAndRestartIfNeeded(Lcom/android/server/am/ActivityRecord;IZZLcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_27d

    .line 2115
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v9, v1, :cond_278

    .line 2117
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 2138
    .end local v9    # "activityNdx":I
    .local v1, "activityNdx":I
    move v5, v1

    goto :goto_27f

    .line 2119
    .end local v1    # "activityNdx":I
    .restart local v9    # "activityNdx":I
    :cond_278
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2138
    .end local v17    # "resumeNextActivity":Z
    .local v1, "resumeNextActivity":Z
    move/from16 v17, v1

    goto :goto_27e

    .end local v1    # "resumeNextActivity":Z
    .restart local v17    # "resumeNextActivity":Z
    :cond_27d
    const/4 v3, 0x1

    .end local v9    # "activityNdx":I
    .restart local v5    # "activityNdx":I
    :goto_27e
    move v5, v9

    :goto_27f
    move-object/from16 v1, v24

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .end local v24    # "r":Lcom/android/server/am/ActivityRecord;
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    or-int v18, v18, v2

    .line 2060
    move v2, v13

    move/from16 v1, v16

    .end local v10    # "reallyVisible":Z
    .end local v11    # "isTop":Z
    .end local v13    # "behindFullscreenActivity":Z
    .end local v16    # "aboveTop":Z
    .end local v19    # "visibleIgnoringKeyguard":Z
    .end local v21    # "shouldFPaccelerate":Z
    .end local v22    # "makeFocusedStackVisible":Z
    .local v1, "aboveTop":Z
    .restart local v2    # "behindFullscreenActivity":Z
    :goto_288
    add-int/lit8 v16, v5, -0x1

    .end local v5    # "activityNdx":I
    .local v16, "activityNdx":I
    move v13, v3

    move-object v3, v8

    move/from16 v6, v20

    move/from16 v10, v23

    move-object/from16 v8, p1

    move/from16 v9, p4

    const/4 v11, 0x0

    goto/16 :goto_a0

    .line 2173
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    .end local v1    # "aboveTop":Z
    .end local v2    # "behindFullscreenActivity":Z
    .end local v8    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "stackShouldBeVisible":Z
    .end local v15    # "isTopNotPinnedStack":Z
    .end local v16    # "activityNdx":I
    .end local v17    # "resumeNextActivity":Z
    .end local v20    # "taskNdx":I
    :catchall_297
    move-exception v0

    goto/16 :goto_325

    .line 2148
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v1    # "aboveTop":Z
    .restart local v2    # "behindFullscreenActivity":Z
    .restart local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v6    # "taskNdx":I
    .restart local v12    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v14    # "stackShouldBeVisible":Z
    .restart local v15    # "isTopNotPinnedStack":Z
    .restart local v17    # "resumeNextActivity":Z
    :cond_29a
    move-object v8, v3

    move/from16 v20, v6

    move/from16 v23, v10

    move v3, v13

    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "taskNdx":I
    .restart local v8    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v20    # "taskNdx":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    .line 2149
    .local v4, "windowingMode":I
    const/4 v5, 0x5

    if-ne v4, v5, :cond_2af

    .line 2153
    if-nez v14, :cond_2ab

    move v5, v3

    goto :goto_2ad

    :cond_2ab
    move/from16 v5, v23

    :goto_2ad
    move v2, v5

    goto :goto_2e1

    .line 2154
    :cond_2af
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_2e1

    .line 2155
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v5, :cond_2df

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Home task: at "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " stackShouldBeVisible="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " behindFullscreenActivity="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2df
    .catchall {:try_start_a4 .. :try_end_2df} :catchall_297

    .line 2163
    :cond_2df
    const/4 v0, 0x1

    .line 2047
    .end local v2    # "behindFullscreenActivity":Z
    .end local v4    # "windowingMode":I
    .end local v8    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v0, "behindFullscreenActivity":Z
    move v2, v0

    .end local v0    # "behindFullscreenActivity":Z
    .end local v17    # "resumeNextActivity":Z
    .end local v18    # "configChanges":I
    .restart local v2    # "behindFullscreenActivity":Z
    .local v4, "resumeNextActivity":Z
    .local v5, "configChanges":I
    :cond_2e1
    :goto_2e1
    move/from16 v4, v17

    move/from16 v5, v18

    goto :goto_2fa

    .line 2173
    .end local v1    # "aboveTop":Z
    .end local v2    # "behindFullscreenActivity":Z
    .end local v4    # "resumeNextActivity":Z
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "stackShouldBeVisible":Z
    .end local v15    # "isTopNotPinnedStack":Z
    .end local v20    # "taskNdx":I
    :catchall_2e6
    move-exception v0

    move/from16 v18, v5

    goto :goto_325

    .line 2054
    .restart local v1    # "aboveTop":Z
    .restart local v2    # "behindFullscreenActivity":Z
    .restart local v4    # "resumeNextActivity":Z
    .restart local v6    # "taskNdx":I
    .restart local v12    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v14    # "stackShouldBeVisible":Z
    .restart local v15    # "isTopNotPinnedStack":Z
    :catch_2ea
    move-exception v0

    move/from16 v20, v6

    move/from16 v23, v10

    move v3, v13

    .line 2055
    .end local v6    # "taskNdx":I
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v20    # "taskNdx":I
    :try_start_2f0
    const-string v6, "ActivityManager"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    nop

    .line 2047
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_2fa
    add-int/lit8 v0, v20, -0x1

    .end local v20    # "taskNdx":I
    .local v0, "taskNdx":I
    move v13, v3

    move/from16 v10, v23

    move-object/from16 v8, p1

    move/from16 v9, p4

    const/4 v11, 0x0

    move v3, v0

    goto/16 :goto_87

    .line 2167
    .end local v0    # "taskNdx":I
    :cond_307
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_317

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2168
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_317

    .line 2170
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_317
    .catchall {:try_start_2f0 .. :try_end_317} :catchall_2e6

    .line 2173
    .end local v1    # "aboveTop":Z
    .end local v2    # "behindFullscreenActivity":Z
    .end local v4    # "resumeNextActivity":Z
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "stackShouldBeVisible":Z
    .end local v15    # "isTopNotPinnedStack":Z
    :cond_317
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    .line 2174
    nop

    .line 2175
    return-void

    .line 2173
    .end local v5    # "configChanges":I
    .restart local p2    # "configChanges":I
    :catchall_322
    move-exception v0

    move/from16 v18, p2

    .end local p2    # "configChanges":I
    .restart local v18    # "configChanges":I
    :goto_325
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 12
    .param p1, "start"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "preserveWindow"    # Z

    .line 5144
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p1, :cond_55

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_7

    goto :goto_55

    .line 5148
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 5149
    .local v0, "startTask":Lcom/android/server/am/TaskRecord;
    const/4 v1, 0x0

    .line 5150
    .local v1, "behindFullscreen":Z
    const/4 v2, 0x0

    .line 5152
    .local v2, "updatedConfig":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .local v3, "taskIndex":I
    :goto_13
    if-ltz v3, :cond_4d

    .line 5153
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 5154
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5156
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-ne v6, v4, :cond_2a

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    goto :goto_30

    :cond_2a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 5157
    .local v6, "activityIndex":I
    :goto_30
    if-ltz v6, :cond_47

    .line 5158
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 5159
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v8, 0x0

    invoke-virtual {v7, v8, p2}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v8

    or-int/2addr v2, v8

    .line 5161
    iget-boolean v8, v7, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v8, :cond_44

    .line 5162
    const/4 v1, 0x1

    .line 5163
    goto :goto_47

    .line 5157
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_44
    add-int/lit8 v6, v6, -0x1

    goto :goto_30

    .line 5166
    :cond_47
    :goto_47
    if-eqz v1, :cond_4a

    .line 5167
    goto :goto_4d

    .line 5152
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "activityIndex":I
    :cond_4a
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 5170
    .end local v3    # "taskIndex":I
    :cond_4d
    :goto_4d
    if-eqz v2, :cond_54

    .line 5173
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 5175
    :cond_54
    return-void

    .line 5145
    .end local v0    # "startTask":Lcom/android/server/am/TaskRecord;
    .end local v1    # "behindFullscreen":Z
    .end local v2    # "updatedConfig":Z
    :cond_55
    :goto_55
    return-void
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 5774
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 5775
    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 5776
    return-void
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compareIntentFilters"    # Z

    .line 1295
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1296
    .local v0, "cls":Landroid/content/ComponentName;
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 1297
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1299
    :cond_12
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1301
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "taskNdx":I
    :goto_22
    if-ltz v2, :cond_78

    .line 1302
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1303
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1305
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    .local v6, "activityNdx":I
    :goto_33
    if-ltz v6, :cond_75

    .line 1306
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 1313
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x800000

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_4a

    move v8, v3

    goto :goto_4b

    :cond_4a
    const/4 v8, 0x0

    .line 1316
    .local v8, "isExcludeFromRecents":Z
    :goto_4b
    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityRecord;->okToShowExcludeLocked(Z)Z

    move-result v9

    if-nez v9, :cond_52

    .line 1318
    goto :goto_72

    .line 1320
    :cond_52
    iget-boolean v9, v7, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_72

    iget v9, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v9, v1, :cond_72

    .line 1321
    if-eqz p3, :cond_65

    .line 1322
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_72

    .line 1323
    return-object v7

    .line 1326
    :cond_65
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72

    .line 1327
    return-object v7

    .line 1305
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "isExcludeFromRecents":Z
    :cond_72
    :goto_72
    add-int/lit8 v6, v6, -0x1

    goto :goto_33

    .line 1301
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "activityNdx":I
    :cond_75
    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    .line 1334
    .end local v2    # "taskNdx":I
    :cond_78
    const/4 v2, 0x0

    return-object v2
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;)V
    .registers 24
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    .line 1169
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1169
    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1170
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1171
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 1172
    .local v5, "cls":Landroid/content/ComponentName;
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v6, :cond_1c

    .line 1173
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 1175
    :cond_1c
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1176
    .local v6, "userId":I
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_2a

    move v9, v7

    goto :goto_2b

    :cond_2a
    move v9, v8

    :goto_2b
    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v10

    and-int/2addr v9, v10

    .line 1178
    .local v9, "isDocument":Z
    if-eqz v9, :cond_37

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    goto :goto_38

    :cond_37
    const/4 v11, 0x0

    .line 1180
    .local v11, "documentData":Landroid/net/Uri;
    :goto_38
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v12, :cond_5a

    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Looking for task of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_5a
    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v7

    .line 1181
    .local v12, "taskNdx":I
    :goto_61
    if-ltz v12, :cond_2f5

    .line 1182
    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    .line 1183
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    iget-object v14, v13, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v14, :cond_94

    .line 1185
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v14, :cond_8e

    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": voice session"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v6    # "userId":I
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    .local v18, "userId":I
    .local v19, "info":Landroid/content/pm/ActivityInfo;
    :cond_8e
    :goto_8e
    move-object/from16 v19, v4

    move/from16 v18, v6

    goto/16 :goto_2e9

    .line 1188
    .end local v18    # "userId":I
    .end local v19    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "userId":I
    .restart local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_94
    iget v10, v13, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v10, v6, :cond_b8

    .line 1190
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v10, :cond_8e

    const-string v10, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ": different user"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 1195
    :cond_b8
    invoke-virtual {v13, v8}, Lcom/android/server/am/TaskRecord;->getTopActivity(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 1209
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_2c3

    iget-boolean v14, v10, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v14, :cond_2c3

    iget v14, v10, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_cd

    .line 1211
    move-object/from16 v19, v4

    move/from16 v18, v6

    goto/16 :goto_2c7

    .line 1215
    :cond_cd
    iget v14, v10, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v14, v6, :cond_13a

    .line 1216
    new-array v14, v7, [I

    const/16 v15, 0x1c

    aput v15, v14, v8

    invoke-static {v14}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v14

    if-eqz v14, :cond_116

    iget v14, v10, Lcom/android/server/am/ActivityRecord;->userId:I

    const/16 v15, 0x3e7

    if-nez v14, :cond_e5

    if-eq v6, v15, :cond_eb

    :cond_e5
    iget v14, v10, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v14, v15, :cond_116

    if-nez v6, :cond_116

    .line 1219
    :cond_eb
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v14, :cond_13a

    .line 1220
    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "r.userId: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v10, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", userId: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; Because parallel app,the userId of the task\'s topActivity is different from the application userId. So pass the check of userId"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13a

    .line 1224
    :cond_116
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v7, :cond_8e

    const-string v7, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ": mismatch root "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8e

    .line 1229
    :cond_13a
    :goto_13a
    invoke-virtual {v10, v1}, Lcom/android/server/am/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v7

    if-nez v7, :cond_161

    .line 1230
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v7, :cond_8e

    const-string v7, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ": mismatch activity type"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8e

    .line 1234
    :cond_161
    iget-object v7, v13, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 1235
    .local v7, "taskIntent":Landroid/content/Intent;
    iget-object v14, v13, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 1238
    .local v14, "affinityIntent":Landroid/content/Intent;
    if-eqz v7, :cond_173

    invoke-virtual {v7}, Landroid/content/Intent;->isDocument()Z

    move-result v15

    if-eqz v15, :cond_173

    .line 1239
    const/4 v15, 0x1

    .line 1240
    .local v15, "taskIsDocument":Z
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 1240
    .local v16, "taskDocumentData":Landroid/net/Uri;
    :goto_172
    goto :goto_184

    .line 1241
    .end local v15    # "taskIsDocument":Z
    .end local v16    # "taskDocumentData":Landroid/net/Uri;
    :cond_173
    if-eqz v14, :cond_181

    invoke-virtual {v14}, Landroid/content/Intent;->isDocument()Z

    move-result v15

    if-eqz v15, :cond_181

    .line 1242
    const/4 v15, 0x1

    .line 1243
    .restart local v15    # "taskIsDocument":Z
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    goto :goto_172

    .line 1245
    .end local v15    # "taskIsDocument":Z
    :cond_181
    const/4 v15, 0x0

    .line 1246
    .restart local v15    # "taskIsDocument":Z
    const/16 v16, 0x0

    .line 1246
    .restart local v16    # "taskDocumentData":Landroid/net/Uri;
    :goto_184
    move-object/from16 v17, v16

    .line 1249
    .end local v16    # "taskDocumentData":Landroid/net/Uri;
    .local v17, "taskDocumentData":Landroid/net/Uri;
    sget-boolean v16, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v16, :cond_1d3

    const-string v8, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v6

    const-string v6, "Comparing existing cls="

    .line 1249
    .end local v6    # "userId":I
    .restart local v18    # "userId":I
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/aff="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to new cls="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/aff="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1249
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d5

    .line 1254
    .end local v18    # "userId":I
    .restart local v6    # "userId":I
    :cond_1d3
    move/from16 v18, v6

    .line 1254
    .end local v6    # "userId":I
    .restart local v18    # "userId":I
    :goto_1d5
    if-eqz v7, :cond_22d

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_22d

    .line 1255
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_22d

    .line 1256
    move-object/from16 v0, v17

    invoke-static {v11, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 1256
    .end local v17    # "taskDocumentData":Landroid/net/Uri;
    .local v0, "taskDocumentData":Landroid/net/Uri;
    if-eqz v6, :cond_22a

    .line 1257
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v6, :cond_1fa

    const-string v6, "ActivityManager"

    const-string v8, "Found matching class!"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_1fa
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v6, :cond_221

    const-string v6, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    const-string v4, "For Intent "

    .line 1259
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v19    # "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " bringing to top: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_223

    .line 1261
    .end local v19    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    :cond_221
    move-object/from16 v19, v4

    .line 1261
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v19    # "info":Landroid/content/pm/ActivityInfo;
    :goto_223
    iput-object v10, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 1262
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    .line 1263
    goto/16 :goto_2f9

    .line 1264
    .end local v19    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    :cond_22a
    move-object/from16 v19, v4

    .line 1264
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v19    # "info":Landroid/content/pm/ActivityInfo;
    goto :goto_231

    .line 1264
    .end local v0    # "taskDocumentData":Landroid/net/Uri;
    .end local v19    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v17    # "taskDocumentData":Landroid/net/Uri;
    :cond_22d
    move-object/from16 v19, v4

    move-object/from16 v0, v17

    .line 1264
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v17    # "taskDocumentData":Landroid/net/Uri;
    .restart local v0    # "taskDocumentData":Landroid/net/Uri;
    .restart local v19    # "info":Landroid/content/pm/ActivityInfo;
    :goto_231
    if-eqz v14, :cond_27f

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_27f

    .line 1265
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v4

    if-nez v4, :cond_27f

    .line 1266
    invoke-static {v11, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27f

    .line 1267
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v4, :cond_254

    const-string v4, "ActivityManager"

    const-string v6, "Found matching class!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_254
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v4, :cond_278

    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "For Intent "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " bringing to top: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_278
    iput-object v10, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 1272
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    .line 1273
    goto/16 :goto_2f9

    .line 1274
    :cond_27f
    const/4 v4, 0x0

    if-nez v9, :cond_2a7

    if-nez v15, :cond_2a7

    iget-object v6, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    if-nez v6, :cond_2a7

    iget-object v6, v13, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v6, :cond_2a7

    .line 1276
    iget-object v6, v13, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e9

    .line 1277
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v6, :cond_2a1

    const-string v6, "ActivityManager"

    const-string v8, "Found matching affinity candidate!"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_2a1
    iput-object v10, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 1282
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    goto :goto_2e9

    .line 1284
    :cond_2a7
    const/4 v6, 0x1

    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v8, :cond_2e9

    const-string v8, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a match: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "taskDocumentData":Landroid/net/Uri;
    .end local v7    # "taskIntent":Landroid/content/Intent;
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    .end local v14    # "affinityIntent":Landroid/content/Intent;
    .end local v15    # "taskIsDocument":Z
    goto :goto_2e9

    .line 1211
    .end local v18    # "userId":I
    .end local v19    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "userId":I
    .restart local v10    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2c3
    move-object/from16 v19, v4

    move/from16 v18, v6

    .line 1211
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v6    # "userId":I
    .restart local v18    # "userId":I
    .restart local v19    # "info":Landroid/content/pm/ActivityInfo;
    :goto_2c7
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_2e9

    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": mismatch root "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2e9
    :goto_2e9
    add-int/lit8 v12, v12, -0x1

    move/from16 v6, v18

    move-object/from16 v4, v19

    move-object/from16 v0, p0

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_61

    .line 1286
    .end local v12    # "taskNdx":I
    .end local v18    # "userId":I
    .end local v19    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "userId":I
    :cond_2f5
    move-object/from16 v19, v4

    move/from16 v18, v6

    .line 1286
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v6    # "userId":I
    .restart local v18    # "userId":I
    .restart local v19    # "info":Landroid/content/pm/ActivityInfo;
    :goto_2f9
    return-void
.end method

.method final finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4020
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4021
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 4021
    .local v1, "index":I
    :goto_a
    if-ltz v1, :cond_2b

    .line 4022
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4023
    .local v2, "cur":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 4024
    goto :goto_2b

    .line 4026
    :cond_1d
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "request-affinity"

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4021
    .end local v2    # "cur":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 4028
    .end local v1    # "index":I
    :cond_2b
    :goto_2b
    const/4 v1, 0x1

    return v1
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .line 4095
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z
    .registers 22
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z
    .param p6, "pauseImmediately"    # Z

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object v1, p0

    move-object/from16 v2, p1

    .line 4104
    iget-boolean v0, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1f

    .line 4105
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate finish request for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4106
    return v3

    .line 4109
    :cond_1f
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 4111
    :try_start_24
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 4112
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 4113
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    const/16 v4, 0x7531

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 4114
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget v6, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 4115
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const/4 v6, 0x3

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v5, v6

    const/4 v6, 0x4

    aput-object p4, v5, v6

    .line 4113
    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4116
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4117
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 4118
    .local v5, "index":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_7f

    .line 4119
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 4120
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v10, 0x80000

    and-int/2addr v6, v10

    if-eqz v6, :cond_7f

    .line 4124
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 4125
    .local v6, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v11, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4129
    .end local v6    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_7f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 4131
    const-string v6, "finishActivity"

    invoke-direct {v1, v2, v6}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityStack(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4133
    invoke-direct/range {p0 .. p3}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 4135
    if-gtz v5, :cond_94

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isClearingToReuseTask()Z

    move-result v6

    if-nez v6, :cond_94

    move v6, v7

    goto :goto_95

    :cond_94
    move v6, v3

    .line 4136
    .local v6, "endTask":Z
    :goto_95
    if-eqz v6, :cond_9a

    const/16 v10, 0x9

    goto :goto_9b

    :cond_9a
    const/4 v10, 0x7

    .line 4137
    .local v10, "transit":I
    :goto_9b
    iget-object v11, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;
    :try_end_9d
    .catchall {:try_start_24 .. :try_end_9d} :catchall_1ac

    if-ne v11, v2, :cond_118

    .line 4138
    :try_start_9f
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z
    :try_end_a1
    .catchall {:try_start_9f .. :try_end_a1} :catchall_111

    if-nez v7, :cond_a7

    :try_start_a3
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z
    :try_end_a5
    .catchall {:try_start_a3 .. :try_end_a5} :catchall_1ac

    if-eqz v7, :cond_bd

    :cond_a7
    :try_start_a7
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Prepare close transition: finishing "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_a7 .. :try_end_bd} :catchall_111

    .line 4140
    :cond_bd
    if-eqz v6, :cond_c8

    .line 4141
    :try_start_bf
    iget-object v7, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v8, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskRemovalStarted(I)V
    :try_end_c8
    .catchall {:try_start_bf .. :try_end_c8} :catchall_1ac

    .line 4144
    :cond_c8
    :try_start_c8
    iget-object v7, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v10, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4147
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 4149
    iget-object v7, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v7, :cond_100

    .line 4150
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z
    :try_end_d6
    .catchall {:try_start_c8 .. :try_end_d6} :catchall_111

    if-eqz v7, :cond_ee

    :try_start_d8
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Finish needs to pause: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catchall {:try_start_d8 .. :try_end_ee} :catchall_1ac

    .line 4151
    :cond_ee
    :try_start_ee
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USER_LEAVING:Z
    :try_end_f0
    .catchall {:try_start_ee .. :try_end_f0} :catchall_111

    if-eqz v7, :cond_f9

    :try_start_f2
    const-string v7, "ActivityManager"

    const-string v8, "finish() => pause with userLeaving=false"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catchall {:try_start_f2 .. :try_end_f9} :catchall_1ac

    .line 4153
    :cond_f9
    const/4 v7, 0x0

    move/from16 v11, p6

    :try_start_fc
    invoke-virtual {v1, v3, v3, v7, v11}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    goto :goto_102

    .line 4156
    :cond_100
    move/from16 v11, p6

    :goto_102
    if-eqz v6, :cond_10d

    .line 4157
    iget-object v7, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 4192
    :cond_10d
    move/from16 v13, p5

    goto/16 :goto_1a0

    .line 4194
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "index":I
    .end local v6    # "endTask":Z
    .end local v10    # "transit":I
    :catchall_111
    move-exception v0

    move/from16 v11, p6

    :goto_114
    move/from16 v13, p5

    goto/16 :goto_1b1

    .line 4159
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v5    # "index":I
    .restart local v6    # "endTask":Z
    .restart local v10    # "transit":I
    :cond_118
    move/from16 v11, p6

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v2, v12}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v12

    if-nez v12, :cond_184

    .line 4162
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v12, :cond_13c

    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Finish not pausing: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4163
    :cond_13c
    iget-boolean v12, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v12, :cond_143

    .line 4164
    invoke-direct {v1, v2, v10}, Lcom/android/server/am/ActivityStack;->prepareActivityHideTransitionAnimation(Lcom/android/server/am/ActivityRecord;I)V

    .line 4167
    :cond_143
    iget-boolean v12, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v12, :cond_14e

    iget-boolean v12, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v12, :cond_14c

    goto :goto_14e

    .line 4168
    :cond_14c
    move v8, v7

    goto :goto_14f

    .line 4167
    :cond_14e
    :goto_14e
    nop

    .line 4168
    :goto_14f
    nop

    .line 4169
    .local v8, "finishMode":I
    const-string v12, "finishActivityLocked"
    :try_end_152
    .catchall {:try_start_fc .. :try_end_152} :catchall_1a9

    move/from16 v13, p5

    :try_start_154
    invoke-virtual {v1, v2, v8, v13, v12}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-nez v12, :cond_15c

    move v3, v7

    nop

    .line 4179
    .local v3, "removedActivity":Z
    :cond_15c
    invoke-virtual {v0, v7}, Lcom/android/server/am/TaskRecord;->onlyHasTaskOverlayActivities(Z)Z

    move-result v7

    if-eqz v7, :cond_17d

    .line 4180
    iget-object v7, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_168
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    .line 4181
    .local v12, "taskOverlay":Lcom/android/server/am/ActivityRecord;
    iget-boolean v14, v12, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-nez v14, :cond_179

    .line 4182
    goto :goto_168

    .line 4184
    :cond_179
    invoke-direct {v1, v12, v10}, Lcom/android/server/am/ActivityStack;->prepareActivityHideTransitionAnimation(Lcom/android/server/am/ActivityRecord;I)V
    :try_end_17c
    .catchall {:try_start_154 .. :try_end_17c} :catchall_1a7

    .line 4185
    .end local v12    # "taskOverlay":Lcom/android/server/am/ActivityRecord;
    goto :goto_168

    .line 4187
    :cond_17d
    nop

    .line 4194
    iget-object v7, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 4187
    return v3

    .line 4189
    .end local v3    # "removedActivity":Z
    .end local v8    # "finishMode":I
    :cond_184
    move/from16 v13, p5

    :try_start_186
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v7, :cond_1a0

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Finish waiting for pause of: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a0
    .catchall {:try_start_186 .. :try_end_1a0} :catchall_1a7

    .line 4192
    :cond_1a0
    :goto_1a0
    nop

    .line 4194
    iget-object v7, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 4192
    return v3

    .line 4194
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "index":I
    .end local v6    # "endTask":Z
    .end local v10    # "transit":I
    :catchall_1a7
    move-exception v0

    goto :goto_1b1

    :catchall_1a9
    move-exception v0

    goto/16 :goto_114

    :catchall_1ac
    move-exception v0

    move/from16 v13, p5

    move/from16 v11, p6

    :goto_1b1
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method finishAllActivitiesLocked(Z)V
    .registers 10
    .param p1, "immediately"    # Z

    .line 4295
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x1

    .line 4296
    .local v0, "noActivitiesInStack":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_9
    if-ltz v1, :cond_52

    .line 4297
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4298
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1b
    if-ltz v3, :cond_4f

    .line 4299
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4300
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x0

    .line 4301
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2b

    if-nez p1, :cond_2b

    .line 4302
    goto :goto_4c

    .line 4304
    :cond_2b
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishAllActivitiesLocked: finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " immediately"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4305
    const-string v5, "finishAllActivitiesLocked"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v6, v5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    .line 4298
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_4c
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 4296
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 4309
    .end local v1    # "taskNdx":I
    :cond_52
    if-eqz v0, :cond_57

    .line 4310
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->remove()V

    .line 4312
    :cond_57
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .registers 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "mode"    # I
    .param p3, "oomAdj"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 4220
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4223
    .local v0, "next":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p2, v2, :cond_54

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v4, :cond_13

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_54

    :cond_13
    if-eqz v0, :cond_54

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v4, :cond_54

    .line 4225
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 4226
    invoke-virtual {p0, p1, v3, v3}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4228
    :cond_26
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_45

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moving to STOPPING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (finish requested)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4230
    :cond_45
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v2, "finishCurrentActivityLocked"

    invoke-virtual {p1, v1, v2}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4231
    if-eqz p3, :cond_53

    .line 4232
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 4234
    :cond_53
    return-object p1

    .line 4238
    :cond_54
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4239
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4240
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4241
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v4

    .line 4242
    .local v4, "prevState":Lcom/android/server/am/ActivityStack$ActivityState;
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_87

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Moving to FINISHING: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4244
    :cond_87
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v6, "finishCurrentActivityLocked"

    invoke-virtual {p1, v5, v6}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4245
    nop

    .line 4246
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    if-eq v5, v6, :cond_a3

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_a3

    if-ne p2, v2, :cond_a3

    move v2, v1

    goto :goto_a4

    :cond_a3
    move v2, v3

    .line 4249
    .local v2, "finishingActivityInNonFocusedStack":Z
    :goto_a4
    if-eqz p2, :cond_eb

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_b2

    if-eq p2, v1, :cond_eb

    .line 4251
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v5

    if-nez v5, :cond_eb

    :cond_b2
    if-nez v2, :cond_eb

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_eb

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_eb

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_c1

    goto :goto_eb

    .line 4287
    :cond_c1
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v1, :cond_db

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enqueueing pending finish: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4288
    :cond_db
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4289
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 4290
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4291
    return-object p1

    .line 4256
    :cond_eb
    :goto_eb
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 4259
    iget v5, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_f6

    iget v5, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_f7

    :cond_f6
    move v5, v3

    .line 4261
    .local v5, "displayId":I
    :goto_f7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finish-imm:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v1, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v6

    .line 4263
    .local v6, "activityRemoved":Z
    if-eqz v2, :cond_113

    .line 4272
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v0, v5, v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z

    .line 4276
    :cond_113
    if-eqz v6, :cond_11a

    .line 4277
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4279
    :cond_11a
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONTAINERS:Z

    if-eqz v1, :cond_13c

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "destroyActivityLocked: finishCurrentActivityLocked r="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " destroy returned removed="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4282
    :cond_13c
    if-eqz v6, :cond_140

    const/4 v1, 0x0

    goto :goto_141

    :cond_140
    move-object v1, p1

    :goto_141
    return-object v1
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 5306
    move/from16 v9, p5

    const/4 v0, 0x0

    .line 5307
    .local v0, "didSomething":Z
    const/4 v1, 0x0

    .line 5308
    .local v1, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    .line 5309
    .local v2, "homeActivity":Landroid/content/ComponentName;
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    .local v3, "taskNdx":I
    :goto_13
    move v11, v3

    .end local v3    # "taskNdx":I
    .local v11, "taskNdx":I
    if-ltz v11, :cond_e6

    .line 5310
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v12, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5311
    .local v12, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5312
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5314
    :goto_2a
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e2

    .line 5315
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 5316
    .local v13, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5317
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    if-eqz v8, :cond_58

    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 5318
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    :cond_52
    if-nez v7, :cond_5a

    iget v3, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v9, :cond_5a

    :cond_58
    move v4, v10

    nop

    :cond_5a
    move v14, v4

    .line 5320
    .local v14, "sameComponent":Z
    const/4 v3, -0x1

    if-eq v9, v3, :cond_62

    iget v3, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v9, :cond_e0

    :cond_62
    if-nez v14, :cond_6a

    .line 5321
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-ne v3, v1, :cond_e0

    :cond_6a
    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_76

    if-nez p4, :cond_76

    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v3, :cond_e0

    .line 5323
    :cond_76
    if-nez p3, :cond_7e

    .line 5324
    iget-boolean v3, v13, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_7d

    .line 5327
    goto :goto_2a

    .line 5329
    :cond_7d
    return v10

    .line 5331
    :cond_7e
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 5332
    if-eqz v2, :cond_a5

    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 5333
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip force-stop again "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5334
    goto :goto_2a

    .line 5336
    :cond_a5
    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 5339
    .end local v2    # "homeActivity":Landroid/content/ComponentName;
    .local v15, "homeActivity":Landroid/content/ComponentName;
    :cond_a7
    move-object v15, v2

    const/16 v16, 0x1

    .line 5340
    .end local v0    # "didSomething":Z
    .local v16, "didSomething":Z
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Force finishing activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5341
    if-eqz v14, :cond_cd

    .line 5342
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_ca

    .line 5343
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v10, v0, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 5345
    :cond_ca
    const/4 v0, 0x0

    iput-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5347
    :cond_cd
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v17

    .line 5348
    .end local v1    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v17, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "force-stop"

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5351
    .end local v13    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "sameComponent":Z
    move-object v2, v15

    move/from16 v0, v16

    move-object/from16 v1, v17

    .end local v15    # "homeActivity":Landroid/content/ComponentName;
    .end local v16    # "didSomething":Z
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v0    # "didSomething":Z
    .restart local v1    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "homeActivity":Landroid/content/ComponentName;
    :cond_e0
    goto/16 :goto_2a

    .line 5309
    .end local v12    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_e2
    add-int/lit8 v3, v11, -0x1

    .end local v11    # "taskNdx":I
    .restart local v3    # "taskNdx":I
    goto/16 :goto_13

    .line 5353
    .end local v3    # "taskNdx":I
    :cond_e6
    return v0
.end method

.method final finishSubActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .registers 14
    .param p1, "self"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 3909
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3909
    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_4d

    .line 3910
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3911
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 3911
    .local v2, "activityNdx":I
    :goto_1a
    if-ltz v2, :cond_4a

    .line 3912
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3913
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_47

    iget v4, v3, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v4, p3, :cond_47

    .line 3914
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v4, :cond_30

    if-eqz p2, :cond_3c

    :cond_30
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v4, :cond_47

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 3915
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 3916
    :cond_3c
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "request-sub"

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3911
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 3909
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_4a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3922
    .end local v0    # "taskNdx":I
    :cond_4d
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3923
    return-void
.end method

.method final finishTopCrashedActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;
    .registers 17
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object v7, p0

    .line 3934
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 3935
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x0

    .line 3936
    .local v0, "finishedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_d0

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object v9, p1

    if-eq v1, v9, :cond_f

    goto/16 :goto_d1

    .line 3939
    :cond_f
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Force finishing activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3940
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3939
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3942
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 3943
    .local v10, "taskNdx":I
    move-object v11, v0

    .line 3944
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 3945
    .local v12, "activityNdx":I
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3947
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3948
    move-object v13, v11

    .line 3952
    .end local v0    # "finishedTask":Lcom/android/server/am/TaskRecord;
    .local v13, "finishedTask":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v12, v12, -0x1

    .line 3953
    if-gez v12, :cond_6d

    .line 3955
    :cond_56
    add-int/lit8 v10, v10, -0x1

    .line 3956
    if-gez v10, :cond_5b

    .line 3957
    goto :goto_6d

    .line 3959
    :cond_5b
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    .line 3960
    if-ltz v12, :cond_56

    .line 3962
    :cond_6d
    :goto_6d
    if-ltz v12, :cond_cf

    .line 3964
    :try_start_6f
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    move-object v8, v0

    .line 3965
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v8, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 3966
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v1, :cond_c4

    .line 3967
    :cond_9a
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force finishing activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3968
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3967
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_c4} :catch_c5

    .line 3974
    :cond_c4
    goto :goto_cf

    .line 3972
    :catch_c5
    move-exception v0

    .line 3973
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_cf
    :goto_cf
    return-object v13

    .line 3937
    .end local v10    # "taskNdx":I
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "activityNdx":I
    .end local v13    # "finishedTask":Lcom/android/server/am/TaskRecord;
    .local v0, "finishedTask":Lcom/android/server/am/TaskRecord;
    :cond_d0
    move-object v9, p1

    :goto_d1
    const/4 v1, 0x0

    return-object v1
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 14
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 3980
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3981
    .local v0, "sessionBinder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 3982
    .local v1, "didOne":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_d
    if-ltz v2, :cond_80

    .line 3983
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3984
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_47

    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v4}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_47

    .line 3985
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "activityNdx":I
    :goto_2b
    if-ltz v4, :cond_7d

    .line 3986
    iget-object v5, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3987
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_44

    .line 3988
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "finish-voice"

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3990
    const/4 v1, 0x1

    .line 3985
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_44
    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    .line 3995
    .end local v4    # "activityNdx":I
    :cond_47
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "activityNdx":I
    :goto_4f
    if-ltz v4, :cond_7d

    .line 3996
    iget-object v5, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3997
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_7a

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 3998
    invoke-interface {v6}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, v0, :cond_7a

    .line 4000
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->clearVoiceSessionLocked()V

    .line 4002
    :try_start_68
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_72} :catch_73

    .line 4006
    goto :goto_74

    .line 4004
    :catch_73
    move-exception v6

    .line 4007
    :goto_74
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->finishRunningVoiceLocked()V

    .line 4008
    goto :goto_7d

    .line 3995
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4f

    .line 3982
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v4    # "activityNdx":I
    :cond_7d
    :goto_7d
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 4014
    .end local v2    # "taskNdx":I
    :cond_80
    if-eqz v1, :cond_87

    .line 4015
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 4017
    :cond_87
    return-void
.end method

.method getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I
    .registers 8
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "suggestedPosition"    # I
    .param p3, "starting"    # Lcom/android/server/am/ActivityRecord;

    .line 3101
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3102
    .local v0, "maxPosition":I
    if-eqz p3, :cond_e

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_16

    :cond_e
    if-nez p3, :cond_1b

    .line 3103
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->okToShowLocked()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3105
    :cond_16
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 3109
    :cond_1b
    :goto_1b
    if-lez v0, :cond_3b

    .line 3110
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 3111
    .local v1, "tmpTask":Lcom/android/server/am/TaskRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, v1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3112
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_38

    .line 3113
    goto :goto_3b

    .line 3115
    :cond_38
    add-int/lit8 v0, v0, -0x1

    .line 3116
    .end local v1    # "tmpTask":Lcom/android/server/am/TaskRecord;
    goto :goto_1b

    .line 3118
    :cond_3b
    :goto_3b
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 903
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p1, "outActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 904
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 905
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V

    .line 904
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 907
    .end local v0    # "taskNdx":I
    :cond_1b
    return-void
.end method

.method getAllTasks()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .line 5643
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getBoundsForNewConfiguration(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 828
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackWindowController;->getBoundsForNewConfiguration(Landroid/graphics/Rect;)V

    .line 829
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 3
    .param p1, "index"    # I

    .line 239
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ConfigurationContainer;

    return-object v0
.end method

.method protected getChildCount()I
    .registers 2

    .line 234
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getDisplay()Lcom/android/server/am/ActivityDisplay;
    .registers 3

    .line 803
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
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

    .line 5483
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5485
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 5486
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5486
    .local v1, "taskNdx":I
    :goto_15
    if-ltz v1, :cond_95

    .line 5487
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5486
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 5489
    .end local v1    # "taskNdx":I
    :cond_27
    const-string/jumbo v1, "top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 5490
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5491
    .local v1, "top":I
    if-ltz v1, :cond_55

    .line 5492
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5493
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 5494
    .local v3, "listTop":I
    if-ltz v3, :cond_55

    .line 5495
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5498
    .end local v1    # "top":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "listTop":I
    :cond_55
    goto :goto_95

    .line 5499
    :cond_56
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 5500
    .local v1, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 5502
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 5502
    .local v2, "taskNdx":I
    :goto_66
    if-ltz v2, :cond_95

    .line 5503
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_76
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 5504
    .local v4, "r1":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 5505
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5507
    .end local v4    # "r1":Lcom/android/server/am/ActivityRecord;
    :cond_91
    goto :goto_76

    .line 5502
    :cond_92
    add-int/lit8 v2, v2, -0x1

    goto :goto_66

    .line 5511
    .end local v1    # "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    .end local v2    # "taskNdx":I
    :cond_95
    :goto_95
    return-object v0
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 244
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method getPresentUIDs(Landroid/util/IntArray;)V
    .registers 7
    .param p1, "presentUIDs"    # Landroid/util/IntArray;

    .line 1046
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 1047
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1048
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    .line 1049
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_18

    .line 1050
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2c
    goto :goto_6

    .line 1051
    :cond_2d
    return-void
.end method

.method protected getResumedActivity()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .line 2521
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method getRunningTasks(Ljava/util/List;IIIZ)V
    .registers 12
    .param p2, "ignoreActivityType"    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p3, "ignoreWindowingMode"    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p4, "callingUid"    # I
    .param p5, "allowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/TaskRecord;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 5363
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p1, "tasksOut":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 5364
    .local v0, "focusedStack":Z
    :goto_c
    const/4 v2, 0x1

    .line 5365
    .local v2, "topTask":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "taskNdx":I
    :goto_14
    move v1, v3

    .end local v3    # "taskNdx":I
    .local v1, "taskNdx":I
    if-ltz v1, :cond_56

    .line 5366
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 5367
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_26

    .line 5369
    goto :goto_53

    .line 5371
    :cond_26
    if-nez p5, :cond_33

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_33

    iget v4, v3, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-eq v4, p4, :cond_33

    .line 5373
    goto :goto_53

    .line 5375
    :cond_33
    if-eqz p2, :cond_3c

    .line 5376
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v4

    if-ne v4, p2, :cond_3c

    .line 5378
    goto :goto_53

    .line 5380
    :cond_3c
    if-eqz p3, :cond_45

    .line 5381
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v4

    if-ne v4, p3, :cond_45

    .line 5383
    goto :goto_53

    .line 5385
    :cond_45
    if-eqz v0, :cond_50

    if-eqz v2, :cond_50

    .line 5389
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 5390
    const/4 v2, 0x0

    .line 5392
    :cond_50
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5365
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_53
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "taskNdx":I
    .local v3, "taskNdx":I
    goto :goto_14

    .line 5394
    .end local v3    # "taskNdx":I
    :cond_56
    return-void
.end method

.method getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 6
    .param p1, "currentTempTaskBounds"    # Landroid/graphics/Rect;
    .param p2, "outStackBounds"    # Landroid/graphics/Rect;
    .param p3, "outTempTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "ignoreVisibility"    # Z

    .line 811
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/StackWindowController;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 813
    return-void
.end method

.method public getStackId()I
    .registers 2

    .line 5753
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    return v0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .registers 3

    .line 975
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 976
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 977
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_19

    .line 978
    return-object v1

    .line 975
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 981
    .end local v0    # "taskNdx":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .line 2218
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method getWindowContainerBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 820
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    if-eqz v0, :cond_a

    .line 821
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackWindowController;->getBounds(Landroid/graphics/Rect;)V

    .line 822
    return-void

    .line 824
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 825
    return-void
.end method

.method getWindowContainerController()Lcom/android/server/wm/StackWindowController;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 531
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    return-object v0
.end method

.method goToSleep()V
    .registers 10

    .line 1475
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1480
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_d
    if-ltz v0, :cond_3d

    .line 1481
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1482
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "activityNdx":I
    :goto_1e
    if-ltz v3, :cond_3a

    .line 1483
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1484
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1485
    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1482
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_37
    add-int/lit8 v3, v3, -0x1

    goto :goto_1e

    .line 1480
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1489
    .end local v0    # "taskNdx":I
    :cond_3d
    return-void
.end method

.method goToSleepIfPossible(Z)Z
    .registers 6
    .param p1, "shuttingDown"    # Z

    .line 1432
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x1

    .line 1434
    .local v0, "shouldSleep":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_34

    .line 1436
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_21

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep needs to pause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_21
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v1, :cond_2c

    const-string v1, "ActivityManager"

    const-string v2, "Sleep => pause with userLeaving=false"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_2c
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    .line 1441
    const/4 v0, 0x0

    goto :goto_55

    .line 1442
    :cond_34
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_55

    .line 1444
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_54

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep still waiting to pause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_54
    const/4 v0, 0x0

    .line 1448
    :cond_55
    :goto_55
    if-nez p1, :cond_c0

    .line 1449
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 1451
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_88

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep still need to stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 1452
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " activities"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1451
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_88
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 1455
    const/4 v0, 0x0

    .line 1458
    :cond_8e
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 1460
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_bf

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep still need to sleep "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 1461
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " activities"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1460
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :cond_bf
    const/4 v0, 0x0

    .line 1466
    :cond_c0
    if-eqz v0, :cond_c5

    .line 1467
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 1470
    :cond_c5
    return v0
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 5429
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5429
    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_67

    .line 5430
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5431
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 5431
    .local v2, "activityNdx":I
    :goto_1a
    if-ltz v2, :cond_64

    .line 5436
    :try_start_1c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5437
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_57

    .line 5438
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Force finishing activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5439
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5438
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5441
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5442
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x1a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5444
    const-string/jumbo v4, "handleAppCrashedLocked"

    invoke-virtual {p0, v3, v6, v6, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    :try_end_57
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_57} :catch_58

    .line 5451
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_57
    goto :goto_61

    .line 5449
    :catch_58
    move-exception v3

    .line 5450
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "ActivityManager"

    const-string/jumbo v5, "handleAppCrashLocked error:"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5431
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_61
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 5429
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_64
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5455
    .end local v0    # "taskNdx":I
    :cond_67
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 5415
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_2d

    .line 5416
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v0, :cond_2b

    :cond_13
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App died while pausing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5418
    :cond_2b
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 5420
    :cond_2d
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_3b

    .line 5421
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5422
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 5425
    :cond_3b
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method inFrontOfStandardStack()Z
    .registers 5

    .line 4316
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 4317
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 4318
    return v1

    .line 4320
    :cond_8
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v2

    .line 4321
    .local v2, "index":I
    if-nez v2, :cond_f

    .line 4322
    return v1

    .line 4324
    :cond_f
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 4325
    .local v1, "stackBehind":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandard()Z

    move-result v3

    return v3
.end method

.method final isAttached()Z
    .registers 2

    .line 1161
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isCompatible(II)Z
    .registers 5
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 730
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-nez p2, :cond_3

    .line 733
    const/4 p2, 0x1

    .line 735
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 736
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_12

    const/4 v1, 0x1

    if-ne p2, v1, :cond_12

    if-nez p1, :cond_12

    .line 740
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getWindowingMode()I

    move-result p1

    .line 742
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->isCompatible(II)Z

    move-result v1

    return v1
.end method

.method isFocusable()Z
    .registers 4

    .line 1156
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1157
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z

    move-result v1

    return v1
.end method

.method final isHomeOrRecentsStack()Z
    .registers 2

    .line 1066
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1010
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1011
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    return-object v1
.end method

.method isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1015
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1016
    return-object v0

    .line 1018
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1019
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1020
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_28

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1021
    if-eq v2, p0, :cond_27

    const-string v0, "ActivityManager"

    const-string v3, "Illegal state! task does not point to stack it is in."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_27
    return-object p1

    .line 1025
    :cond_28
    return-object v0
.end method

.method isInStackLocked(Lcom/android/server/am/TaskRecord;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1029
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final isOnHomeDisplay()Z
    .registers 2

    .line 1070
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z
    .registers 9
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1858
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mForceHidden:Z

    if-eqz v0, :cond_c

    goto :goto_4a

    .line 1861
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_13
    if-ltz v0, :cond_49

    .line 1862
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1863
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1864
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "activityNdx":I
    :goto_24
    if-ltz v4, :cond_46

    .line 1865
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1867
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_31

    .line 1870
    goto :goto_41

    .line 1873
    :cond_31
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v6, :cond_38

    if-eq v5, p1, :cond_38

    .line 1876
    goto :goto_41

    .line 1879
    :cond_38
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v6, :cond_44

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->hasWallpaper:Z

    if-eqz v6, :cond_41

    goto :goto_44

    .line 1864
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_41
    :goto_41
    add-int/lit8 v4, v4, -0x1

    goto :goto_24

    .line 1882
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_44
    :goto_44
    const/4 v1, 0x0

    return v1

    .line 1861
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 1886
    .end local v0    # "taskNdx":I
    :cond_49
    return v1

    .line 1859
    :cond_4a
    :goto_4a
    return v1
.end method

.method isTopActivityVisible()Z
    .registers 3

    .line 1898
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1899
    .local v0, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_c

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method isTopStackOnDisplay()Z
    .registers 2

    .line 1892
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 1894
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->isTopStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    return v0
.end method

.method isUidPresent(I)Z
    .registers 7
    .param p1, "uid"    # I

    .line 1034
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 1035
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1036
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_2c

    .line 1037
    const/4 v0, 0x1

    return v0

    .line 1039
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2c
    goto :goto_18

    .line 1040
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2d
    goto :goto_6

    .line 1041
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1365
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_27

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving to RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (starting new instance) callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 1366
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1365
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :cond_27
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v1, "minimalResumeActivityLocked"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->completeResumeLocked()V

    .line 1369
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchTimeTracker()Lcom/android/server/am/LaunchTimeTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/LaunchTimeTracker;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 1370
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    if-eqz v0, :cond_57

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch completed; removing icicle of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :cond_57
    return-void
.end method

.method moveHomeStackTaskToTop()V
    .registers 7

    .line 4970
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 4974
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 4975
    .local v0, "top":I
    if-ltz v0, :cond_44

    .line 4976
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 4977
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-nez v3, :cond_20

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_37

    :cond_20
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveHomeStackTaskToTop: moving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4979
    :cond_37
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4980
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4981
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 4983
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_44
    return-void

    .line 4971
    .end local v0    # "top":I
    :cond_45
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
    .registers 10
    .param p1, "taskId"    # I

    .line 5076
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 5077
    .local v0, "tr":Lcom/android/server/am/TaskRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 5078
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveTaskToBack: bad taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5079
    return v1

    .line 5081
    :cond_1f
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveTaskToBack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5085
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/LockTaskController;->canMoveTaskToBack(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 5086
    return v1

    .line 5092
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isTopStackOnDisplay()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_79

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v2, :cond_79

    .line 5093
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 5094
    .local v4, "next":Lcom/android/server/am/ActivityRecord;
    if-nez v4, :cond_5b

    .line 5095
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 5097
    :cond_5b
    if-eqz v4, :cond_79

    .line 5099
    move v5, v3

    .line 5101
    .local v5, "moveOK":Z
    :try_start_5e
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v6
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_68} :catch_6a

    move v5, v6

    .line 5105
    goto :goto_76

    .line 5102
    :catch_6a
    move-exception v6

    .line 5103
    .local v6, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v2, v7, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 5104
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 5106
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_76
    if-nez v5, :cond_79

    .line 5107
    return v1

    .line 5112
    .end local v4    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "moveOK":Z
    :cond_79
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v2, :cond_93

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepare to back transition: task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5114
    :cond_93
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5115
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5116
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 5118
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5119
    const-string/jumbo v1, "moveTaskToBackLocked"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ActivityStack;->moveToBack(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 5121
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 5122
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeStack(Lcom/android/server/am/ActivityStack;)V

    .line 5123
    return v3

    .line 5126
    :cond_b9
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 5127
    return v3
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .registers 22
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "reason"    # Ljava/lang/String;

    .line 4987
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 4987
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_23

    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveTaskToFront: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4989
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4990
    .local v5, "topStack":Lcom/android/server/am/ActivityStack;
    const/4 v0, 0x0

    if-eqz v5, :cond_33

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    goto :goto_34

    :cond_33
    move-object v6, v0

    .line 4991
    .local v6, "topActivity":Lcom/android/server/am/ActivityRecord;
    :goto_34
    iget-object v7, v1, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4992
    .local v7, "numTasks":I
    iget-object v8, v1, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 4993
    .local v8, "index":I
    const/16 v9, 0xa

    if-eqz v7, :cond_118

    if-gez v8, :cond_48

    goto/16 :goto_118

    .line 5003
    :cond_48
    const/4 v10, 0x1

    if-eqz v4, :cond_61

    .line 5005
    iget-object v11, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v10

    .line 5005
    .local v11, "i":I
    :goto_52
    if-ltz v11, :cond_61

    .line 5006
    iget-object v12, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iput-object v4, v12, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5005
    add-int/lit8 v11, v11, -0x1

    goto :goto_52

    .line 5014
    .end local v11    # "i":I
    :cond_61
    :try_start_61
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/ActivityDisplay;->deferUpdateImeTarget()V

    .line 5018
    invoke-direct {v1, v2, v0}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 5021
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 5022
    .local v11, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_f0

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v12

    if-nez v12, :cond_79

    goto/16 :goto_f0

    .line 5031
    :cond_79
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 5032
    .local v12, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v13, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;
    :try_end_7f
    .catchall {:try_start_61 .. :try_end_7f} :catchall_10d

    move-object/from16 v14, p5

    :try_start_81
    invoke-virtual {v13, v12, v14}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 5034
    sget-boolean v13, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v13, :cond_9e

    const-string v13, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Prepare to front transition: task="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5035
    :cond_9e
    const/4 v0, 0x0

    if-eqz p2, :cond_b3

    .line 5036
    iget-object v9, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v0, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5037
    if-eqz v12, :cond_af

    .line 5038
    iget-object v9, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5040
    :cond_af
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_b6

    .line 5042
    :cond_b3
    invoke-direct {v1, v9, v3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 5050
    :goto_b6
    const/4 v9, 0x0

    invoke-virtual {v1, v6, v2, v9, v3}, Lcom/android/server/am/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v9

    if-eqz v9, :cond_c0

    .line 5052
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 5055
    :cond_c0
    iget-object v9, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 5056
    const/16 v9, 0x7532

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget v13, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v0

    iget v0, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v13, 0x1

    aput-object v0, v10, v13

    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5058
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v9, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v9}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskMovedToFront(I)V
    :try_end_e7
    .catchall {:try_start_81 .. :try_end_e7} :catchall_100

    .line 5060
    .end local v11    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->continueUpdateImeTarget()V

    .line 5061
    nop

    .line 5062
    return-void

    .line 5023
    .restart local v11    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_f0
    :goto_f0
    move-object/from16 v14, p5

    if-eqz v11, :cond_102

    .line 5024
    :try_start_f4
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    goto :goto_102

    .line 5060
    .end local v11    # "top":Lcom/android/server/am/ActivityRecord;
    :catchall_100
    move-exception v0

    goto :goto_110

    .line 5026
    .restart local v11    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_102
    :goto_102
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_105
    .catchall {:try_start_f4 .. :try_end_105} :catchall_100

    .line 5060
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->continueUpdateImeTarget()V

    .line 5027
    return-void

    .line 5060
    .end local v11    # "top":Lcom/android/server/am/ActivityRecord;
    :catchall_10d
    move-exception v0

    move-object/from16 v14, p5

    :goto_110
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ActivityDisplay;->continueUpdateImeTarget()V

    throw v0

    .line 4995
    :cond_118
    :goto_118
    move-object/from16 v14, p5

    if-eqz p2, :cond_120

    .line 4996
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_123

    .line 4998
    :cond_120
    invoke-direct {v1, v9, v3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 5000
    :goto_123
    return-void
.end method

.method moveToBack(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1135
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1136
    return-void

    .line 1143
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 1144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 1147
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/am/ActivityStack;)V

    .line 1148
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V

    .line 1149
    if-eqz p2, :cond_2c

    .line 1150
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityStack;->insertTaskAtBottom(Lcom/android/server/am/TaskRecord;)V

    .line 1151
    return-void

    .line 1153
    :cond_2c
    return-void
.end method

.method moveToFront(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 1080
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 1081
    return-void
.end method

.method moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1088
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1089
    return-void

    .line 1092
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 1094
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1100
    const/4 v1, 0x1

    .line 1101
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1102
    .local v1, "topFullScreenStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_3c

    .line 1103
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1104
    .local v2, "primarySplitScreenStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v3

    .line 1105
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v4

    if-le v3, v4, :cond_3c

    .line 1108
    if-eqz v2, :cond_3c

    .line 1109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " splitScreenToTop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1116
    .end local v1    # "topFullScreenStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "primarySplitScreenStack":Lcom/android/server/am/ActivityStack;
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_5e

    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->returnsToHomeStack()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1119
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returnToHome"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1122
    :cond_5e
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->positionChildAtTop(Lcom/android/server/am/ActivityStack;)V

    .line 1123
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V

    .line 1124
    if-eqz p2, :cond_6d

    .line 1125
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 1126
    return-void

    .line 1128
    :cond_6d
    return-void
.end method

.method moveToFrontAndResumeStateIfNeeded(Lcom/android/server/am/ActivityRecord;ZZZLjava/lang/String;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "moveToFront"    # Z
    .param p3, "setResume"    # Z
    .param p4, "setPause"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5731
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-nez p2, :cond_3

    .line 5732
    return-void

    .line 5738
    :cond_3
    if-eqz p3, :cond_10

    .line 5739
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v1, "moveToFrontAndResumeStateIfNeeded"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5740
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5743
    :cond_10
    if-eqz p4, :cond_17

    .line 5744
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 5745
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->schedulePauseTimeout(Lcom/android/server/am/ActivityRecord;)V

    .line 5749
    :cond_17
    invoke-virtual {p0, p5}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 5750
    return-void
.end method

.method final navigateUpToLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .registers 31
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    .line 4363
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 4363
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v10

    .line 4364
    .local v10, "task":Lcom/android/server/am/TaskRecord;
    iget-object v11, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4365
    .local v11, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 4366
    .local v12, "start":I
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_170

    if-gez v12, :cond_1d

    goto/16 :goto_170

    .line 4369
    :cond_1d
    add-int/lit8 v0, v12, -0x1

    .line 4370
    .local v0, "finishTo":I
    const/4 v1, 0x0

    if-gez v0, :cond_24

    move-object v2, v1

    goto :goto_2a

    :cond_24
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4371
    .local v2, "parent":Lcom/android/server/am/ActivityRecord;
    :goto_2a
    const/4 v3, 0x0

    .line 4372
    .local v3, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 4373
    .local v14, "dest":Landroid/content/ComponentName;
    if-lez v12, :cond_5f

    if-eqz v14, :cond_5f

    .line 4374
    move v4, v0

    .line 4374
    .local v4, "i":I
    :goto_34
    if-ltz v4, :cond_5f

    .line 4375
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 4376
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4377
    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 4378
    move v0, v4

    .line 4379
    move-object v2, v5

    .line 4380
    const/4 v3, 0x1

    .line 4381
    goto :goto_5f

    .line 4374
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5c
    add-int/lit8 v4, v4, -0x1

    goto :goto_34

    .line 4386
    .end local v0    # "finishTo":I
    .end local v2    # "parent":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "foundParentInTask":Z
    .end local v4    # "i":I
    .local v6, "finishTo":I
    .local v15, "parent":Lcom/android/server/am/ActivityRecord;
    .local v16, "foundParentInTask":Z
    :cond_5f
    :goto_5f
    move v6, v0

    move-object v15, v2

    move/from16 v16, v3

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 4387
    .local v5, "controller":Landroid/app/IActivityController;
    const/4 v4, 0x1

    if-eqz v5, :cond_8a

    .line 4388
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v7, v0, v13}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4389
    .local v2, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_8a

    .line 4391
    move v3, v4

    .line 4393
    .local v3, "resumeOK":Z
    :try_start_73
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v5, v0}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_79} :catch_7b

    move v3, v0

    .line 4397
    goto :goto_87

    .line 4394
    :catch_7b
    move-exception v0

    .line 4395
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v1, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 4396
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 4399
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_87
    if-nez v3, :cond_8a

    .line 4400
    return v13

    .line 4404
    .end local v2    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "resumeOK":Z
    :cond_8a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4405
    .local v3, "origId":J
    move/from16 v18, p3

    move-object/from16 v19, p4

    move v0, v12

    .line 4405
    .end local p3    # "resultCode":I
    .end local p4    # "resultData":Landroid/content/Intent;
    .local v0, "i":I
    .local v18, "resultCode":I
    .local v19, "resultData":Landroid/content/Intent;
    :goto_93
    if-le v0, v6, :cond_cb

    .line 4406
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4407
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v20, "navigate-up"

    const/16 v21, 0x1

    move-object/from16 v22, v1

    move-object v1, v7

    move-object/from16 v23, v2

    move-object/from16 v2, v22

    .line 4407
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .local v23, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v24, v14

    move-wide v13, v3

    move/from16 v3, v18

    .line 4407
    .end local v3    # "origId":J
    .end local v14    # "dest":Landroid/content/ComponentName;
    .local v13, "origId":J
    .local v24, "dest":Landroid/content/ComponentName;
    move-object/from16 v4, v19

    move-object/from16 v17, v5

    move-object/from16 v5, v20

    .line 4407
    .end local v5    # "controller":Landroid/app/IActivityController;
    .local v17, "controller":Landroid/app/IActivityController;
    move/from16 v20, v6

    move/from16 v6, v21

    .line 4407
    .end local v6    # "finishTo":I
    .local v20, "finishTo":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4409
    const/16 v18, 0x0

    .line 4410
    const/16 v19, 0x0

    .line 4405
    .end local v23    # "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v0, v0, -0x1

    move-wide v3, v13

    move-object/from16 v5, v17

    move/from16 v6, v20

    move-object/from16 v14, v24

    const/4 v13, 0x0

    goto :goto_93

    .line 4413
    .end local v0    # "i":I
    .end local v13    # "origId":J
    .end local v17    # "controller":Landroid/app/IActivityController;
    .end local v20    # "finishTo":I
    .end local v24    # "dest":Landroid/content/ComponentName;
    .restart local v3    # "origId":J
    .restart local v5    # "controller":Landroid/app/IActivityController;
    .restart local v6    # "finishTo":I
    .restart local v14    # "dest":Landroid/content/ComponentName;
    :cond_cb
    move-object/from16 v17, v5

    move/from16 v20, v6

    move-object/from16 v24, v14

    move-wide v13, v3

    .line 4413
    .end local v3    # "origId":J
    .end local v5    # "controller":Landroid/app/IActivityController;
    .end local v6    # "finishTo":I
    .end local v14    # "dest":Landroid/content/ComponentName;
    .restart local v13    # "origId":J
    .restart local v17    # "controller":Landroid/app/IActivityController;
    .restart local v20    # "finishTo":I
    .restart local v24    # "dest":Landroid/content/ComponentName;
    if-eqz v15, :cond_16c

    if-eqz v16, :cond_16c

    .line 4414
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4415
    .local v6, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v21

    .line 4416
    .local v21, "destIntentFlags":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_15f

    const/4 v0, 0x2

    if-eq v6, v0, :cond_15f

    const/4 v1, 0x1

    if-eq v6, v1, :cond_15f

    const/high16 v0, 0x4000000

    and-int v0, v21, v0

    if-eqz v0, :cond_f1

    .line 4420
    move/from16 v22, v6

    goto/16 :goto_161

    .line 4424
    :cond_f1
    :try_start_f1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4425
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x400

    iget v4, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 4424
    invoke-interface {v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 4428
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v2

    const-string/jumbo v3, "navigateUpTo"

    .line 4429
    invoke-virtual {v2, v9, v3}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 4430
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 4431
    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 4432
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 4433
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget v4, v15, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 4434
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 4435
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 4436
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 4437
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 4438
    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 4439
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v2
    :try_end_143
    .catch Landroid/os/RemoteException; {:try_start_f1 .. :try_end_143} :catch_149

    .line 4440
    .local v2, "res":I
    if-nez v2, :cond_146

    goto :goto_147

    :cond_146
    const/4 v1, 0x0

    :goto_147
    move v0, v1

    .line 4443
    .end local v2    # "res":I
    .end local v16    # "foundParentInTask":Z
    .local v0, "foundParentInTask":Z
    goto :goto_14b

    .line 4441
    .end local v0    # "foundParentInTask":Z
    .restart local v16    # "foundParentInTask":Z
    :catch_149
    move-exception v0

    .line 4442
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 4444
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14b
    move/from16 v16, v0

    iget-object v2, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v5, "navigate-top"

    const/4 v0, 0x1

    move-object v1, v7

    move/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v22, v6

    move v6, v0

    .end local v6    # "parentLaunchMode":I
    .local v22, "parentLaunchMode":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4444
    .end local v21    # "destIntentFlags":I
    .end local v22    # "parentLaunchMode":I
    goto :goto_16c

    .line 4420
    .restart local v6    # "parentLaunchMode":I
    .restart local v21    # "destIntentFlags":I
    :cond_15f
    move/from16 v22, v6

    .line 4420
    .end local v6    # "parentLaunchMode":I
    .restart local v22    # "parentLaunchMode":I
    :goto_161
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v0, v9, v1}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4448
    .end local v21    # "destIntentFlags":I
    .end local v22    # "parentLaunchMode":I
    :cond_16c
    :goto_16c
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4449
    return v16

    .line 4367
    .end local v13    # "origId":J
    .end local v15    # "parent":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "foundParentInTask":Z
    .end local v17    # "controller":Landroid/app/IActivityController;
    .end local v18    # "resultCode":I
    .end local v19    # "resultData":Landroid/content/Intent;
    .end local v20    # "finishTo":I
    .end local v24    # "dest":Landroid/content/ComponentName;
    .restart local p3    # "resultCode":I
    .restart local p4    # "resultData":Landroid/content/Intent;
    :cond_170
    :goto_170
    const/4 v1, 0x0

    return v1
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2413
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2414
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2415
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2418
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2419
    .local v0, "waitingActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2420
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2421
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2423
    if-eqz v0, :cond_46

    .line 2424
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    .line 2425
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_46

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_46

    .line 2427
    :try_start_37
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz p1, :cond_41

    const/4 v3, 0x1

    nop

    :cond_41
    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_44} :catch_45

    .line 2430
    goto :goto_46

    .line 2429
    :catch_45
    move-exception v1

    .line 2434
    .end local v0    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :cond_46
    :goto_46
    return-void
.end method

.method numActivities()I
    .registers 4

    .line 493
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    .line 494
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_9
    if-ltz v1, :cond_1d

    .line 495
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 494
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 497
    .end local v1    # "taskNdx":I
    :cond_1d
    return v0
.end method

.method onActivityAddedToStack(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4468
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_e

    .line 4469
    const-string/jumbo v0, "onActivityAddedToStack"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4471
    :cond_e
    return-void
.end method

.method onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4457
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4459
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_12

    .line 4460
    const-string/jumbo v0, "onActivityRemovedFromStack"

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ActivityStack;->setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4462
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_1c

    .line 4463
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 4465
    :cond_1c
    return-void
.end method

.method onActivityStateChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V
    .registers 7
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "state"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p3, "reason"    # Ljava/lang/String;

    .line 543
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v0, :cond_1d

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p2, v0, :cond_1d

    .line 544
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - onActivityStateChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 547
    :cond_1d
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p2, v0, :cond_68

    .line 548
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_44

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set resumed activity to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - onActivityStateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/am/ActivityManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 554
    :cond_68
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 558
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 559
    .local v0, "prevWindowingMode":I
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 560
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    .line 561
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-eq v0, v2, :cond_16

    .line 562
    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityDisplay;->onStackWindowingModeChanged(Lcom/android/server/am/ActivityStack;)V

    .line 564
    :cond_16
    return-void
.end method

.method onLockTaskPackagesUpdated()V
    .registers 3

    .line 5768
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 5769
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    .line 5768
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5771
    .end local v0    # "taskNdx":I
    :cond_18
    return-void
.end method

.method protected onParentChanged()V
    .registers 2

    .line 249
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged()V

    .line 250
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateUIDsPresentOnDisplay()V

    .line 251
    return-void
.end method

.method onPipAnimationEndResize()V
    .registers 2

    .line 5227
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/StackWindowController;->onPipAnimationEndResize()V

    .line 5228
    return-void
.end method

.method positionChildAt(Lcom/android/server/am/TaskRecord;I)V
    .registers 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "index"    # I

    .line 5675
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-ne v0, p0, :cond_5c

    .line 5680
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationForStack(Lcom/android/server/am/ActivityStack;)V

    .line 5682
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5683
    .local v0, "topRunningActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    .line 5684
    .local v1, "wasResumed":Z
    :goto_1a
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->insertTaskAtPosition(Lcom/android/server/am/TaskRecord;I)V

    .line 5685
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setStack(Lcom/android/server/am/ActivityStack;)V

    .line 5686
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lcom/android/server/am/ActivityStack;->postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V

    .line 5688
    if-eqz v1, :cond_53

    .line 5689
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_4b

    .line 5690
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mResumedActivity was already set when moving mResumedActivity from other stack to this stack mResumedActivity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " other mResumedActivity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5694
    :cond_4b
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v5, "positionChildAt"

    invoke-virtual {v0, v2, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5699
    :cond_53
    invoke-virtual {p0, v4, v3, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 5700
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 5701
    return-void

    .line 5676
    .end local v0    # "topRunningActivity":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "wasResumed":Z
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AS.positionChildAt: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child of stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " current parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5677
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V
    .registers 5
    .param p1, "child"    # Lcom/android/server/am/TaskRecord;

    .line 832
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 834
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .registers 2

    .line 816
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/StackWindowController;->prepareFreezingTaskBounds()V

    .line 817
    return-void
.end method

.method final rankTaskLayers(I)I
    .registers 7
    .param p1, "baseLayer"    # I

    .line 1996
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    .line 1997
    .local v0, "layer":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_9
    if-ltz v1, :cond_2f

    .line 1998
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1999
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 2000
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_29

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_29

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v4, :cond_22

    goto :goto_29

    .line 2003
    :cond_22
    add-int/lit8 v4, v0, 0x1

    .local v4, "layer":I
    add-int/2addr v0, p1

    .end local v0    # "layer":I
    iput v0, v2, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 1997
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    move v0, v4

    goto :goto_2c

    .line 2001
    .end local v4    # "layer":I
    .restart local v0    # "layer":I
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_29
    :goto_29
    const/4 v4, -0x1

    iput v4, v2, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 1997
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2006
    .end local v1    # "taskNdx":I
    :cond_2f
    return v0
.end method

.method final releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I
    .registers 21
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "reason"    # Ljava/lang/String;
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

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p2, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4651
    move-object/from16 v2, p3

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v3, :cond_20

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to release some activities in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4652
    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    .line 4653
    .local v3, "maxTasks":I
    const/4 v4, 0x1

    if-ge v3, v4, :cond_2a

    .line 4654
    const/4 v3, 0x1

    .line 4656
    :cond_2a
    const/4 v5, 0x0

    .line 4657
    .local v5, "numReleased":I
    move v7, v5

    move v5, v3

    const/4 v3, 0x0

    .local v3, "taskNdx":I
    .local v5, "maxTasks":I
    .local v7, "numReleased":I
    :goto_2e
    iget-object v8, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_e2

    if-lez v5, :cond_e2

    .line 4658
    iget-object v8, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 4659
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v9, p2

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4a

    .line 4660
    goto/16 :goto_df

    .line 4662
    :cond_4a
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v10, :cond_64

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Looking for activities to release in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4663
    :cond_64
    const/4 v10, 0x0

    .line 4664
    .local v10, "curNum":I
    iget-object v11, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4665
    .local v11, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move v12, v10

    const/4 v10, 0x0

    .local v10, "actNdx":I
    .local v12, "curNum":I
    :goto_69
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_d0

    .line 4666
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 4667
    .local v13, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v14, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v14, v1, :cond_ce

    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v14

    if-eqz v14, :cond_ce

    .line 4668
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v14, :cond_c1

    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Destroying "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " in state "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4669
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " resumed="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " pausing="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for reason "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4668
    invoke-static {v14, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4671
    :cond_c1
    invoke-virtual {v0, v13, v4, v2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 4672
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v13, :cond_cc

    .line 4674
    add-int/lit8 v10, v10, -0x1

    .line 4676
    :cond_cc
    add-int/lit8 v12, v12, 0x1

    .line 4665
    .end local v13    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_ce
    add-int/2addr v10, v4

    goto :goto_69

    .line 4679
    .end local v10    # "actNdx":I
    :cond_d0
    if-lez v12, :cond_df

    .line 4680
    add-int/2addr v7, v12

    .line 4681
    add-int/lit8 v5, v5, -0x1

    .line 4682
    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v8, :cond_df

    .line 4684
    add-int/lit8 v3, v3, -0x1

    .line 4657
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    .end local v11    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v12    # "curNum":I
    :cond_df
    :goto_df
    add-int/2addr v3, v4

    goto/16 :goto_2e

    .line 4688
    .end local v3    # "taskNdx":I
    :cond_e2
    move-object/from16 v9, p2

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v3, :cond_103

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Done releasing: did "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " activities"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4690
    :cond_103
    return v7
.end method

.method remove()V
    .registers 2

    .line 796
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->removeFromDisplay()V

    .line 797
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/StackWindowController;->removeContainer()V

    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    .line 799
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->onParentChanged()V

    .line 800
    return-void
.end method

.method final removeActivitiesFromLRUListLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1054
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1055
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1056
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_6

    .line 1057
    :cond_18
    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 5544
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5545
    .local v1, "record":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    .line 5546
    .end local v1    # "record":Lcom/android/server/am/ActivityRecord;
    goto :goto_6

    .line 5548
    :cond_16
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 5550
    .local v0, "removed":Z
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3a

    .line 5551
    const/16 v4, 0x756d

    new-array v5, v1, [Ljava/lang/Object;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5554
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivitiesFromLRUListLocked(Lcom/android/server/am/TaskRecord;)V

    .line 5555
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 5557
    if-nez p3, :cond_93

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 5559
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_4f

    goto :goto_50

    :cond_4f
    move v2, v3

    .line 5560
    .local v2, "isVoiceSession":Z
    :goto_50
    if-eqz v2, :cond_5d

    .line 5562
    :try_start_52
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v4, v5, v6}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5b} :catch_5c

    .line 5564
    goto :goto_5d

    .line 5563
    :catch_5c
    move-exception v4

    .line 5566
    :cond_5d
    :goto_5d
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->autoRemoveFromRecents()Z

    move-result v4

    if-nez v4, :cond_65

    if-eqz v2, :cond_90

    .line 5569
    :cond_65
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v4, p1}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 5572
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v4, v3}, Lcom/android/server/am/RecentTasks;->getTask(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 5573
    .local v3, "top":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_7f

    .line 5574
    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->getInstance()Lcom/android/server/am/OnePlusPerfManager;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/am/OnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;)Z

    .line 5579
    :cond_7f
    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v4

    if-eqz v4, :cond_90

    if-eqz v3, :cond_90

    .line 5580
    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/am/OnePlusDuallteManager;->frontPkgChangedEvent(Ljava/lang/String;)V

    .line 5585
    .end local v3    # "top":Lcom/android/server/am/TaskRecord;
    :cond_90
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removeWindowContainer()V

    .line 5588
    .end local v2    # "isVoiceSession":Z
    :cond_93
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 5589
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v2, :cond_b6

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeTask: removing stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5592
    :cond_b6
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v2

    if-eqz v2, :cond_e8

    if-eq p3, v1, :cond_e8

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 5593
    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 5594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " leftTaskHistoryEmpty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5595
    .local v1, "myReason":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_e3

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e8

    .line 5596
    :cond_e3
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5599
    .end local v1    # "myReason":Ljava/lang/String;
    :cond_e8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 5600
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/am/ActivityStack;)V

    .line 5602
    :cond_f5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_fe

    .line 5603
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->remove()V

    .line 5607
    :cond_fe
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setStack(Lcom/android/server/am/ActivityStack;)V

    .line 5610
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 5611
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityUnpinned()V

    .line 5613
    :cond_10f
    return-void
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4522
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4523
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4524
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4525
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4526
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 4527
    return-void
.end method

.method reparent(Lcom/android/server/am/ActivityDisplay;Z)V
    .registers 6
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityDisplay;
    .param p2, "onTop"    # Z

    .line 749
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->removeFromDisplay()V

    .line 752
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 753
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    iget v1, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/wm/StackWindowController;->reparent(ILandroid/graphics/Rect;Z)V

    .line 754
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    move-object v0, v1

    goto :goto_1e

    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    :goto_1e
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->postAddToDisplay(Lcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;Z)V

    .line 755
    const-string/jumbo v0, "reparent"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Z

    .line 756
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 759
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 761
    return-void
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .line 3895
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 3896
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_3a

    :cond_c
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing activity token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " r=, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    :cond_3a
    if-nez v6, :cond_3e

    .line 3901
    const/4 v0, 0x0

    return v0

    .line 3904
    :cond_3e
    move-object v0, p0

    move-object v1, v6

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3905
    const/4 v0, 0x1

    return v0
.end method

.method public requestResize(Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 5180
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 5182
    return-void
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 16
    .param p1, "taskTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 3633
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 3635
    .local v0, "forceReset":Z
    :goto_c
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 3639
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    .line 3642
    .local v2, "taskFound":Z
    const/4 v3, 0x0

    .line 3645
    .local v3, "topOptions":Landroid/app/ActivityOptions;
    const/4 v4, -0x1

    .line 3647
    .local v4, "reparentInsertionPoint":I
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    move v9, v2

    move-object v1, v3

    move v10, v4

    .end local v2    # "taskFound":Z
    .end local v3    # "topOptions":Landroid/app/ActivityOptions;
    .end local v4    # "reparentInsertionPoint":I
    .local v1, "topOptions":Landroid/app/ActivityOptions;
    .local v5, "i":I
    .local v9, "taskFound":Z
    .local v10, "reparentInsertionPoint":I
    :goto_1d
    move v11, v5

    .end local v5    # "i":I
    .local v11, "i":I
    if-ltz v11, :cond_3e

    .line 3648
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/am/TaskRecord;

    .line 3650
    .local v12, "targetTask":Lcom/android/server/am/TaskRecord;
    if-ne v12, v8, :cond_31

    .line 3651
    invoke-direct {p0, v8, v0}, Lcom/android/server/am/ActivityStack;->resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 3652
    const/4 v9, 0x1

    goto :goto_3b

    .line 3654
    :cond_31
    move-object v2, p0

    move-object v3, v12

    move-object v4, v8

    move v5, v9

    move v6, v0

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I

    move-result v10

    .line 3647
    .end local v12    # "targetTask":Lcom/android/server/am/TaskRecord;
    :goto_3b
    add-int/lit8 v5, v11, -0x1

    .end local v11    # "i":I
    .restart local v5    # "i":I
    goto :goto_1d

    .line 3659
    .end local v5    # "i":I
    :cond_3e
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3660
    .local v2, "taskNdx":I
    if-ltz v2, :cond_5c

    .line 3662
    :goto_46
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    .local v4, "taskNdx":I
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "taskNdx":I
    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 3663
    if-nez p1, :cond_5b

    if-gez v4, :cond_59

    goto :goto_5b

    .line 3662
    :cond_59
    move v2, v4

    goto :goto_46

    .line 3666
    :cond_5b
    :goto_5b
    move v2, v4

    .end local v4    # "taskNdx":I
    .restart local v2    # "taskNdx":I
    :cond_5c
    if-eqz v1, :cond_67

    .line 3669
    if-eqz p1, :cond_64

    .line 3670
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_67

    .line 3672
    :cond_64
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->abort()V

    .line 3676
    :cond_67
    :goto_67
    return-object p1
.end method

.method resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempTaskInsetBounds"    # Landroid/graphics/Rect;

    .line 5187
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->updateBoundsAllowed(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5188
    return-void

    .line 5192
    :cond_7
    if-eqz p2, :cond_b

    move-object v0, p2

    goto :goto_c

    :cond_b
    move-object v0, p1

    .line 5193
    .local v0, "taskBounds":Landroid/graphics/Rect;
    :goto_c
    if-eqz p3, :cond_10

    move-object v1, p3

    goto :goto_11

    :cond_10
    move-object v1, v0

    .line 5195
    .local v1, "insetBounds":Landroid/graphics/Rect;
    :goto_11
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 5196
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 5198
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5199
    :try_start_22
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_2a
    if-ltz v3, :cond_6e

    .line 5200
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 5201
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 5202
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 5207
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5208
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v5, p1}, Lcom/android/server/am/ActivityStack;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5209
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    goto :goto_57

    .line 5211
    :cond_54
    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 5215
    :cond_57
    :goto_57
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5216
    if-eqz p3, :cond_6b

    .line 5217
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5199
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6b
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    .line 5221
    .end local v3    # "i":I
    :cond_6e
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/StackWindowController;->resize(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 5222
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 5223
    monitor-exit v2

    .line 5224
    return-void

    .line 5223
    :catchall_7c
    move-exception v3

    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_22 .. :try_end_7e} :catchall_7c

    throw v3
.end method

.method resizeStackWithLaunchBounds()Z
    .registers 2

    .line 2195
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    return v0
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5515
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5519
    .local v0, "starting":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "taskNdx":I
    :goto_c
    if-ltz v1, :cond_46

    .line 5520
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5521
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "activityNdx":I
    :goto_1d
    if-ltz v4, :cond_43

    .line 5522
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 5523
    .local v5, "a":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 5524
    iput-boolean v2, v5, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 5525
    if-eqz v0, :cond_40

    if-ne v5, v0, :cond_40

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v6, :cond_40

    .line 5526
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v7, 0x100

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 5521
    .end local v5    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_40
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    .line 5519
    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    :cond_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 5533
    .end local v1    # "taskNdx":I
    :cond_46
    return-object v0
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 7
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .line 2488
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2490
    return v1

    .line 2493
    :cond_8
    move v0, v1

    .line 2496
    .local v0, "result":Z
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    .line 2497
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    move v0, v2

    .line 2506
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2507
    .local v2, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->canTurnScreenOn()Z

    move-result v3

    if-nez v3, :cond_22

    .line 2508
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_28

    .line 2511
    .end local v2    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_22
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    .line 2512
    nop

    .line 2514
    return v0

    .line 2511
    :catchall_28
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v3, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    throw v2
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4639
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 4640
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_48

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4641
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " resumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pausing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4640
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4643
    :cond_48
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    return v0

    .line 4645
    :cond_4e
    const/4 v0, 0x0

    return v0
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 5
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4598
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4599
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4600
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4601
    return-void
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 16
    .param p1, "callingUid"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "resultCode"    # I
    .param p6, "data"    # Landroid/content/Intent;

    .line 3682
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-lez p1, :cond_11

    .line 3683
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3684
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3683
    move v1, p1

    move-object v3, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 3687
    :cond_11
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_4b

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send activity result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " : who="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " req="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    :cond_4b
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p2, :cond_91

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_91

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_91

    .line 3692
    :try_start_59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3693
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3695
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 3696
    invoke-static {v0}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v4

    .line 3695
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_79} :catch_7a

    .line 3697
    return-void

    .line 3698
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_7a
    move-exception v0

    .line 3699
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown sending result to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3703
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_91
    const/4 v4, 0x0

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3704
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 895
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    invoke-super {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public setWindowingMode(I)V
    .registers 8
    .param p1, "windowingMode"    # I

    .line 568
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V

    .line 570
    return-void
.end method

.method setWindowingMode(IZZZZ)V
    .registers 29
    .param p1, "preferredWindowingMode"    # I
    .param p2, "animate"    # Z
    .param p3, "showRecents"    # Z
    .param p4, "enteringSplitScreenMode"    # Z
    .param p5, "deferEnsuringVisibility"    # Z

    .line 574
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 574
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    const/4 v4, 0x1

    if-nez v0, :cond_b

    move v0, v4

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move v5, v0

    .line 575
    .local v5, "creating":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v6

    .line 576
    .local v6, "currentMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v7

    .line 577
    .local v7, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 578
    .local v8, "topTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 579
    .local v9, "splitScreenStack":Lcom/android/server/am/ActivityStack;
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 583
    const/4 v0, 0x0

    if-eqz v5, :cond_28

    .line 584
    nop

    .line 585
    move v10, v2

    goto :goto_32

    :cond_28
    iget-object v10, v1, Lcom/android/server/am/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v11

    .line 585
    invoke-virtual {v7, v0, v10, v8, v11}, Lcom/android/server/am/ActivityDisplay;->resolveWindowingMode(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;I)I

    move-result v10

    .line 587
    .local v10, "windowingMode":I
    :goto_32
    const/4 v11, 0x4

    if-ne v9, v1, :cond_38

    if-ne v10, v11, :cond_38

    .line 590
    const/4 v10, 0x1

    .line 593
    :cond_38
    invoke-virtual {v7}, Lcom/android/server/am/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v12

    .line 597
    .local v12, "alreadyInSplitScreenMode":Z
    xor-int/lit8 v14, p4, 0x1

    .line 599
    .local v14, "sendNonResizeableNotification":Z
    const/4 v3, 0x3

    if-eqz v12, :cond_6f

    if-ne v10, v4, :cond_6f

    if-eqz v14, :cond_6f

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v15

    if-eqz v15, :cond_6f

    .line 601
    if-eq v2, v3, :cond_52

    if-ne v2, v11, :cond_50

    goto :goto_52

    :cond_50
    const/4 v15, 0x0

    goto :goto_53

    :cond_52
    :goto_52
    move v15, v4

    .line 604
    .local v15, "preferredSplitScreen":Z
    :goto_53
    if-nez v15, :cond_57

    if-eqz v5, :cond_6f

    .line 608
    :cond_57
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 609
    invoke-virtual {v7}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V

    .line 615
    .end local v15    # "preferredSplitScreen":Z
    :cond_6f
    if-ne v6, v10, :cond_72

    .line 617
    return-void

    .line 620
    :cond_72
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 621
    .local v11, "wm":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 623
    .local v3, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v14, :cond_98

    if-eq v10, v4, :cond_98

    if-eqz v3, :cond_98

    .line 624
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isNonResizableOrForcedResizable()Z

    move-result v0

    if-eqz v0, :cond_98

    iget-boolean v0, v3, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_98

    .line 628
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 629
    .local v0, "packageName":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v2, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v13, 0x1

    invoke-virtual {v4, v2, v13, v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 633
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_98
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 635
    if-nez p2, :cond_a6

    if-eqz v3, :cond_a6

    .line 636
    :try_start_9f
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    :cond_a6
    invoke-super {v1, v10}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V
    :try_end_a9
    .catchall {:try_start_9f .. :try_end_a9} :catchall_171

    .line 640
    if-eqz v5, :cond_dd

    .line 689
    if-eqz p3, :cond_d9

    if-nez v12, :cond_d9

    iget v0, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_d9

    const/4 v4, 0x3

    if-ne v10, v4, :cond_d9

    .line 693
    if-eqz v8, :cond_c5

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 694
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    .line 711
    :cond_c5
    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v13, 0x3

    invoke-virtual {v7, v2, v13, v4}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 714
    .local v0, "recentStack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v2, "setWindowingMode"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 716
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 718
    .end local v0    # "recentStack":Lcom/android/server/am/ActivityStack;
    :cond_d9
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 642
    return-void

    .line 645
    :cond_dd
    const/4 v0, 0x2

    if-eq v10, v0, :cond_169

    if-eq v6, v0, :cond_169

    .line 653
    const/4 v2, 0x3

    if-ne v10, v2, :cond_f0

    if-nez v9, :cond_e8

    goto :goto_f0

    .line 657
    :cond_e8
    :try_start_e8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Setting primary split-screen windowing mode while there is already one isn\'t currently supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_f0
    :goto_f0
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 663
    const/4 v0, 0x5

    const/4 v2, 0x1

    if-eq v10, v2, :cond_113

    .line 664
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/StackWindowController;->getRawBounds(Landroid/graphics/Rect;)V

    .line 665
    if-ne v10, v0, :cond_113

    .line 666
    if-eqz v8, :cond_113

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 669
    .local v2, "bounds":Landroid/graphics/Rect;
    if-eqz v2, :cond_113

    .line 670
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 683
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_113
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_121

    if-ne v6, v0, :cond_127

    .line 686
    :cond_121
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_127
    .catchall {:try_start_e8 .. :try_end_127} :catchall_171

    .line 689
    :cond_127
    if-eqz p3, :cond_155

    if-nez v12, :cond_155

    iget v0, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_155

    const/4 v2, 0x3

    if-ne v10, v2, :cond_155

    .line 693
    if-eqz v8, :cond_141

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_141

    .line 694
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    .line 711
    :cond_141
    const/4 v2, 0x1

    const/4 v4, 0x3

    const/4 v13, 0x4

    invoke-virtual {v7, v13, v4, v2}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 714
    .restart local v0    # "recentStack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v2, "setWindowingMode"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 716
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 718
    .end local v0    # "recentStack":Lcom/android/server/am/ActivityStack;
    :cond_155
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 719
    nop

    .line 721
    if-nez p5, :cond_168

    .line 722
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 723
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 725
    :cond_168
    return-void

    .line 649
    :cond_169
    :try_start_169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Changing pinned windowing mode not currently supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_171
    .catchall {:try_start_169 .. :try_end_171} :catchall_171

    .line 689
    :catchall_171
    move-exception v0

    if-eqz p3, :cond_1a0

    if-nez v12, :cond_1a0

    iget v2, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v2, :cond_1a0

    const/4 v2, 0x3

    if-ne v10, v2, :cond_1a0

    .line 693
    if-eqz v8, :cond_18c

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->inSplitScreenPrimaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_18c

    .line 694
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v8}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    .line 711
    :cond_18c
    const/4 v2, 0x1

    const/4 v4, 0x3

    const/4 v13, 0x4

    invoke-virtual {v7, v13, v4, v2}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 714
    .local v2, "recentStack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v4, "setWindowingMode"

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 716
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 718
    .end local v2    # "recentStack":Lcom/android/server/am/ActivityStack;
    :cond_1a0
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z
    .registers 19
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p0

    .line 1908
    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a5

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mForceHidden:Z

    if-eqz v2, :cond_11

    goto/16 :goto_a5

    .line 1911
    :cond_11
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1b

    .line 1912
    return v4

    .line 1915
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1916
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_2e

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isTopStackOnDisplay()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 1919
    return v3

    .line 1922
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v5

    .line 1923
    .local v5, "display":Lcom/android/server/am/ActivityDisplay;
    const/4 v6, 0x0

    .line 1924
    .local v6, "gotSplitScreenStack":Z
    const/4 v7, 0x0

    .line 1925
    .local v7, "gotOpaqueSplitScreenPrimary":Z
    const/4 v8, 0x0

    .line 1926
    .local v8, "gotOpaqueSplitScreenSecondary":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v9

    .line 1927
    .local v9, "windowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result v10

    .line 1928
    .local v10, "isAssistantType":Z
    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v11

    sub-int/2addr v11, v4

    .local v11, "i":I
    :goto_42
    if-ltz v11, :cond_a4

    .line 1929
    invoke-virtual {v5, v11}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 1930
    .local v12, "other":Lcom/android/server/am/ActivityStack;
    if-ne v12, v0, :cond_4b

    .line 1932
    return v4

    .line 1935
    :cond_4b
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v13

    .line 1937
    .local v13, "otherWindowingMode":I
    const/4 v14, 0x4

    const/4 v15, 0x3

    if-ne v13, v4, :cond_70

    .line 1944
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v3

    .line 1945
    .local v3, "activityType":I
    if-ne v9, v15, :cond_67

    .line 1946
    const/4 v15, 0x2

    if-eq v3, v15, :cond_66

    if-ne v3, v14, :cond_67

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1948
    invoke-virtual {v14}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v14

    if-eqz v14, :cond_67

    .line 1949
    :cond_66
    return v4

    .line 1952
    :cond_67
    invoke-virtual {v12, v1}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v14

    if-eqz v14, :cond_6e

    .line 1954
    goto :goto_a0

    .line 1956
    :cond_6e
    const/4 v4, 0x0

    return v4

    .line 1957
    .end local v3    # "activityType":I
    :cond_70
    if-ne v13, v15, :cond_82

    if-nez v7, :cond_82

    .line 1959
    const/4 v6, 0x1

    .line 1960
    nop

    .line 1961
    invoke-virtual {v12, v1}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    xor-int/2addr v3, v4

    move v7, v3

    .line 1962
    if-ne v9, v15, :cond_94

    if-eqz v7, :cond_94

    .line 1965
    const/4 v3, 0x0

    return v3

    .line 1967
    :cond_82
    if-ne v13, v14, :cond_94

    if-nez v8, :cond_94

    .line 1969
    const/4 v6, 0x1

    .line 1970
    nop

    .line 1971
    invoke-virtual {v12, v1}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    xor-int/2addr v3, v4

    move v8, v3

    .line 1972
    if-ne v9, v14, :cond_94

    if-eqz v8, :cond_94

    .line 1975
    const/4 v3, 0x0

    return v3

    .line 1978
    :cond_94
    if-eqz v7, :cond_9a

    if-eqz v8, :cond_9a

    .line 1981
    const/4 v3, 0x0

    return v3

    .line 1983
    :cond_9a
    const/4 v3, 0x0

    if-eqz v10, :cond_a0

    if-eqz v6, :cond_a0

    .line 1987
    return v3

    .line 1928
    .end local v12    # "other":Lcom/android/server/am/ActivityStack;
    .end local v13    # "otherWindowingMode":I
    :cond_a0
    :goto_a0
    add-int/lit8 v11, v11, -0x1

    const/4 v3, 0x0

    goto :goto_42

    .line 1992
    .end local v11    # "i":I
    :cond_a4
    return v4

    .line 1909
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v6    # "gotSplitScreenStack":Z
    .end local v7    # "gotOpaqueSplitScreenPrimary":Z
    .end local v8    # "gotOpaqueSplitScreenSecondary":Z
    .end local v9    # "windowingMode":I
    .end local v10    # "isAssistantType":Z
    :cond_a5
    :goto_a5
    const/4 v2, 0x0

    return v2
.end method

.method shouldSleepActivities()Z
    .registers 3

    .line 5779
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 5783
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-ne v1, p0, :cond_1a

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 5784
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->isKeyguardGoingAway()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 5785
    const/4 v1, 0x0

    return v1

    .line 5788
    :cond_1a
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->isSleeping()Z

    move-result v1

    goto :goto_27

    :cond_21
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    move-result v1

    :goto_27
    return v1
.end method

.method shouldSleepOrShutDownActivities()Z
    .registers 2

    .line 5792
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isShuttingDownLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method shouldUpRecreateTaskLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 10
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .line 4331
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_6c

    .line 4332
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_6c

    .line 4339
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 4340
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_6b

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_6b

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->isDocument()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 4342
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inFrontOfStandardStack()Z

    move-result v2

    if-nez v2, :cond_38

    .line 4344
    return v0

    .line 4347
    :cond_38
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4348
    .local v2, "taskIdx":I
    if-gtz v2, :cond_58

    .line 4349
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4350
    return v3

    .line 4352
    :cond_58
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 4353
    .local v4, "prevTask":Lcom/android/server/am/TaskRecord;
    iget-object v5, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 4355
    return v0

    .line 4358
    .end local v2    # "taskIdx":I
    .end local v4    # "prevTask":Lcom/android/server/am/TaskRecord;
    :cond_6b
    return v3

    .line 4333
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6c
    :goto_6c
    return v0
.end method

.method startActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V
    .registers 23
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "focusedTopActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "newTask"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/app/ActivityOptions;

    .line 3163
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 3163
    move-object/from16 v5, p5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 3164
    .local v6, "rTask":Lcom/android/server/am/TaskRecord;
    iget v7, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 3166
    .local v7, "taskId":I
    iget-boolean v8, v1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v8, :cond_21

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-eqz v8, :cond_1e

    if-eqz v3, :cond_21

    .line 3170
    :cond_1e
    invoke-direct {v0, v6, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 3172
    :cond_21
    const/4 v8, 0x0

    .line 3173
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    const/4 v9, 0x1

    if-nez v3, :cond_80

    .line 3175
    const/4 v10, 0x1

    .line 3176
    .local v10, "startIt":Z
    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v9

    .line 3176
    .local v11, "taskNdx":I
    :goto_2d
    if-ltz v11, :cond_80

    .line 3177
    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 3178
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-nez v12, :cond_3f

    .line 3180
    goto :goto_7d

    .line 3182
    :cond_3f
    if-ne v8, v6, :cond_78

    .line 3186
    if-nez v10, :cond_80

    .line 3187
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v9, :cond_71

    const-string v9, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adding activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " to task "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/RuntimeException;

    const-string/jumbo v14, "here"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3188
    invoke-virtual {v13}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v13

    .line 3187
    invoke-static {v9, v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3189
    :cond_71
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->createWindowContainer()V

    .line 3190
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3191
    return-void

    .line 3194
    :cond_78
    iget v12, v8, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-lez v12, :cond_7d

    .line 3195
    const/4 v10, 0x0

    .line 3176
    :cond_7d
    :goto_7d
    add-int/lit8 v11, v11, -0x1

    goto :goto_2d

    .line 3204
    .end local v10    # "startIt":Z
    .end local v11    # "taskNdx":I
    :cond_80
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v10

    .line 3205
    .local v10, "activityTask":Lcom/android/server/am/TaskRecord;
    const/4 v11, 0x0

    if-ne v8, v10, :cond_a6

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v9

    if-eq v12, v13, :cond_a6

    .line 3206
    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v11, v12, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 3207
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v12, :cond_a6

    const-string v12, "ActivityManager"

    const-string/jumbo v13, "startActivity() behind front, mUserLeaving=false"

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    :cond_a6
    move-object v8, v10

    .line 3214
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v12, :cond_d5

    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Adding activity "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " to stack to task "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/RuntimeException;

    const-string/jumbo v15, "here"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3215
    invoke-virtual {v14}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v14

    .line 3214
    invoke-static {v12, v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3219
    :cond_d5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v12

    if-nez v12, :cond_de

    .line 3220
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->createWindowContainer()V

    .line 3222
    :cond_de
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 3226
    iget-object v12, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_131

    .line 3227
    iget-object v12, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    .line 3228
    .local v12, "ActivityName":Ljava/lang/String;
    if-eqz v12, :cond_131

    const-string v13, "com.google.android.media.gts/com.google.android.media.gts.MediaPlayerTestActivity"

    .line 3229
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_131

    .line 3232
    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "need to remove: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mPerfWeibo:Landroid/util/BoostFramework;

    if-nez v13, :cond_11f

    .line 3234
    new-instance v13, Landroid/util/BoostFramework;

    invoke-direct {v13}, Landroid/util/BoostFramework;-><init>()V

    iput-object v13, v0, Lcom/android/server/am/ActivityStack;->mPerfWeibo:Landroid/util/BoostFramework;

    .line 3236
    :cond_11f
    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mPerfWeibo:Landroid/util/BoostFramework;

    if-eqz v13, :cond_131

    .line 3238
    const/4 v13, 0x4

    new-array v13, v13, [I

    fill-array-data v13, :array_20c

    .line 3241
    .local v13, "lBoostParamVal":[I
    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mPerfWeibo:Landroid/util/BoostFramework;

    const v15, 0x1b7740

    invoke-virtual {v14, v15, v13}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 3246
    .end local v12    # "ActivityName":Ljava/lang/String;
    .end local v13    # "lBoostParamVal":[I
    :cond_131
    sget-object v12, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v12, :cond_142

    .line 3247
    sget-object v12, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v14, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v9, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual {v12, v13, v14, v15, v9}, Lcom/android/internal/app/ActivityTrigger;->activityStartTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Z)V

    .line 3249
    :cond_142
    sget-object v9, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    if-eqz v9, :cond_151

    .line 3250
    sget-object v9, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v12, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 3251
    invoke-static {v9, v12}, Lcom/android/server/am/ActivityPluginDelegate;->activityInvokeNotification(Ljava/lang/String;Z)V

    .line 3253
    :cond_151
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v9

    if-eqz v9, :cond_163

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v9

    if-lez v9, :cond_15e

    goto :goto_163

    .line 3325
    :cond_15e
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto/16 :goto_20a

    .line 3257
    :cond_163
    :goto_163
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v9, :cond_17d

    const-string v9, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Prepare open transition: starting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    :cond_17d
    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v12, 0x10000

    and-int/2addr v9, v12

    const/4 v12, 0x0

    if-eqz v9, :cond_196

    .line 3260
    iget-object v9, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v11, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3261
    iget-object v9, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b7

    .line 3263
    :cond_196
    const/4 v9, 0x6

    .line 3264
    .local v9, "transit":I
    if-eqz v3, :cond_1ab

    .line 3265
    iget-boolean v13, v1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v13, :cond_1a0

    .line 3266
    const/16 v9, 0x10

    goto :goto_1ab

    .line 3272
    :cond_1a0
    invoke-virtual {v0, v2, v12, v1, v5}, Lcom/android/server/am/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v13

    if-eqz v13, :cond_1a9

    .line 3274
    const/4 v13, 0x1

    iput-boolean v13, v2, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 3276
    :cond_1a9
    const/16 v9, 0x8

    .line 3279
    :cond_1ab
    :goto_1ab
    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13, v9, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3280
    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3282
    .end local v9    # "transit":I
    :goto_1b7
    const/4 v9, 0x1

    .line 3283
    .local v9, "doShow":Z
    if-eqz v3, :cond_1d3

    .line 3289
    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    move-result v13

    const/high16 v14, 0x200000

    and-int/2addr v13, v14

    if-eqz v13, :cond_1dd

    .line 3290
    invoke-virtual {v0, v1, v1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 3291
    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    if-ne v13, v1, :cond_1d0

    const/4 v13, 0x1

    goto :goto_1d1

    :cond_1d0
    move v13, v11

    :goto_1d1
    move v9, v13

    goto :goto_1dd

    .line 3293
    :cond_1d3
    if-eqz v5, :cond_1dd

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_1dd

    .line 3295
    const/4 v9, 0x0

    .line 3297
    :cond_1dd
    :goto_1dd
    iget-boolean v13, v1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v13, :cond_1e9

    .line 3300
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 3301
    invoke-virtual {v0, v12, v11, v11}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_209

    .line 3302
    :cond_1e9
    if-eqz v9, :cond_209

    .line 3307
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 3308
    .local v11, "prevTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->topRunningActivityWithStartingWindowLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 3309
    .local v12, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_202

    .line 3312
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    if-eq v13, v11, :cond_1fd

    .line 3313
    const/4 v12, 0x0

    goto :goto_202

    .line 3316
    :cond_1fd
    iget-boolean v13, v12, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v13, :cond_202

    .line 3317
    const/4 v12, 0x0

    .line 3320
    :cond_202
    :goto_202
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/ActivityStack;->isTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v13

    invoke-virtual {v1, v12, v3, v13}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3322
    .end local v9    # "doShow":Z
    .end local v11    # "prevTask":Lcom/android/server/am/TaskRecord;
    .end local v12    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_209
    :goto_209
    nop

    .line 3327
    :goto_20a
    return-void

    nop

    :array_20c
    .array-data 4
        0x40800000    # 4.0f
        0xffe
        0x40800100    # 4.000122f
        0xffe
    .end array-data
.end method

.method final startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z
    .registers 16
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "pauseImmediately"    # Z

    .line 1529
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 1530
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

    .line 1531
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1530
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1536
    invoke-direct {p0, v1, p3}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    .line 1541
    :cond_34
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    .line 1547
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x457

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1548
    .local v0, "m":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1549
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "pkg"

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    const-string/jumbo v3, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1551
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1552
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1557
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1561
    .local v3, "prev":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_72

    .line 1562
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/server/am/ProcessRecord;->lastFgTime:J

    .line 1566
    :cond_72
    if-nez v3, :cond_83

    .line 1567
    if-nez p3, :cond_82

    .line 1568
    const-string v4, "ActivityManager"

    const-string v5, "Trying to pause when nothing is resumed"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1571
    :cond_82
    return v1

    .line 1574
    :cond_83
    if-ne v3, p3, :cond_8d

    .line 1575
    const-string v4, "ActivityManager"

    const-string v5, "Trying to pause activity that is in process of being resumed"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    return v1

    .line 1579
    :cond_8d
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_a8

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving to PAUSING: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 1580
    :cond_a8
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_c2

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start pausing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_c2
    :goto_c2
    sget-object v4, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v4, :cond_d1

    .line 1583
    sget-object v4, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/app/ActivityTrigger;->activityPauseTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 1586
    :cond_d1
    sget-object v4, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    const/4 v5, 0x1

    if-eqz v4, :cond_e1

    .line 1587
    sget-object v4, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 1588
    invoke-static {v4, v6, v5}, Lcom/android/server/am/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 1591
    :cond_e1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1592
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1593
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1594
    nop

    .line 1595
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1594
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v6, v7

    if-nez v6, :cond_ff

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v6, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_fd

    goto :goto_ff

    .line 1595
    :cond_fd
    move-object v6, v4

    goto :goto_100

    :cond_ff
    :goto_ff
    move-object v6, v3

    :goto_100
    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1596
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v7, "startPausingLocked"

    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1597
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1598
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 1600
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchTimeTracker()Lcom/android/server/am/LaunchTimeTracker;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/LaunchTimeTracker;->stopFullyDrawnTraceIfNeeded(I)V

    .line 1602
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1604
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_193

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_193

    .line 1605
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v6, :cond_14a

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enqueueing pending pause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_14a
    :try_start_14a
    iget v6, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "userLeaving="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/am/EventLogTags;->writeAmPauseActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 1609
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v3, v1}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1611
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v9, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v10, v3, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 1612
    invoke-static {v9, p1, v10, p4}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v9

    .line 1611
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_183} :catch_184

    goto :goto_192

    .line 1614
    :catch_184
    move-exception v6

    .line 1616
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "ActivityManager"

    const-string v8, "Exception thrown during pause"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1617
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1618
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1619
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1620
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_192
    goto :goto_199

    .line 1622
    :cond_193
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1623
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1624
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1629
    :goto_199
    if-nez p2, :cond_1a8

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v4

    if-nez v4, :cond_1a8

    .line 1630
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->acquireLaunchWakelock()V

    .line 1633
    :cond_1a8
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_1c7

    .line 1638
    if-nez p2, :cond_1b2

    .line 1639
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    goto :goto_1bd

    .line 1640
    :cond_1b2
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_1bd

    .line 1641
    const-string v4, "ActivityManager"

    const-string v6, "Key dispatch not paused for screen off"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :cond_1bd
    :goto_1bd
    if-eqz p4, :cond_1c3

    .line 1647
    invoke-direct {p0, v1, p3}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    .line 1648
    return v1

    .line 1651
    :cond_1c3
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->schedulePauseTimeout(Lcom/android/server/am/ActivityRecord;)V

    .line 1652
    return v5

    .line 1658
    :cond_1c7
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_1d2

    const-string v4, "ActivityManager"

    const-string v5, "Activity not running, resuming next."

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    :cond_1d2
    if-nez p3, :cond_1d9

    .line 1660
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1662
    :cond_1d9
    return v1
.end method

.method final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 3789
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_1a

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3790
    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->launching:Z

    .line 3793
    const/4 v1, 0x0

    .line 3794
    .local v1, "finishQuickPay":Z
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->isQuickPayNoHistory:Z

    if-eqz v2, :cond_5d

    .line 3795
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickPay: Stopping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Resumming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityRecord;->isQuickPayNoHistory:Z

    if-nez v2, :cond_5c

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3797
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, v3, :cond_5d

    .line 3798
    :cond_5c
    const/4 v1, 0x1

    .line 3802
    :cond_5d
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-nez v2, :cond_72

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_72

    if-eqz v1, :cond_ed

    .line 3812
    :cond_72
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_ed

    .line 3820
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService;->isAppLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 3821
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppLocker: Not finishing noHistory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " on stop because it\'s locked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    .line 3823
    :cond_9a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v2

    if-nez v2, :cond_ce

    .line 3825
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v2, :cond_bb

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no-history finish of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    :cond_bb
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "stop-no-history"

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 3830
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3831
    return-void

    .line 3834
    :cond_ce
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v2, :cond_ed

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not finishing noHistory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " on stop because we\'re just sleeping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3840
    :cond_ed
    :goto_ed
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1e4

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1e4

    .line 3841
    const-string/jumbo v2, "stopActivity"

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityStack(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3842
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3844
    const/4 v2, 0x1

    :try_start_101
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3846
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_122

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to STOPPING: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (stop requested)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    :cond_122
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v4, "stopActivityLocked"

    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3849
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_14e

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    :cond_14e
    sget-object v3, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v3, :cond_15d

    .line 3853
    sget-object v3, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/app/ActivityTrigger;->activityStopTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 3856
    :cond_15d
    sget-object v3, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    if-eqz v3, :cond_16c

    .line 3857
    sget-object v3, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 3858
    invoke-static {v3, v4, v0}, Lcom/android/server/am/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 3861
    :cond_16c
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v3, :cond_173

    .line 3862
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    .line 3864
    :cond_173
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3865
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 3864
    invoke-static {v0, v3, v4}, Lcom/android/server/am/EventLogTags;->writeAmStopActivity(IILjava/lang/String;)V

    .line 3866
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v0

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 3867
    invoke-static {v5, v6}, Landroid/app/servertransaction/StopActivityItem;->obtain(ZI)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v5

    .line 3866
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 3868
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 3869
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 3871
    :cond_19e
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3872
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2af8

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_1ad} :catch_1ae

    .line 3885
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_1e4

    .line 3873
    :catch_1ae
    move-exception v0

    .line 3877
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    const-string v4, "Exception thrown during pause"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3879
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3880
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_1d2

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop failed; moving to STOPPED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    :cond_1d2
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v4, "stopActivityLocked"

    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3882
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v3, :cond_1e4

    .line 3883
    const-string/jumbo v3, "stop-except"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 3887
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e4
    :goto_1e4
    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 3

    .line 2200
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2201
    .local v0, "topTask":Lcom/android/server/am/TaskRecord;
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v0, :cond_12

    .line 2202
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_12
    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 2201
    :goto_15
    return v1
.end method

.method final switchUserLocked(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 1341
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-ne v0, p1, :cond_5

    .line 1342
    return-void

    .line 1344
    :cond_5
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 1347
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1348
    .local v0, "index":I
    const/4 v1, 0x0

    .line 1348
    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_5a

    .line 1349
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1351
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->okToShowLocked()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 1352
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_4a

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchUserLocked: stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " moving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to top"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_4a
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1355
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    add-int/lit8 v0, v0, -0x1

    goto :goto_59

    .line 1359
    :cond_57
    add-int/lit8 v1, v1, 0x1

    .line 1361
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :goto_59
    goto :goto_e

    .line 1362
    .end local v1    # "i":I
    :cond_5a
    return-void
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .registers 5
    .param p1, "id"    # I

    .line 1000
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 1001
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 1002
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_17

    .line 1003
    return-object v1

    .line 1000
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1006
    .end local v0    # "taskNdx":I
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 5758
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
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

    .line 5759
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5760
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5761
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " translucent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5762
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 5764
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tasks}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5758
    return-object v0
.end method

.method topActivityOccludesKeyguard()Z
    .registers 2

    .line 2187
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    return v0
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .line 899
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .line 957
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_3c

    .line 958
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 959
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p2, :cond_17

    .line 960
    goto :goto_39

    .line 962
    :cond_17
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 963
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1f
    if-ltz v3, :cond_39

    .line 964
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 966
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_36

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v5, :cond_36

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 967
    return-object v4

    .line 963
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_36
    add-int/lit8 v3, v3, -0x1

    goto :goto_1f

    .line 957
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "i":I
    :cond_39
    :goto_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 971
    .end local v0    # "taskNdx":I
    :cond_3c
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 8
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .line 934
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_39

    .line 935
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 936
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 937
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1a
    if-ltz v3, :cond_36

    .line 938
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 939
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_33

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v5, :cond_33

    if-eq v4, p1, :cond_33

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 940
    return-object v4

    .line 937
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_33
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 934
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 944
    .end local v0    # "taskNdx":I
    :cond_39
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningNonOverlayTaskActivity()Lcom/android/server/am/ActivityRecord;
    .registers 7

    .line 920
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_31

    .line 921
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 922
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 923
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1a
    if-ltz v3, :cond_2e

    .line 924
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 925
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_2b

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-nez v5, :cond_2b

    .line 926
    return-object v4

    .line 923
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2b
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 920
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 930
    .end local v0    # "taskNdx":I
    :cond_31
    const/4 v0, 0x0

    return-object v0
.end method

.method final topTask()Lcom/android/server/am/TaskRecord;
    .registers 4

    .line 985
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 986
    .local v0, "size":I
    if-lez v0, :cond_13

    .line 987
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    return-object v1

    .line 989
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method unhandledBackLocked()V
    .registers 11

    .line 5397
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5398
    .local v0, "top":I
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_22

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing unhandledBack(): top activity at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5399
    :cond_22
    if-ltz v0, :cond_47

    .line 5400
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5401
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 5402
    .local v2, "activityTop":I
    if-ltz v2, :cond_47

    .line 5403
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "unhandled-back"

    const/4 v9, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5407
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityTop":I
    :cond_47
    return-void
.end method

.method updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 9
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1399
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1400
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1402
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_10
    if-ltz v2, :cond_3f

    .line 1403
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1404
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "activityNdx":I
    :goto_22
    if-ltz v4, :cond_3c

    .line 1405
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1407
    .local v5, "ar":Lcom/android/server/am/ActivityRecord;
    iget v6, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v1, v6, :cond_39

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1408
    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityRecord;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 1404
    .end local v5    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_39
    add-int/lit8 v4, v4, -0x1

    goto :goto_22

    .line 1402
    .end local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    :cond_3c
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 1412
    .end local v2    # "taskNdx":I
    :cond_3f
    return-void
.end method

.method updateBoundsAllowed(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempTaskInsetBounds"    # Landroid/graphics/Rect;

    .line 871
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 872
    return v1

    .line 874
    :cond_6
    if-eqz p1, :cond_e

    .line 875
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_13

    .line 877
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 879
    :goto_13
    if-eqz p2, :cond_1b

    .line 880
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_20

    .line 882
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 884
    :goto_20
    if-eqz p3, :cond_28

    .line 885
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2d

    .line 887
    :cond_28
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 889
    :goto_2d
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    .line 890
    const/4 v0, 0x0

    return v0
.end method

.method final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1060
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1061
    .local v0, "hadit":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    return v0
.end method

.method willActivityBeVisibleLocked(Landroid/os/IBinder;)Z
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;

    .line 5271
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 5271
    .local v0, "taskNdx":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_36

    .line 5272
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5273
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .line 5273
    .local v4, "activityNdx":I
    :goto_1a
    if-ltz v4, :cond_33

    .line 5274
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 5275
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-ne v6, p1, :cond_27

    .line 5276
    return v1

    .line 5278
    :cond_27
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_30

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_30

    .line 5279
    return v2

    .line 5273
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_30
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    .line 5271
    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5283
    .end local v0    # "taskNdx":I
    :cond_36
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5284
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_3d

    .line 5285
    return v2

    .line 5287
    :cond_3d
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_58

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5289
    :cond_58
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    xor-int/2addr v1, v2

    return v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 5796
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5797
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    const/4 v4, 0x0

    invoke-super {p0, p1, v2, v3, v4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 5798
    iget v2, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5799
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_1f
    if-ltz v2, :cond_34

    .line 5800
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 5801
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/TaskRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5799
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 5803
    .end local v2    # "taskNdx":I
    :cond_34
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_42

    .line 5804
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5806
    :cond_42
    const-wide v2, 0x10500000005L

    iget v4, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5807
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 5808
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5809
    .local v2, "bounds":Landroid/graphics/Rect;
    const-wide v3, 0x10b00000007L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5813
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_5e
    const-wide v2, 0x10800000006L

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5814
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5815
    return-void
.end method
