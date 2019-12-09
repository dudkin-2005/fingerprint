.class public Lcom/android/server/am/ActivityStackSupervisor;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/server/am/RecentTasks$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;,
        Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;,
        Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;,
        Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;,
        Lcom/android/server/am/ActivityStackSupervisor$AnyTaskForIdMatchTaskMode;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field private static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field private static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field static final CREATE_IF_NEEDED:Z = true

.field static final DEFER_RESUME:Z = true

.field static final HANDLE_DISPLAY_ADDED:I = 0x69

.field static final HANDLE_DISPLAY_CHANGED:I = 0x6a

.field static final HANDLE_DISPLAY_REMOVED:I = 0x6b

.field static final IDLE_NOW_MSG:I = 0x65

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x64

.field static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0x70

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final MATCH_TASK_IN_STACKS_ONLY:I = 0x0

.field static final MATCH_TASK_IN_STACKS_OR_RECENT_TASKS:I = 0x1

.field static final MATCH_TASK_IN_STACKS_OR_RECENT_TASKS_AND_RESTORE:I = 0x2

.field private static final MAX_TASK_IDS_PER_USER:I = 0x186a0

.field static final ON_TOP:Z = true

.field static final PAUSE_IMMEDIATELY:Z = true

.field static final PRESERVE_WINDOWS:Z = true

.field static final REMOVE_FROM_RECENTS:Z = true

.field static final REPORT_MULTI_WINDOW_MODE_CHANGED_MSG:I = 0x72

.field static final REPORT_PIP_MODE_CHANGED_MSG:I = 0x73

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x66

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x67

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_IDLE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field static final VALIDATE_WAKE_LOCK_CALLER:Z = false

.field private static final VIRTUAL_DISPLAY_BASE_NAME:Ljava/lang/String; = "ActivityViewVirtualDisplay"

.field public static mPerfSendTapHint:Z


# instance fields
.field inResumeTopActivity:Z

.field final mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActivityDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

.field private mAllowDockedStackResize:Z

.field mAppVisibilitiesChangedSinceLastPause:Z

.field private final mCurTaskIdForUser:Landroid/util/SparseIntArray;

.field mCurrentUser:I

.field mDefaultMinSizeOfResizeableTask:I

.field private mDeferResumeCount:I

.field private final mDisplayAccessUIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDockedStackResizing:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedStack:Lcom/android/server/am/ActivityStack;

.field mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mHasPendingDockedBounds:Z

.field mHomeStack:Lcom/android/server/am/ActivityStack;

.field private mInitialized:Z

.field mIsDockMinimized:Z

.field private mKeyguardController:Lcom/android/server/am/KeyguardController;

.field private mLastFocusedStack:Lcom/android/server/am/ActivityStack;

.field private mLaunchParamsController:Lcom/android/server/am/LaunchParamsController;

.field private mLaunchTimeTracker:Lcom/android/server/am/LaunchTimeTracker;

.field mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field final mLooper:Landroid/os/Looper;

.field final mMultiWindowModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingDockedBounds:Landroid/graphics/Rect;

.field private mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

.field private mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

.field private mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

.field private mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

.field public mPerfBoost:Landroid/util/BoostFramework;

.field final mPipModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

.field private mPowerHintSent:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mRecentTasks:Lcom/android/server/am/RecentTasks;

.field private final mResizingTasksDuringAnimation:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningTasks:Lcom/android/server/am/RunningTasks;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManagerInternal$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskLayersChanged:Z

.field private final mTmpActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

.field private final mTmpOptions:Landroid/app/ActivityOptions;

.field private mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

.field mUserLeaving:Z

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field public mUxPerf:Landroid/util/BoostFramework;

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitingForActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private final tempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 227
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 294
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 298
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 618
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 229
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    .line 340
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    .line 431
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 435
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    .line 437
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 448
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    .line 449
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 453
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    .line 459
    new-instance v1, Lcom/android/server/am/LaunchTimeTracker;

    invoke-direct {v1}, Lcom/android/server/am/LaunchTimeTracker;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchTimeTracker:Lcom/android/server/am/LaunchTimeTracker;

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    .line 545
    new-instance v1, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    invoke-direct {v1}, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    .line 552
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    .line 563
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    .line 572
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 619
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 620
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    .line 621
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 622
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayAdded(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayRemoved(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/am/ActivityRecord;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTokenLocked(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V

    return-void
.end method

.method private allResumedActivitiesVisible()Z
    .registers 8

    .line 1062
    const/4 v0, 0x0

    .line 1063
    .local v0, "foundResumed":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_3c

    .line 1064
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1065
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_39

    .line 1066
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1067
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1068
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_36

    .line 1069
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v6, :cond_34

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    goto :goto_34

    .line 1072
    :cond_32
    const/4 v0, 0x1

    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_36

    .line 1070
    .restart local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_34
    :goto_34
    const/4 v6, 0x0

    return v6

    .line 1065
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_36
    :goto_36
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1063
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1076
    .end local v1    # "displayNdx":I
    :cond_3c
    return v0
.end method

.method private beginDeferResume()V
    .registers 2

    .line 4814
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 4815
    return-void
.end method

.method private calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityDisplay;)V
    .registers 4
    .param p1, "display"    # Lcom/android/server/am/ActivityDisplay;

    .line 4496
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 4497
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 4499
    return-void
.end method

.method private canLaunchOnDisplay(Lcom/android/server/am/ActivityRecord;I)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "displayId"    # I

    .line 2561
    if-nez p1, :cond_4

    .line 2562
    const/4 v0, 0x1

    return v0

    .line 2564
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    return v0
.end method

.method private checkFinishBootingLocked()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .line 2021
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 2022
    .local v0, "booting":Z
    const/4 v1, 0x0

    .line 2023
    .local v1, "enableScreen":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 2024
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_16

    .line 2025
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 2026
    const/4 v1, 0x1

    .line 2028
    :cond_16
    if-nez v0, :cond_1a

    if-eqz v1, :cond_1f

    .line 2029
    :cond_1a
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->postFinishBooting(ZZ)V

    .line 2031
    :cond_1f
    return v0
.end method

.method private displayConfigMatchesGlobal(I)Z
    .registers 6
    .param p1, "displayId"    # I

    .line 528
    if-nez p1, :cond_4

    .line 529
    const/4 v0, 0x1

    return v0

    .line 531
    :cond_4
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 532
    const/4 v0, 0x0

    return v0

    .line 534
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 535
    .local v0, "targetDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_1c

    .line 538
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    return v1

    .line 536
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z
    .registers 30
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "complete"    # Z
    .param p6, "brief"    # Z
    .param p7, "client"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;
    .param p9, "needNL"    # Z
    .param p10, "header"    # Ljava/lang/String;
    .param p11, "lastTask"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/android/server/am/TaskRecord;",
            ")Z"
        }
    .end annotation

    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p8

    .line 4318
    const/4 v0, 0x0

    .line 4319
    .local v0, "innerPrefix":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4320
    .local v5, "args":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 4321
    .local v6, "printed":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    move/from16 v11, p9

    move-object v9, v0

    move-object v10, v5

    move-object/from16 v0, p10

    move-object/from16 v5, p11

    .end local p9    # "needNL":Z
    .end local p10    # "header":Ljava/lang/String;
    .end local p11    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v0, "header":Ljava/lang/String;
    .local v5, "lastTask":Lcom/android/server/am/TaskRecord;
    .local v7, "i":I
    .local v9, "innerPrefix":Ljava/lang/String;
    .local v10, "args":[Ljava/lang/String;
    .local v11, "needNL":Z
    :goto_17
    if-ltz v7, :cond_181

    .line 4322
    move-object/from16 v12, p2

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 4323
    .local v13, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_32

    iget-object v14, v13, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_32

    .line 4324
    nop

    .line 4321
    move-object/from16 v17, v5

    move-object/from16 v5, p0

    goto/16 :goto_176

    .line 4326
    :cond_32
    const/4 v14, 0x0

    if-nez v9, :cond_48

    .line 4327
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "      "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4328
    new-array v10, v14, [Ljava/lang/String;

    .line 4330
    :cond_48
    const/4 v6, 0x1

    .line 4331
    if-nez p6, :cond_55

    if-nez p5, :cond_53

    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v15

    if-nez v15, :cond_55

    :cond_53
    const/4 v14, 0x1

    nop

    .line 4332
    .local v14, "full":Z
    :cond_55
    if-eqz v11, :cond_5d

    .line 4333
    const-string v15, ""

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4334
    const/4 v11, 0x0

    .line 4336
    :cond_5d
    if-eqz v0, :cond_63

    .line 4337
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4338
    const/4 v0, 0x0

    .line 4340
    .end local v0    # "header":Ljava/lang/String;
    .local v15, "header":Ljava/lang/String;
    :cond_63
    move-object v15, v0

    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eq v5, v0, :cond_ac

    .line 4341
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 4342
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4343
    if-eqz v14, :cond_76

    const-string v0, "* "

    goto :goto_78

    :cond_76
    const-string v0, "  "

    :goto_78
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4344
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4345
    if-eqz v14, :cond_95

    .line 4346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_ac

    .line 4347
    :cond_95
    if-eqz p5, :cond_ac

    .line 4349
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_ac

    .line 4350
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4351
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4355
    :cond_ac
    :goto_ac
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v14, :cond_b4

    const-string v0, "  * "

    goto :goto_b6

    :cond_b4
    const-string v0, "    "

    :goto_b6
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v4, p4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4356
    const-string v0, " #"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4357
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4358
    if-eqz v14, :cond_d4

    .line 4359
    invoke-virtual {v13, v1, v9}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_ee

    .line 4360
    :cond_d4
    if-eqz p5, :cond_ee

    .line 4362
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4363
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_ee

    .line 4364
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4367
    :cond_ee
    :goto_ee
    if-eqz p7, :cond_171

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_171

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_171

    .line 4370
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 4372
    :try_start_fd
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_102} :catch_151
    .catch Landroid/os/RemoteException; {:try_start_fd .. :try_end_102} :catch_137

    move-object/from16 v16, v0

    .line 4374
    .local v16, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_104
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_108
    .catchall {:try_start_104 .. :try_end_108} :catchall_128

    move-object/from16 v2, v16

    :try_start_10a
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .end local v16    # "tp":Lcom/android/internal/os/TransferPipe;
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    iget-object v4, v13, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_113
    .catchall {:try_start_10a .. :try_end_113} :catchall_122

    .line 4377
    const-wide/16 v3, 0x7d0

    move-object/from16 v17, v5

    move-object/from16 v5, p0

    :try_start_119
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_11c
    .catchall {:try_start_119 .. :try_end_11c} :catchall_120

    .line 4379
    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v17, "lastTask":Lcom/android/server/am/TaskRecord;
    :try_start_11c
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 4380
    goto :goto_16d

    .line 4379
    :catchall_120
    move-exception v0

    goto :goto_12f

    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    :catchall_122
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v5, p0

    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    goto :goto_12f

    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v16    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_128
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v2, v16

    move-object/from16 v5, p0

    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .end local v16    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    :goto_12f
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v0
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_133} :catch_135
    .catch Landroid/os/RemoteException; {:try_start_11c .. :try_end_133} :catch_133

    .line 4383
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_133
    move-exception v0

    goto :goto_13c

    .line 4381
    :catch_135
    move-exception v0

    goto :goto_156

    .line 4383
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    :catch_137
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v5, p0

    .line 4384
    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    :goto_13c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Got a RemoteException while dumping the activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_16e

    .line 4381
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    :catch_151
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v5, p0

    .line 4382
    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    :goto_156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failure while dumping the activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4385
    .end local v0    # "e":Ljava/io/IOException;
    :goto_16d
    nop

    .line 4386
    :goto_16e
    const/4 v0, 0x1

    .line 4321
    .end local v11    # "needNL":Z
    .end local v13    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "full":Z
    .local v0, "needNL":Z
    move v11, v0

    goto :goto_175

    .end local v0    # "needNL":Z
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "needNL":Z
    :cond_171
    move-object/from16 v17, v5

    move-object/from16 v5, p0

    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .end local v15    # "header":Ljava/lang/String;
    .local v0, "header":Ljava/lang/String;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    :goto_175
    move-object v0, v15

    :goto_176
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v5, v17

    move-object/from16 v2, p3

    move-object/from16 v4, p8

    const/4 v8, 0x1

    goto/16 :goto_17

    .line 4389
    .end local v7    # "i":I
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    :cond_181
    move-object/from16 v12, p2

    move-object/from16 v17, v5

    move-object/from16 v5, p0

    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    return v6
.end method

.method private endDeferResume()V
    .registers 2

    .line 4821
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 4822
    return-void
.end method

.method private getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 1961
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1962
    return v0

    .line 1965
    :cond_4
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1966
    .local v1, "permission":Ljava/lang/String;
    if-nez v1, :cond_f

    .line 1967
    return v0

    .line 1972
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1000

    .line 1973
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_1d} :catch_47

    .line 1977
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 1976
    nop

    .line 1979
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1980
    return v0

    .line 1983
    :cond_28
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v1, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_33

    .line 1984
    const/4 v0, 0x1

    return v0

    .line 1987
    :cond_33
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    .line 1988
    .local v3, "opCode":I
    if-ne v3, v4, :cond_3a

    .line 1989
    return v0

    .line 1992
    :cond_3a
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v4, v3, p4, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_46

    .line 1994
    const/4 v0, 0x2

    return v0

    .line 1997
    :cond_46
    return v0

    .line 1974
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "opCode":I
    :catch_47
    move-exception v2

    .line 1975
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find package info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    return v0
.end method

.method private getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I
    .registers 13
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "ignoreTargetSecurity"    # Z

    .line 1934
    const/4 v0, -0x1

    if-nez p5, :cond_17

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-ne v1, v0, :cond_17

    .line 1937
    const/4 v0, 0x1

    return v0

    .line 1940
    :cond_17
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    .line 1941
    return v2

    .line 1944
    :cond_1d
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 1945
    .local v1, "opCode":I
    if-ne v1, v0, :cond_26

    .line 1946
    return v2

    .line 1949
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v0, v1, p4, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_34

    .line 1951
    if-nez p5, :cond_34

    .line 1952
    const/4 v0, 0x2

    return v0

    .line 1956
    :cond_34
    return v2
.end method

.method private getStack(II)Lcom/android/server/am/ActivityStack;
    .registers 5
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(II)TT;"
        }
    .end annotation

    .line 2423
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 2424
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2425
    .local v1, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    if-eqz v1, :cond_19

    .line 2426
    return-object v1

    .line 2423
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2429
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .registers 15
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 4591
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 4592
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4593
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    new-instance v2, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 4594
    .local v2, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityStack;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    .line 4595
    iput v0, v2, Landroid/app/ActivityManager$StackInfo;->displayId:I

    .line 4596
    iget v3, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iput v3, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 4597
    iget v3, p1, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    iput v3, v2, Landroid/app/ActivityManager$StackInfo;->userId:I

    .line 4598
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    iput-boolean v4, v2, Landroid/app/ActivityManager$StackInfo;->visible:Z

    .line 4600
    const/4 v4, 0x0

    if-eqz v1, :cond_2d

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v5

    goto :goto_2e

    :cond_2d
    move v5, v4

    :goto_2e
    iput v5, v2, Landroid/app/ActivityManager$StackInfo;->position:I

    .line 4601
    iget-object v5, v2, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4603
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 4604
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4605
    .local v6, "numTasks":I
    new-array v7, v6, [I

    .line 4606
    .local v7, "taskIds":[I
    new-array v8, v6, [Ljava/lang/String;

    .line 4607
    .local v8, "taskNames":[Ljava/lang/String;
    new-array v9, v6, [Landroid/graphics/Rect;

    .line 4608
    .local v9, "taskBounds":[Landroid/graphics/Rect;
    new-array v10, v6, [I

    .line 4609
    .local v10, "taskUserIds":[I
    nop

    .line 4609
    .local v4, "i":I
    :goto_4a
    if-ge v4, v6, :cond_91

    .line 4610
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 4611
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    iget v12, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    aput v12, v7, v4

    .line 4612
    iget-object v12, v11, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_61

    iget-object v12, v11, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    goto :goto_7c

    .line 4613
    :cond_61
    iget-object v12, v11, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_6c

    iget-object v12, v11, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    goto :goto_7c

    .line 4614
    :cond_6c
    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_79

    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_7c

    .line 4615
    :cond_79
    const-string/jumbo v12, "unknown"

    :goto_7c
    aput-object v12, v8, v4

    .line 4616
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    aput-object v12, v9, v4

    .line 4617
    aget-object v12, v9, v4

    invoke-virtual {v11, v12}, Lcom/android/server/am/TaskRecord;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    .line 4618
    iget v12, v11, Lcom/android/server/am/TaskRecord;->userId:I

    aput v12, v10, v4

    .line 4609
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 4620
    .end local v4    # "i":I
    :cond_91
    iput-object v7, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    .line 4621
    iput-object v8, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    .line 4622
    iput-object v9, v2, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    .line 4623
    iput-object v10, v2, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    .line 4625
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4626
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_a6

    iget-object v3, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    nop

    :cond_a6
    iput-object v3, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 4627
    return-object v2
.end method

.method private handleDisplayAdded(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 4443
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4444
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    .line 4445
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4446
    return-void

    .line 4445
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private handleDisplayChanged(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 4521
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4522
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4524
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v1, :cond_3c

    .line 4526
    if-eqz p1, :cond_39

    .line 4527
    iget-object v2, v1, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    .line 4528
    .local v2, "displayState":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    iget-object v3, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v3, :cond_2a

    .line 4529
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "Display-off"

    .line 4530
    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/ActivityManagerService;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_39

    .line 4531
    :cond_2a
    const/4 v3, 0x2

    if-ne v2, v3, :cond_39

    iget-object v3, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v3, :cond_39

    .line 4533
    iget-object v3, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 4534
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 4538
    .end local v2    # "displayState":I
    :cond_39
    :goto_39
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->updateBounds()V

    .line 4540
    :cond_3c
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayChanged(I)V

    .line 4541
    .end local v1    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_46

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4542
    return-void

    .line 4541
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private handleDisplayRemoved(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 4502
    if-eqz p1, :cond_2d

    .line 4506
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4507
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4508
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-nez v1, :cond_17

    .line 4509
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4512
    :cond_17
    :try_start_17
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->remove()V

    .line 4514
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->releaseSleepTokens(Lcom/android/server/am/ActivityDisplay;)V

    .line 4516
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4517
    .end local v1    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4518
    return-void

    .line 4517
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4503
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the primary display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 3837
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3838
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3840
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 3841
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v3, v0}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 3842
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 3843
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 3847
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3848
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_27

    .line 3849
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 3851
    :cond_27
    return-void
.end method

.method private isValidLaunchStack(Lcom/android/server/am/ActivityStack;ILcom/android/server/am/ActivityRecord;)Z
    .registers 7
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "displayId"    # I
    .param p3, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2605
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v0

    packed-switch v0, :pswitch_data_58

    .line 2610
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_62

    .line 2618
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 2619
    invoke-virtual {p3, p2}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    return v0

    .line 2608
    :pswitch_19
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v0

    return v0

    .line 2607
    :pswitch_1e
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isActivityTypeRecents()Z

    move-result v0

    return v0

    .line 2606
    :pswitch_23
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    return v0

    .line 2612
    :pswitch_28
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result v0

    return v0

    .line 2615
    :pswitch_2d
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    return v0

    .line 2614
    :pswitch_32
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    return v0

    .line 2613
    :pswitch_37
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v0

    return v0

    .line 2611
    :pswitch_3c
    const/4 v0, 0x1

    return v0

    .line 2621
    :cond_3e
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isValidLaunchStack: Unexpected stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_58
    .packed-switch 0x2
        :pswitch_23
        :pswitch_1e
        :pswitch_19
    .end packed-switch

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_37
        :pswitch_32
        :pswitch_2d
        :pswitch_28
    .end packed-switch
.end method

.method private isValidTopRunningActivity(Lcom/android/server/am/ActivityRecord;Z)Z
    .registers 5
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "considerKeyguardState"    # Z

    .line 1304
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 1305
    return v0

    .line 1308
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v1

    .line 1310
    .local v1, "keyguardLocked":Z
    if-nez v1, :cond_f

    .line 1311
    return v0

    .line 1314
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$moveTasksToFullscreenStackLocked$0(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;IZ)V
    .registers 4
    .param p1, "fromStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toDisplayId"    # I
    .param p3, "onTop"    # Z

    .line 2888
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackInSurfaceTransaction(Lcom/android/server/am/ActivityStack;IZ)V

    return-void
.end method

.method public static synthetic lambda$removeStack$1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;)V
    .registers 2
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 3086
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeStackInSurfaceTransaction(Lcom/android/server/am/ActivityStack;)V

    return-void
.end method

.method private logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .line 1695
    const/4 v0, 0x0

    .line 1696
    .local v0, "extrasSize":I
    if-eqz p1, :cond_d

    .line 1697
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1698
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_d

    .line 1699
    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result v0

    .line 1702
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_d
    if-nez p2, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {p2}, Landroid/os/Bundle;->getSize()I

    move-result v1

    .line 1703
    .local v1, "icicleSize":I
    :goto_15
    add-int v2, v0, v1

    const v3, 0x30d40

    if-le v2, v3, :cond_42

    .line 1704
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transaction too large, intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", extras size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", icicle size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_42
    return-void
.end method

.method private moveTasksToFullscreenStackInSurfaceTransaction(Lcom/android/server/am/ActivityStack;IZ)V
    .registers 33
    .param p1, "fromStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toDisplayId"    # I
    .param p3, "onTop"    # Z

    move-object/from16 v9, p0

    .line 2812
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2814
    const/4 v10, 0x1

    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 2815
    .local v0, "windowingMode":I
    const/4 v1, 0x2

    const/4 v11, 0x0

    if-ne v0, v1, :cond_12

    move v1, v10

    goto :goto_13

    :cond_12
    move v1, v11

    :goto_13
    move/from16 v20, v1

    .line 2816
    .local v20, "inPinnedWindowingMode":Z
    move/from16 v15, p2

    invoke-virtual {v9, v15}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    move-object v14, v1

    .line 2818
    .local v14, "toDisplay":Lcom/android/server/am/ActivityDisplay;
    const/4 v1, 0x3

    if-ne v0, v1, :cond_46

    .line 2820
    invoke-virtual {v14}, Lcom/android/server/am/ActivityDisplay;->onExitingSplitScreenMode()V

    .line 2824
    invoke-virtual {v14}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v10

    .line 2824
    .local v1, "i":I
    :goto_27
    move v12, v1

    .line 2824
    .end local v1    # "i":I
    .local v12, "i":I
    if-ltz v12, :cond_44

    .line 2825
    invoke-virtual {v14, v12}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    move-object v13, v1

    .line 2826
    .local v13, "otherStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-nez v1, :cond_36

    .line 2827
    goto :goto_41

    .line 2829
    :cond_36
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, v13

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 2824
    .end local v13    # "otherStack":Lcom/android/server/am/ActivityStack;
    :goto_41
    add-int/lit8 v1, v12, -0x1

    .line 2824
    .end local v12    # "i":I
    .restart local v1    # "i":I
    goto :goto_27

    .line 2837
    .end local v1    # "i":I
    :cond_44
    iput-boolean v11, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 2842
    :cond_46
    move/from16 v18, v20

    .line 2843
    .local v18, "schedulePictureInPictureModeChange":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 2845
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_bf

    .line 2846
    iget-object v2, v9, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v10}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 2847
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v8, v2

    .line 2848
    .local v8, "size":I
    move v2, v11

    .line 2848
    .local v2, "i":I
    :goto_5d
    move v12, v2

    .line 2848
    .end local v2    # "i":I
    .restart local v12    # "i":I
    if-ge v12, v8, :cond_bf

    .line 2849
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    move-object v13, v2

    .line 2850
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    const/4 v3, 0x0

    iget-object v4, v9, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 2851
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v6

    .line 2850
    move-object v2, v14

    move-object v5, v13

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    move-object v3, v13

    move-object v13, v2

    .line 2853
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    .local v13, "toStack":Lcom/android/server/am/ActivityStack;
    if-eqz p3, :cond_a2

    .line 2854
    add-int/lit8 v4, v8, -0x1

    if-ne v12, v4, :cond_81

    move/from16 v16, v10

    goto :goto_83

    :cond_81
    move/from16 v16, v11

    .line 2856
    .local v16, "isTopTask":Z
    :goto_83
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v17, 0x1

    const-string/jumbo v19, "moveTasksToFullscreenStack - onTop"

    move v6, v12

    move-object v12, v3

    .line 2856
    .end local v12    # "i":I
    .local v6, "i":I
    move-object v7, v14

    move v14, v4

    .line 2856
    .end local v14    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .local v7, "toDisplay":Lcom/android/server/am/ActivityDisplay;
    move v15, v5

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 2860
    iget-object v4, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget v5, v3, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    iget-object v12, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 2861
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    .line 2860
    invoke-static {v4, v5, v12}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureFullScreen(Landroid/content/Context;ILjava/lang/String;)V

    .line 2862
    .end local v16    # "isTopTask":Z
    goto :goto_b8

    .line 2866
    .end local v6    # "i":I
    .end local v7    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .restart local v12    # "i":I
    .restart local v14    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    :cond_a2
    move v6, v12

    move-object v7, v14

    .line 2866
    .end local v12    # "i":I
    .end local v14    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .restart local v6    # "i":I
    .restart local v7    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    const/16 v23, 0x1

    const/16 v24, 0x2

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string/jumbo v28, "moveTasksToFullscreenStack - NOT_onTop"

    move-object/from16 v21, v3

    move-object/from16 v22, v13

    move/from16 v27, v18

    invoke-virtual/range {v21 .. v28}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 2848
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v13    # "toStack":Lcom/android/server/am/ActivityStack;
    :goto_b8
    add-int/lit8 v3, v6, 0x1

    .line 2848
    .end local v6    # "i":I
    .local v3, "i":I
    move/from16 v15, p2

    move v2, v3

    move-object v14, v7

    goto :goto_5d

    .line 2874
    .end local v3    # "i":I
    .end local v7    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .end local v8    # "size":I
    .restart local v14    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    :cond_bf
    move-object v7, v14

    .line 2874
    .end local v14    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .restart local v7    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    const/4 v3, 0x0

    invoke-virtual {v9, v3, v11, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2875
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_c7
    .catchall {:try_start_8 .. :try_end_c7} :catchall_d0

    .line 2877
    .end local v0    # "windowingMode":I
    .end local v1    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v7    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .end local v18    # "schedulePictureInPictureModeChange":Z
    .end local v20    # "inPinnedWindowingMode":Z
    iput-boolean v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 2878
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2879
    nop

    .line 2880
    return-void

    .line 2877
    :catchall_d0
    move-exception v0

    iput-boolean v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 2878
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method static nextTaskIdForUser(II)I
    .registers 5
    .param p0, "taskId"    # I
    .param p1, "userId"    # I

    .line 937
    add-int/lit8 v0, p0, 0x1

    .line 938
    .local v0, "nextTaskId":I
    add-int/lit8 v1, p1, 0x1

    const v2, 0x186a0

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_b

    .line 940
    sub-int/2addr v0, v2

    .line 942
    :cond_b
    return v0
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z
    .param p4, "prefix"    # Ljava/lang/String;

    .line 4237
    if-eqz p1, :cond_19

    .line 4238
    if-eqz p2, :cond_c

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4239
    :cond_c
    if-eqz p3, :cond_11

    .line 4240
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 4242
    :cond_11
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4243
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4244
    const/4 v0, 0x1

    return v0

    .line 4247
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private putStacksToSleepLocked(ZZ)Z
    .registers 9
    .param p1, "allowDelay"    # Z
    .param p2, "shuttingDown"    # Z

    .line 3794
    const/4 v0, 0x1

    .line 3795
    .local v0, "allSleep":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_30

    .line 3796
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 3797
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_2d

    .line 3798
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 3799
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p1, :cond_27

    .line 3800
    invoke-virtual {v4, p2}, Lcom/android/server/am/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v5

    and-int/2addr v0, v5

    goto :goto_2a

    .line 3802
    :cond_27
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 3797
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_2a
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 3795
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 3806
    .end local v1    # "displayNdx":I
    :cond_30
    return v0
.end method

.method private readyToResume()Z
    .registers 2

    .line 4828
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private releaseSleepTokens(Lcom/android/server/am/ActivityDisplay;)V
    .registers 5
    .param p1, "display"    # Lcom/android/server/am/ActivityDisplay;

    .line 4579
    iget-object v0, p1, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4580
    return-void

    .line 4582
    :cond_9
    iget-object v0, p1, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal$SleepToken;

    .line 4583
    .local v1, "token":Landroid/app/ActivityManagerInternal$SleepToken;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4584
    .end local v1    # "token":Landroid/app/ActivityManagerInternal$SleepToken;
    goto :goto_f

    .line 4585
    :cond_21
    iget-object v0, p1, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4587
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 4588
    return-void
.end method

.method private removeSleepTokenLocked(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V
    .registers 7
    .param p1, "token"    # Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;

    .line 4557
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4559
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->mEnableNetOpts:Z

    if-eqz v0, :cond_1f

    .line 4560
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4561
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_1f

    .line 4562
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 4563
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1f

    .line 4564
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->networkOptsCheck(ILjava/lang/String;)V

    .line 4569
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->mDisplayId:I
    invoke-static {p1}, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->access$000(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    .line 4570
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_3f

    .line 4571
    iget-object v1, v0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4572
    iget-object v1, v0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 4573
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 4576
    :cond_3f
    return-void
.end method

.method private removeStackInSurfaceTransaction(Lcom/android/server/am/ActivityStack;)V
    .registers 7
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 3052
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 3053
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1f

    .line 3063
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PinnedActivityStack;

    .line 3064
    .local v1, "pinnedStack":Lcom/android/server/am/PinnedActivityStack;
    iput-boolean v2, v1, Lcom/android/server/am/PinnedActivityStack;->mForceHidden:Z

    .line 3065
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/am/PinnedActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3066
    iput-boolean v4, v1, Lcom/android/server/am/PinnedActivityStack;->mForceHidden:Z

    .line 3067
    invoke-virtual {p0, v3, v4, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    .line 3071
    invoke-virtual {p0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 3072
    .end local v1    # "pinnedStack":Lcom/android/server/am/PinnedActivityStack;
    goto :goto_37

    .line 3073
    :cond_1f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .line 3073
    .local v1, "i":I
    :goto_24
    if-ltz v1, :cond_37

    .line 3074
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v4, "remove-stack"

    invoke-virtual {p0, v3, v2, v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 3073
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 3078
    .end local v1    # "i":I
    :cond_37
    :goto_37
    return-void
.end method

.method private resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .registers 29
    .param p1, "dockedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempDockedTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempDockedTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p4, "tempOtherTaskBounds"    # Landroid/graphics/Rect;
    .param p5, "tempOtherTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p6, "preserveWindows"    # Z
    .param p7, "deferResume"    # Z

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 2925
    iget-boolean v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    if-nez v0, :cond_9

    .line 2927
    return-void

    .line 2930
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 2931
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v11, :cond_1c

    .line 2932
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "resizeDockedStackLocked: docked stack not found"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    return-void

    .line 2936
    :cond_1c
    iget-boolean v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mDockedStackResizing:Z

    const/4 v12, 0x1

    if-eqz v0, :cond_41

    .line 2937
    iput-boolean v12, v9, Lcom/android/server/am/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    .line 2938
    invoke-static/range {p1 .. p1}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    .line 2939
    invoke-static/range {p2 .. p2}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    .line 2940
    invoke-static/range {p3 .. p3}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    .line 2941
    invoke-static/range {p4 .. p4}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    .line 2942
    invoke-static/range {p5 .. p5}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    .line 2945
    :cond_41
    const-string v0, "am.resizeDockedStack"

    const-wide/16 v13, 0x40

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2946
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2949
    const/4 v0, 0x0

    :try_start_4e
    iput-boolean v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 2950
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_10a

    .line 2951
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v15, p2

    move-object/from16 v8, p3

    :try_start_58
    invoke-virtual {v11, v10, v15, v8}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2955
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eq v1, v12, :cond_ec

    if-nez v10, :cond_6b

    .line 2956
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v1

    if-nez v1, :cond_6b

    goto/16 :goto_ec

    .line 2969
    :cond_6b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    move-object v7, v1

    .line 2970
    .local v7, "display":Lcom/android/server/am/ActivityDisplay;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v1

    .line 2971
    .local v6, "otherTaskRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v12

    .line 2971
    .local v1, "i":I
    :goto_7b
    move v5, v1

    .line 2971
    .end local v1    # "i":I
    .local v5, "i":I
    if-ltz v5, :cond_f0

    .line 2972
    invoke-virtual {v7, v5}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    move-object v4, v1

    .line 2973
    .local v4, "current":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_92

    .line 2974
    nop

    .line 2971
    .end local v4    # "current":Lcom/android/server/am/ActivityStack;
    .end local v5    # "i":I
    .end local v6    # "otherTaskRect":Landroid/graphics/Rect;
    .end local v7    # "display":Lcom/android/server/am/ActivityDisplay;
    .local v17, "i":I
    .local v19, "otherTaskRect":Landroid/graphics/Rect;
    .local v20, "display":Lcom/android/server/am/ActivityDisplay;
    :goto_8b
    move/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto :goto_e3

    .line 2976
    .end local v17    # "i":I
    .end local v19    # "otherTaskRect":Landroid/graphics/Rect;
    .end local v20    # "display":Lcom/android/server/am/ActivityDisplay;
    .restart local v4    # "current":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "i":I
    .restart local v6    # "otherTaskRect":Landroid/graphics/Rect;
    .restart local v7    # "display":Lcom/android/server/am/ActivityDisplay;
    :cond_92
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v1

    if-nez v1, :cond_99

    .line 2977
    goto :goto_8b

    .line 2979
    :cond_99
    iget-boolean v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-eqz v1, :cond_a4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isTopActivityVisible()Z

    move-result v1

    if-nez v1, :cond_a4

    .line 2982
    goto :goto_8b

    .line 2985
    :cond_a4
    const/4 v1, 0x4

    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 2986
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    move-object/from16 v3, p4

    invoke-virtual {v4, v3, v1, v6, v12}, Lcom/android/server/am/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 2991
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ba

    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    goto :goto_bb

    :cond_ba
    const/4 v1, 0x0

    .line 2992
    :goto_bb
    move-object/from16 v16, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c6

    move-object/from16 v17, v6

    goto :goto_c8

    :cond_c6
    move-object/from16 v17, v3

    :goto_c8
    const/16 v18, 0x1

    .line 2991
    move-object v1, v9

    move-object v2, v4

    move-object/from16 v3, v16

    move-object/from16 v16, v4

    move-object/from16 v4, v17

    .line 2991
    .end local v4    # "current":Lcom/android/server/am/ActivityStack;
    .local v16, "current":Lcom/android/server/am/ActivityStack;
    move/from16 v17, v5

    move-object/from16 v5, p5

    .line 2991
    .end local v5    # "i":I
    .restart local v17    # "i":I
    move-object/from16 v19, v6

    move/from16 v6, p6

    .line 2991
    .end local v6    # "otherTaskRect":Landroid/graphics/Rect;
    .restart local v19    # "otherTaskRect":Landroid/graphics/Rect;
    move-object/from16 v20, v7

    move/from16 v7, v18

    .line 2991
    .end local v7    # "display":Lcom/android/server/am/ActivityDisplay;
    .restart local v20    # "display":Lcom/android/server/am/ActivityDisplay;
    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 2971
    .end local v16    # "current":Lcom/android/server/am/ActivityStack;
    :goto_e3
    add-int/lit8 v1, v17, -0x1

    .line 2971
    .end local v17    # "i":I
    .restart local v1    # "i":I
    move-object/from16 v8, p3

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_7b

    .line 2960
    .end local v1    # "i":I
    .end local v19    # "otherTaskRect":Landroid/graphics/Rect;
    .end local v20    # "display":Lcom/android/server/am/ActivityDisplay;
    :cond_ec
    :goto_ec
    invoke-virtual {v9, v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V
    :try_end_ef
    .catchall {:try_start_58 .. :try_end_ef} :catchall_108

    .line 2963
    const/4 v0, 0x0

    .line 2997
    :cond_f0
    if-nez p7, :cond_fa

    .line 2998
    move/from16 v2, p6

    :try_start_f4
    invoke-virtual {v11, v0, v2}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_f8

    .line 2998
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_fc

    .line 3001
    :catchall_f8
    move-exception v0

    goto :goto_10f

    :cond_fa
    move/from16 v2, p6

    :goto_fc
    iput-boolean v12, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 3002
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3003
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 3004
    nop

    .line 3005
    return-void

    .line 3001
    :catchall_108
    move-exception v0

    goto :goto_10d

    :catchall_10a
    move-exception v0

    move-object/from16 v15, p2

    :goto_10d
    move/from16 v2, p6

    :goto_10f
    iput-boolean v12, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 3002
    iget-object v3, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3003
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private taskTopActivityIsUser(Lcom/android/server/am/TaskRecord;I)Z
    .registers 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "userId"    # I

    .line 890
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 891
    .local v0, "activityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 893
    .local v1, "resultTo":Lcom/android/server/am/ActivityRecord;
    :goto_a
    if-eqz v0, :cond_10

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v2, p2, :cond_16

    :cond_10
    if-eqz v1, :cond_18

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v2, p2, :cond_18

    :cond_16
    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    return v2
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 3483
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_b

    .line 3484
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 3486
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1081

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_57

    .line 3487
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 3488
    sput-boolean v2, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 3489
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v0, v1, v4, v3, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 3491
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 3492
    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3491
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 3495
    invoke-static {}, Lcom/android/server/am/OnePlusRamBoostManager;->getInstance()Lcom/android/server/am/OnePlusRamBoostManager;

    move-result-object v0

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 3496
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3495
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/OnePlusRamBoostManager;->notifyIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)V

    .line 3499
    :cond_57
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_a0

    .line 3502
    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->getInstance()Lcom/android/server/am/OnePlusPerfManager;

    move-result-object v0

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusPerfManager;->getPkgPerfLock(Ljava/lang/String;)I

    move-result v0

    .line 3503
    .local v0, "timeout":I
    if-lez v0, :cond_8e

    .line 3504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "perfLock : boost "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 3505
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v0, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    goto :goto_95

    .line 3507
    :cond_8e
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1, v5, v3, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 3509
    :goto_95
    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->getInstance()Lcom/android/server/am/OnePlusPerfManager;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/am/OnePlusPerfManager;->acuqirePerfForStartSpeed(Ljava/lang/String;)Z

    .line 3511
    sput-boolean v2, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 3513
    .end local v0    # "timeout":I
    :cond_a0
    return-void
.end method

.method acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;I)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "milliseconds"    # I

    .line 3519
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_b

    .line 3520
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 3522
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_57

    .line 3523
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x1081

    invoke-virtual {v0, v3, v1, p2, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 3524
    sput-boolean v2, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 3525
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, p2, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 3527
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 3528
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3527
    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 3531
    invoke-static {}, Lcom/android/server/am/OnePlusRamBoostManager;->getInstance()Lcom/android/server/am/OnePlusRamBoostManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 3532
    invoke-virtual {v6, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3531
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager;->notifyIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)V

    .line 3550
    :cond_57
    return-void
.end method

.method acquireLaunchWakelock()V
    .registers 5

    .line 2008
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2009
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2011
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2013
    :cond_16
    return-void
.end method

.method acquireUxPerfLock(ILjava/lang/String;)V
    .registers 5
    .param p1, "opcode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3554
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    .line 3555
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_11

    .line 3556
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 3558
    :cond_11
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .registers 24
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromTimeout"    # Z
    .param p3, "processPausingActivities"    # Z
    .param p4, "config"    # Landroid/content/res/Configuration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    move-object/from16 v7, p0

    .line 2038
    move-object/from16 v8, p4

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v0, :cond_21

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity idle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 2040
    :cond_21
    move-object/from16 v9, p1

    :goto_23
    const/4 v10, 0x0

    .line 2041
    .local v10, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v11, 0x0

    .line 2042
    .local v11, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    const/4 v12, 0x0

    .line 2043
    .local v12, "NS":I
    const/4 v13, 0x0

    .line 2044
    .local v13, "NF":I
    const/4 v14, 0x0

    .line 2045
    .local v14, "booting":Z
    const/4 v15, 0x0

    .line 2047
    .local v15, "activityRemoved":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2048
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v6, 0x1

    if-eqz v5, :cond_89

    .line 2049
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_4f

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityIdleInternalLocked: Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    .line 2050
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2049
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    :cond_4f
    iget-object v0, v7, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2052
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 2053
    if-eqz p2, :cond_6d

    .line 2054
    const-wide/16 v3, -0x1

    const-wide/16 v16, -0x1

    move-object v0, v7

    move/from16 v1, p2

    move-object v2, v5

    move-object v9, v5

    move-object/from16 v18, v10

    move v10, v6

    move-wide/from16 v5, v16

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    .local v18, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    goto :goto_71

    .line 2062
    .end local v9    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_6d
    move-object v9, v5

    move-object/from16 v18, v10

    move v10, v6

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v9    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v18    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :goto_71
    if-eqz v8, :cond_76

    .line 2063
    invoke-virtual {v9, v8}, Lcom/android/server/am/ActivityRecord;->setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 2068
    :cond_76
    iput-boolean v10, v9, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 2071
    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-nez v0, :cond_84

    if-eqz p2, :cond_8d

    .line 2072
    :cond_84
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    move-result v14

    goto :goto_8d

    .line 2076
    .end local v9    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_89
    move-object v9, v5

    move-object/from16 v18, v10

    move v10, v6

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v9    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v18    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_8d
    :goto_8d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b3

    .line 2077
    if-eqz v9, :cond_9b

    .line 2078
    iget-object v0, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 2081
    :cond_9b
    iget-object v0, v7, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 2082
    iget-object v0, v7, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x68

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2087
    iget-object v0, v7, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2089
    :cond_af
    const/4 v0, 0x0

    invoke-virtual {v7, v0, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2093
    :cond_b3
    move/from16 v0, p3

    invoke-virtual {v7, v9, v10, v0}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Lcom/android/server/am/ActivityRecord;ZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 2095
    .local v2, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    if-eqz v2, :cond_c0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_c1

    :cond_c0
    move v3, v1

    .line 2096
    .end local v12    # "NS":I
    .local v3, "NS":I
    :goto_c1
    iget-object v4, v7, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v4

    .end local v13    # "NF":I
    .local v5, "NF":I
    if-lez v4, :cond_d7

    .line 2097
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, v7, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2098
    .end local v18    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v4, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v6, v7, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_d9

    .line 2101
    .end local v4    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v18    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_d7
    move-object/from16 v4, v18

    .end local v18    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v4    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :goto_d9
    iget-object v6, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_ee

    .line 2102
    new-instance v6, Ljava/util/ArrayList;

    iget-object v12, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v6

    .line 2103
    iget-object v6, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2108
    :cond_ee
    move v6, v1

    .local v6, "i":I
    :goto_ef
    if-ge v6, v3, :cond_10e

    .line 2109
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v9, v12

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 2110
    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 2111
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v12, :cond_10b

    .line 2112
    iget-boolean v13, v9, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v13, :cond_108

    .line 2113
    const-string v13, "activityIdleInternalLocked"

    invoke-virtual {v12, v9, v1, v1, v13}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    goto :goto_10b

    .line 2116
    :cond_108
    invoke-virtual {v12, v9}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2108
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_10b
    :goto_10b
    add-int/lit8 v6, v6, 0x1

    goto :goto_ef

    .line 2123
    .end local v6    # "i":I
    :cond_10e
    move v6, v1

    .restart local v6    # "i":I
    :goto_10f
    if-ge v6, v5, :cond_12a

    .line 2124
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v9, v12

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 2125
    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 2126
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v12, :cond_127

    .line 2127
    const-string v13, "finish-idle"

    invoke-virtual {v12, v9, v10, v13}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v13

    or-int v12, v15, v13

    .line 2123
    .end local v15    # "activityRemoved":Z
    .local v12, "activityRemoved":Z
    move v15, v12

    .end local v12    # "activityRemoved":Z
    .restart local v15    # "activityRemoved":Z
    :cond_127
    add-int/lit8 v6, v6, 0x1

    goto :goto_10f

    .line 2131
    .end local v6    # "i":I
    :cond_12a
    if-nez v14, :cond_145

    .line 2133
    if-eqz v11, :cond_145

    .line 2134
    nop

    .local v1, "i":I
    :goto_12f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_145

    .line 2135
    iget-object v6, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/UserState;

    invoke-virtual {v6, v10}, Lcom/android/server/am/UserController;->finishUserSwitch(Lcom/android/server/am/UserState;)V

    .line 2134
    add-int/lit8 v1, v1, 0x1

    goto :goto_12f

    .line 2140
    .end local v1    # "i":I
    :cond_145
    iget-object v1, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 2144
    if-eqz v15, :cond_14f

    .line 2145
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2148
    :cond_14f
    return-object v9
.end method

.method activityRelaunchedLocked(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4720
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchingFinished(Landroid/os/IBinder;)V

    .line 4721
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4722
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_19

    .line 4723
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4724
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/am/ActivityRecord;->setSleeping(ZZ)V

    .line 4727
    :cond_19
    return-void
.end method

.method activityRelaunchingLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4730
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunching(Landroid/os/IBinder;)V

    .line 4731
    return-void
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 3759
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3760
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3761
    .local v0, "s":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_f

    .line 3762
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    goto :goto_13

    .line 3764
    :cond_f
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 3766
    :goto_13
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .registers 6
    .param p1, "taskSwitch"    # Z

    .line 3889
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 3890
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3891
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 3892
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3893
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->addStartingWindowsForVisibleActivities(Z)V

    .line 3891
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 3889
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3896
    .end local v0    # "displayNdx":I
    :cond_27
    return-void
.end method

.method allPausedActivitiesComplete()Z
    .registers 10

    .line 1115
    const/4 v0, 0x1

    .line 1116
    .local v0, "pausing":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_5f

    .line 1117
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1118
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_5c

    .line 1119
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1120
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v5, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1121
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_59

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v6

    if-nez v6, :cond_59

    .line 1122
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v6, :cond_57

    .line 1123
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allPausedActivitiesComplete: r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1123
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    const/4 v0, 0x0

    goto :goto_59

    .line 1127
    :cond_57
    const/4 v6, 0x0

    return v6

    .line 1118
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_59
    :goto_59
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1116
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_5c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1132
    .end local v1    # "displayNdx":I
    :cond_5f
    return v0
.end method

.method allResumedActivitiesComplete()Z
    .registers 8

    .line 1041
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_39

    .line 1042
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1043
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "stackNdx":I
    :goto_17
    if-ltz v3, :cond_36

    .line 1044
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1045
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1046
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1047
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_33

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 1048
    const/4 v1, 0x0

    return v1

    .line 1043
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_33
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 1041
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1054
    .end local v0    # "displayNdx":I
    :cond_39
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_5f

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allResumedActivitiesComplete: mLastFocusedStack changing from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_5f
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1058
    return v1
.end method

.method allResumedActivitiesIdle()Z
    .registers 9

    .line 1020
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_65

    .line 1021
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1022
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "stackNdx":I
    :goto_17
    if-ltz v3, :cond_62

    .line 1023
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1024
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v5

    if-nez v5, :cond_2a

    .line 1025
    goto :goto_5f

    .line 1027
    :cond_2a
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1028
    .local v5, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_34

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v6, :cond_5f

    .line 1029
    :cond_34
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_5d

    const-string v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allResumedActivitiesIdle: stack="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " not idle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_5d
    const/4 v1, 0x0

    return v1

    .line 1022
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_5f
    :goto_5f
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 1020
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_62
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1036
    .end local v0    # "displayNdx":I
    :cond_65
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchEndIfNeeded()V

    .line 1037
    return v1
.end method

.method anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .registers 3
    .param p1, "id"    # I

    .line 784
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;
    .registers 5
    .param p1, "id"    # I
    .param p2, "matchMode"    # I

    .line 788
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;
    .registers 25
    .param p1, "id"    # I
    .param p2, "matchMode"    # I
    .param p3, "aOptions"    # Landroid/app/ActivityOptions;
    .param p4, "onTop"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 801
    move/from16 v11, p4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_18

    if-nez v3, :cond_10

    goto :goto_18

    .line 802
    :cond_10
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Should not specify activity options for non-restore lookup"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 806
    :cond_18
    :goto_18
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 807
    .local v12, "numDisplays":I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "displayNdx":I
    :goto_20
    move v13, v6

    .end local v6    # "displayNdx":I
    .local v13, "displayNdx":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge v13, v12, :cond_74

    .line 808
    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Lcom/android/server/am/ActivityDisplay;

    .line 809
    .local v14, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v14}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v6

    .local v8, "stackNdx":I
    :goto_33
    move v15, v8

    .end local v8    # "stackNdx":I
    .local v15, "stackNdx":I
    if-ltz v15, :cond_71

    .line 810
    invoke-virtual {v14, v15}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    .line 811
    .local v10, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v10, v1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v9

    .line 812
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    if-nez v9, :cond_44

    .line 813
    nop

    .line 809
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v8, v15, -0x1

    .end local v15    # "stackNdx":I
    .restart local v8    # "stackNdx":I
    goto :goto_33

    .line 815
    .end local v8    # "stackNdx":I
    .restart local v9    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "stackNdx":I
    :cond_44
    if-eqz v3, :cond_6c

    .line 818
    invoke-virtual {v0, v7, v3, v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 819
    .local v8, "launchStack":Lcom/android/server/am/ActivityStack;
    if-eqz v8, :cond_6c

    if-eq v10, v8, :cond_6c

    .line 820
    if-eqz v11, :cond_52

    .line 821
    move v7, v5

    goto :goto_53

    :cond_52
    move v7, v4

    .line 822
    .local v7, "reparentMode":I
    :goto_53
    const/16 v16, 0x1

    const/16 v17, 0x1

    const-string v18, "anyTaskForIdLocked"

    move-object v4, v9

    move-object v5, v8

    move v6, v11

    move-object/from16 v19, v8

    move/from16 v8, v16

    .end local v8    # "launchStack":Lcom/android/server/am/ActivityStack;
    .local v19, "launchStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v16, v9

    move/from16 v9, v17

    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .local v16, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v17, v10

    move-object/from16 v10, v18

    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .local v17, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .end local v7    # "reparentMode":I
    .end local v19    # "launchStack":Lcom/android/server/am/ActivityStack;
    goto :goto_70

    .line 826
    .end local v16    # "task":Lcom/android/server/am/TaskRecord;
    .end local v17    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v9    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6c
    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v16    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v17    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_70
    return-object v16

    .line 807
    .end local v14    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v15    # "stackNdx":I
    .end local v16    # "task":Lcom/android/server/am/TaskRecord;
    .end local v17    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_71
    add-int/lit8 v6, v13, 0x1

    .end local v13    # "displayNdx":I
    .restart local v6    # "displayNdx":I
    goto :goto_20

    .line 831
    .end local v6    # "displayNdx":I
    :cond_74
    if-nez v2, :cond_77

    .line 832
    return-object v7

    .line 837
    :cond_77
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v4, :cond_96

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Looking for task id="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " in recents"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_96
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v4, v1}, Lcom/android/server/am/RecentTasks;->getTask(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 840
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    if-nez v4, :cond_be

    .line 841
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_bd

    .line 842
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tDidn\'t find task id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " in recents"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_bd
    return-object v7

    .line 848
    :cond_be
    if-ne v2, v6, :cond_c1

    .line 849
    return-object v4

    .line 853
    :cond_c1
    invoke-virtual {v0, v4, v3, v11}, Lcom/android/server/am/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v5

    if-nez v5, :cond_e7

    .line 854
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_e6

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t restore task id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " found in recents"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_e6
    return-object v7

    .line 858
    :cond_e7
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_106

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restored task id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " from in recents"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_106
    return-object v4
.end method

.method applySleepTokensLocked(Z)V
    .registers 9
    .param p1, "applyToStacks"    # Z

    .line 3714
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_7d

    .line 3716
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3717
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->shouldSleep()Z

    move-result v2

    .line 3718
    .local v2, "displayShouldSleep":Z
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->isSleeping()Z

    move-result v3

    if-ne v2, v3, :cond_1d

    .line 3719
    goto :goto_7a

    .line 3721
    :cond_1d
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->setIsSleeping(Z)V

    .line 3723
    if-nez p1, :cond_23

    .line 3724
    goto :goto_7a

    .line 3728
    :cond_23
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_29
    if-ltz v3, :cond_51

    .line 3729
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 3730
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_36

    .line 3731
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->goToSleepIfPossible(Z)Z

    goto :goto_4e

    .line 3733
    :cond_36
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    .line 3734
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v5

    iget v6, v1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 3740
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 3728
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4e
    :goto_4e
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    .line 3745
    .end local v3    # "stackNdx":I
    :cond_51
    if-nez v2, :cond_7a

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 3746
    goto :goto_7a

    .line 3749
    :cond_5c
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ActivityRecord;>;"
    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 3750
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3751
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    iget v6, v1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    if-ne v5, v6, :cond_79

    .line 3752
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 3754
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_79
    goto :goto_62

    .line 3714
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "displayShouldSleep":Z
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ActivityRecord;>;"
    :cond_7a
    :goto_7a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3756
    .end local v0    # "displayNdx":I
    :cond_7d
    return-void
.end method

.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 983
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 984
    .local v0, "processName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 985
    .local v1, "didSomething":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "displayNdx":I
    :goto_b
    const/4 v4, 0x0

    if-ltz v2, :cond_93

    .line 986
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityDisplay;

    .line 987
    .local v5, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v3

    .local v6, "stackNdx":I
    :goto_1b
    if-ltz v6, :cond_8f

    .line 988
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 989
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-nez v8, :cond_28

    .line 990
    goto :goto_8c

    .line 992
    :cond_28
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStack;->getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V

    .line 993
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 994
    .local v8, "top":Lcom/android/server/am/ActivityRecord;
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 995
    .local v9, "size":I
    move v10, v1

    move v1, v4

    .local v1, "i":I
    .local v10, "didSomething":Z
    :goto_39
    if-ge v1, v9, :cond_8b

    .line 996
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .line 997
    .local v11, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v12, :cond_88

    iget v12, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v13, v11, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v12, v13, :cond_88

    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 998
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_88

    .line 1000
    if-ne v8, v11, :cond_5d

    move v12, v3

    goto :goto_5e

    :cond_5d
    move v12, v4

    :goto_5e
    :try_start_5e
    invoke-virtual {p0, v11, p1, v12, v3}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result v12
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_62} :catch_66

    if-eqz v12, :cond_65

    .line 1002
    const/4 v10, 0x1

    .line 1008
    :cond_65
    goto :goto_88

    .line 1004
    :catch_66
    move-exception v3

    .line 1005
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in new application when starting activity "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1006
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1005
    const-string v12, "ActivityManager"

    invoke-static {v12, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1007
    throw v3

    .line 995
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v11    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_88
    :goto_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 987
    .end local v1    # "i":I
    .end local v7    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "size":I
    :cond_8b
    move v1, v10

    .end local v10    # "didSomething":Z
    .local v1, "didSomething":Z
    :goto_8c
    add-int/lit8 v6, v6, -0x1

    goto :goto_1b

    .line 985
    .end local v5    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v6    # "stackNdx":I
    :cond_8f
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_b

    .line 1013
    .end local v2    # "displayNdx":I
    :cond_93
    if-nez v1, :cond_99

    .line 1014
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1016
    :cond_99
    return v1
.end method

.method attachDisplay(Lcom/android/server/am/ActivityDisplay;)V
    .registers 4
    .param p1, "display"    # Lcom/android/server/am/ActivityDisplay;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4492
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4493
    return-void
.end method

.method canPlaceEntityOnDisplay(IZIILandroid/content/pm/ActivityInfo;)Z
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "resizeable"    # Z
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 499
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 501
    return v0

    .line 503
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 505
    return v2

    .line 507
    :cond_c
    if-nez p2, :cond_15

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->displayConfigMatchesGlobal(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 509
    return v2

    .line 511
    :cond_15
    invoke-virtual {p0, p3, p4, p1, p5}, Lcom/android/server/am/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 515
    return v2

    .line 517
    :cond_1c
    return v0
.end method

.method canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z
    .registers 5
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 2399
    const/4 v0, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_20

    .line 2402
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_17

    .line 2403
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1d

    :cond_17
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v1, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    nop

    .line 2402
    :cond_1f
    return v0

    .line 2400
    :cond_20
    :goto_20
    return v0
.end method

.method cancelInitializingActivities()V
    .registers 5

    .line 1136
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 1137
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 1138
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 1139
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 1140
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->cancelInitializingActivities()V

    .line 1138
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1136
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1143
    .end local v0    # "displayNdx":I
    :cond_27
    return-void
.end method

.method checkReadyForSleepLocked(Z)V
    .registers 3
    .param p1, "allowDelay"    # Z

    .line 3769
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3771
    return-void

    .line 3774
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->putStacksToSleepLocked(ZZ)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3775
    return-void

    .line 3779
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchEndIfNeeded()V

    .line 3781
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 3783
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3784
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3786
    :cond_24
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_2f

    .line 3787
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3789
    :cond_2f
    return-void
.end method

.method checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Z
    .registers 35
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "callingPid"    # I
    .param p6, "callingUid"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "ignoreTargetSecurity"    # Z
    .param p9, "launchingInTask"    # Z
    .param p10, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p11, "resultRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p12, "resultStack"    # Lcom/android/server/am/ActivityStack;

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p10

    .line 1773
    iget-object v0, v6, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_22

    iget-object v0, v6, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1774
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/am/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v12

    goto :goto_23

    :cond_22
    move v0, v11

    :goto_23
    move v13, v0

    .line 1775
    .local v13, "isCallerRecents":Z
    iget-object v0, v6, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.START_ANY_ACTIVITY"

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v14

    .line 1777
    .local v14, "startAnyPerm":I
    if-eqz v14, :cond_1b9

    if-eqz v13, :cond_34

    if-eqz p9, :cond_34

    goto/16 :goto_1b9

    .line 1783
    :cond_34
    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p7

    move v3, v8

    move v4, v9

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v0

    .line 1785
    .local v0, "componentRestriction":I
    nop

    .line 1786
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1785
    invoke-direct {v6, v1, v2, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 1787
    .local v1, "actionRestriction":I
    if-eq v0, v12, :cond_e1

    if-ne v1, v12, :cond_4f

    goto/16 :goto_e1

    .line 1815
    :cond_4f
    const/4 v3, 0x2

    if-ne v1, v3, :cond_9d

    .line 1816
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Appop Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1820
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1819
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1821
    .local v3, "message":Ljava/lang/String;
    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    return v11

    .line 1823
    .end local v3    # "message":Ljava/lang/String;
    :cond_9d
    if-ne v0, v3, :cond_e0

    .line 1824
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Appop Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") requires appop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1827
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1828
    .restart local v3    # "message":Ljava/lang/String;
    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    return v11

    .line 1832
    .end local v3    # "message":Ljava/lang/String;
    :cond_e0
    return v12

    .line 1789
    :cond_e1
    :goto_e1
    if-eqz p11, :cond_f4

    .line 1790
    const/16 v16, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p12

    move-object/from16 v17, p11

    move-object/from16 v18, p3

    move/from16 v19, p4

    invoke-virtual/range {v15 .. v21}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1795
    :cond_f4
    if-eq v1, v12, :cond_16c

    .line 1800
    iget-boolean v4, v7, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v4, :cond_134

    .line 1801
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") not exported from uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1ad

    .line 1806
    :cond_134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1ad

    .line 1796
    :cond_16c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") with revoked permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1799
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1806
    .local v4, "msg":Ljava/lang/String;
    :goto_1ad
    nop

    .line 1811
    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1781
    .end local v0    # "componentRestriction":I
    .end local v1    # "actionRestriction":I
    .end local v4    # "msg":Ljava/lang/String;
    :cond_1b9
    :goto_1b9
    move-object/from16 v2, p7

    return v12
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;ZZ)V
    .registers 20
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3141
    if-eqz p3, :cond_b

    .line 3142
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, v1}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 3144
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 3145
    .local v2, "component":Landroid/content/ComponentName;
    if-nez v2, :cond_2c

    .line 3146
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No component for base intent of task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    return-void

    .line 3151
    :cond_2c
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    new-instance v4, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/am/ActiveServices;->cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/Intent;)V

    .line 3153
    if-nez p2, :cond_3f

    .line 3154
    return-void

    .line 3158
    :cond_3f
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3159
    .local v4, "pkg":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3160
    .local v5, "procsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    .line 3161
    .local v6, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;>;"
    const/4 v8, 0x0

    .line 3161
    .local v8, "i":I
    :goto_51
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_c8

    .line 3163
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 3164
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v10, 0x0

    .line 3164
    .local v10, "j":I
    :goto_5e
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_c4

    .line 3165
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 3166
    .local v11, "proc":Lcom/android/server/am/ProcessRecord;
    iget v12, v11, Lcom/android/server/am/ProcessRecord;->userId:I

    iget v13, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v12, v13, :cond_73

    .line 3168
    nop

    .line 3164
    .end local v11    # "proc":Lcom/android/server/am/ProcessRecord;
    :goto_71
    const/4 v14, 0x0

    goto :goto_c1

    .line 3170
    .restart local v11    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_73
    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne v11, v12, :cond_7a

    .line 3172
    goto :goto_71

    .line 3174
    :cond_7a
    iget-object v12, v11, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_83

    .line 3176
    goto :goto_71

    .line 3179
    :cond_83
    const/4 v12, 0x0

    .line 3179
    .local v12, "k":I
    :goto_84
    iget-object v13, v11, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_a6

    .line 3180
    iget-object v13, v11, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    .line 3181
    .local v13, "otherTask":Lcom/android/server/am/TaskRecord;
    iget v14, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v7, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v14, v7, :cond_a3

    iget-boolean v7, v13, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v7, :cond_a3

    .line 3184
    return-void

    .line 3179
    .end local v13    # "otherTask":Lcom/android/server/am/TaskRecord;
    :cond_a3
    add-int/lit8 v12, v12, 0x1

    goto :goto_84

    .line 3188
    .end local v12    # "k":I
    :cond_a6
    iget-boolean v7, v11, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-eqz v7, :cond_ab

    .line 3190
    return-void

    .line 3195
    :cond_ab
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v7

    iget-object v12, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v13, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v7, v12, v13, v14}, Lcom/android/server/am/OnePlusAppBootManager;->canKillProcessService(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_be

    .line 3196
    goto :goto_c1

    .line 3198
    :cond_be
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3164
    .end local v11    # "proc":Lcom/android/server/am/ProcessRecord;
    :goto_c1
    add-int/lit8 v10, v10, 0x1

    goto :goto_5e

    .line 3161
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v10    # "j":I
    :cond_c4
    const/4 v14, 0x0

    add-int/lit8 v8, v8, 0x1

    goto :goto_51

    .line 3203
    .end local v8    # "i":I
    :cond_c8
    const/4 v14, 0x0

    .line 3203
    .local v14, "i":I
    :goto_c9
    move v7, v14

    .line 3203
    .end local v14    # "i":I
    .local v7, "i":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_f8

    .line 3204
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 3205
    .local v8, "pr":Lcom/android/server/am/ProcessRecord;
    iget v9, v8, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-nez v9, :cond_f0

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    .line 3209
    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_f0

    iget v9, v8, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v10, -0x2710

    if-eq v9, v10, :cond_f0

    .line 3211
    const-string/jumbo v9, "remove task"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_f5

    .line 3214
    :cond_f0
    const-string/jumbo v9, "remove task"

    iput-object v9, v8, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 3203
    .end local v8    # "pr":Lcom/android/server/am/ProcessRecord;
    :goto_f5
    add-int/lit8 v14, v7, 0x1

    .line 3203
    .end local v7    # "i":I
    .restart local v14    # "i":I
    goto :goto_c9

    .line 3217
    .end local v14    # "i":I
    :cond_f8
    return-void
.end method

.method cleanupActivity(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1154
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1155
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1157
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_12
    if-ltz v0, :cond_2c

    .line 1158
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->matches(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1159
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1157
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 1162
    .end local v0    # "i":I
    :cond_2c
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .registers 6
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .line 3918
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 3919
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3920
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 3921
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3922
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 3920
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 3918
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3925
    .end local v0    # "displayNdx":I
    :cond_27
    return-void
.end method

.method closeSystemDialogsLocked()V
    .registers 5

    .line 2164
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 2165
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 2166
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 2167
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2168
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->closeSystemDialogsLocked()V

    .line 2166
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 2164
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2171
    .end local v0    # "displayNdx":I
    :cond_27
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .registers 2

    .line 3707
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 3708
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3709
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3711
    :cond_10
    return-void
.end method

.method continueUpdateBounds(I)V
    .registers 3
    .param p1, "activityType"    # I

    .line 2787
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2788
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_a

    .line 2789
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->continueUpdateBounds()V

    .line 2791
    :cond_a
    return-void
.end method

.method continueUpdateRecentsHomeStackBounds()V
    .registers 2

    .line 2782
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateBounds(I)V

    .line 2783
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateBounds(I)V

    .line 2784
    return-void
.end method

.method createRunningTasks()Lcom/android/server/am/RunningTasks;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 659
    new-instance v0, Lcom/android/server/am/RunningTasks;

    invoke-direct {v0}, Lcom/android/server/am/RunningTasks;-><init>()V

    return-object v0
.end method

.method createSleepTokenLocked(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 4545
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    .line 4546
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_1a

    .line 4550
    new-instance v1, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Ljava/lang/String;I)V

    .line 4551
    .local v1, "token":Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4552
    iget-object v2, v0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4553
    return-object v1

    .line 4547
    .end local v1    # "token":Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method deferUpdateBounds(I)V
    .registers 3
    .param p1, "activityType"    # I

    .line 2775
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2776
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_a

    .line 2777
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->deferUpdateBounds()V

    .line 2779
    :cond_a
    return-void
.end method

.method deferUpdateRecentsHomeStackBounds()V
    .registers 2

    .line 2770
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->deferUpdateBounds(I)V

    .line 2771
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->deferUpdateBounds(I)V

    .line 2772
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 4153
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFocusedStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4154
    const-string v0, " mLastFocusedStack="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4155
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurTaskIdForUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserStackInFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4158
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4158
    .local v0, "i":I
    :goto_60
    if-ltz v0, :cond_70

    .line 4159
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4160
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityDisplay;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4158
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    add-int/lit8 v0, v0, -0x1

    goto :goto_60

    .line 4162
    .end local v0    # "i":I
    :cond_70
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 4163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWaitingForActivityVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4164
    const/4 v0, 0x0

    .line 4164
    .restart local v0    # "i":I
    :goto_82
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9e

    .line 4165
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4164
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 4168
    .end local v0    # "i":I
    :cond_9e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isHomeRecentsComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4169
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4171
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/KeyguardController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4172
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/LockTaskController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4173
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .registers 29
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    .line 4252
    move-object/from16 v14, p5

    const/4 v1, 0x0

    .line 4253
    .local v1, "printed":Z
    const/4 v2, 0x0

    .line 4254
    .local v2, "needSep":Z
    const/4 v3, 0x0

    move v15, v1

    move/from16 v16, v2

    .end local v1    # "printed":Z
    .end local v2    # "needSep":Z
    .local v3, "displayNdx":I
    .local v15, "printed":Z
    .local v16, "needSep":Z
    :goto_c
    move v12, v3

    .end local v3    # "displayNdx":I
    .local v12, "displayNdx":I
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v12, v1, :cond_12f

    .line 4255
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/am/ActivityDisplay;

    .line 4256
    .local v11, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    const-string v1, "Display #"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v11, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 4257
    const-string v1, " (activities from top to bottom):"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4258
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/am/ActivityDisplay;

    .line 4259
    .local v10, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v10}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "stackNdx":I
    :goto_3c
    move v9, v1

    .end local v1    # "stackNdx":I
    .local v9, "stackNdx":I
    if-ltz v9, :cond_129

    .line 4260
    invoke-virtual {v10, v9}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 4261
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stack #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4263
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4264
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4262
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isSleeping="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4268
    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v14

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z

    move-result v1

    or-int/2addr v15, v1

    .line 4271
    iget-object v3, v8, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v4, "    "

    const-string v5, "Run"

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v19, "    Running activities (most recent first):"

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v21, v8

    move/from16 v8, v17

    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    .local v21, "stack":Lcom/android/server/am/ActivityStack;
    move/from16 v17, v9

    move-object v9, v14

    .end local v9    # "stackNdx":I
    .local v17, "stackNdx":I
    move-object/from16 v22, v10

    move/from16 v10, v18

    .end local v10    # "display":Lcom/android/server/am/ActivityDisplay;
    .local v22, "display":Lcom/android/server/am/ActivityDisplay;
    move-object/from16 v18, v11

    move-object/from16 v11, v19

    .end local v11    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    .local v18, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    move/from16 v19, v12

    move-object/from16 v12, v20

    .end local v12    # "displayNdx":I
    .local v19, "displayNdx":I
    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    or-int/2addr v1, v15

    .line 4275
    .end local v15    # "printed":Z
    .local v1, "printed":Z
    move v2, v1

    .line 4276
    .end local v16    # "needSep":Z
    .restart local v2    # "needSep":Z
    move-object/from16 v3, v21

    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .end local v21    # "stack":Lcom/android/server/am/ActivityStack;
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    const-string v5, "    mPausingActivity: "

    invoke-static {v13, v4, v14, v2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 4278
    .local v4, "pr":Z
    if-eqz v4, :cond_f7

    .line 4279
    const/4 v1, 0x1

    .line 4280
    const/4 v2, 0x0

    .line 4282
    :cond_f7
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    const-string v6, "    mResumedActivity: "

    invoke-static {v13, v5, v14, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 4284
    if-eqz v4, :cond_105

    .line 4285
    const/4 v1, 0x1

    .line 4286
    const/4 v2, 0x0

    .line 4288
    :cond_105
    if-eqz p3, :cond_11c

    .line 4289
    iget-object v5, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v6, "    mLastPausedActivity: "

    invoke-static {v13, v5, v14, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 4291
    if-eqz v4, :cond_113

    .line 4292
    const/4 v1, 0x1

    .line 4293
    const/4 v2, 0x1

    .line 4295
    :cond_113
    iget-object v5, v3, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    const-string v6, "    mLastNoHistoryActivity: "

    invoke-static {v13, v5, v14, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 4298
    .end local v1    # "printed":Z
    .restart local v15    # "printed":Z
    :cond_11c
    move v15, v1

    move/from16 v16, v15

    .line 4259
    .end local v2    # "needSep":Z
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "pr":Z
    .restart local v16    # "needSep":Z
    add-int/lit8 v1, v17, -0x1

    .end local v17    # "stackNdx":I
    .local v1, "stackNdx":I
    move-object/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v10, v22

    goto/16 :goto_3c

    .line 4254
    .end local v1    # "stackNdx":I
    .end local v18    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    .end local v19    # "displayNdx":I
    .end local v22    # "display":Lcom/android/server/am/ActivityDisplay;
    .restart local v12    # "displayNdx":I
    :cond_129
    move/from16 v19, v12

    .end local v12    # "displayNdx":I
    .restart local v19    # "displayNdx":I
    add-int/lit8 v3, v19, 0x1

    .end local v19    # "displayNdx":I
    .local v3, "displayNdx":I
    goto/16 :goto_c

    .line 4302
    .end local v3    # "displayNdx":I
    :cond_12f
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v4, "  "

    const-string v5, "Fin"

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v11, "  Activities waiting to finish:"

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v9, v14

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    or-int/2addr v15, v1

    .line 4304
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v4, "  "

    const-string v5, "Stop"

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v11, "  Activities waiting to stop:"

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v9, v14

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    or-int/2addr v15, v1

    .line 4306
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    const-string v4, "  "

    const-string v5, "Wait"

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v11, "  Activities waiting for another to become visible:"

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v9, v14

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    or-int/2addr v15, v1

    .line 4309
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v4, "  "

    const-string v5, "Sleep"

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v11, "  Activities waiting to sleep:"

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v9, v14

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    or-int/2addr v1, v15

    .line 4312
    .end local v15    # "printed":Z
    .local v1, "printed":Z
    return v1
.end method

.method dumpDisplayConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 4202
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Display override configurations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4203
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4204
    .local v0, "displayCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_35

    .line 4205
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 4206
    .local v2, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4207
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4204
    .end local v2    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 4209
    .end local v1    # "i":I
    :cond_35
    return-void
.end method

.method public dumpDisplays(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4144
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_38

    .line 4145
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4146
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " stacks:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4147
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->dumpStacks(Ljava/io/PrintWriter;)V

    .line 4148
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4144
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4150
    .end local v0    # "i":I
    :cond_38
    return-void
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .registers 5
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    .line 3863
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    .line 3865
    return-void
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V
    .registers 9
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 3872
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->beginActivityVisibilityUpdate()V

    .line 3875
    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_f
    if-ltz v0, :cond_2e

    .line 3876
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3877
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1f
    if-ltz v2, :cond_2b

    .line 3878
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3879
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_37

    .line 3877
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 3875
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 3884
    .end local v0    # "displayNdx":I
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    .line 3885
    nop

    .line 3886
    return-void

    .line 3884
    :catchall_37
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z
    .registers 10
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "displayId"    # I
    .param p3, "markFrozenIfConfigChanged"    # Z
    .param p4, "deferResume"    # Z

    .line 1670
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    .line 1673
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_a

    .line 1675
    return v1

    .line 1680
    :cond_a
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1681
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v3

    .line 1682
    if-eqz p1, :cond_1d

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1683
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    nop

    .line 1680
    :cond_1d
    invoke-virtual {v2, v3, v0, p2, v1}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;IZ)Landroid/content/res/Configuration;

    move-result-object v0

    .line 1685
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz p1, :cond_29

    if-eqz p3, :cond_29

    if-eqz v0, :cond_29

    .line 1686
    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1690
    :cond_29
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0, p1, p4, p2}, Lcom/android/server/am/ActivityManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZI)Z

    move-result v1

    return v1
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compareIntentFilters"    # Z

    .line 3629
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 3630
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3631
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_28

    .line 3632
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3633
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 3635
    .local v4, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_25

    .line 3636
    return-object v4

    .line 3631
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 3629
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3640
    .end local v0    # "displayNdx":I
    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method findStackBehind(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;
    .registers 6
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 4926
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    .line 4927
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    if-nez v0, :cond_d

    .line 4928
    const/4 v1, 0x0

    return-object v1

    .line 4930
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_13
    if-ltz v1, :cond_27

    .line 4931
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-ne v2, p1, :cond_24

    if-lez v1, :cond_24

    .line 4932
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    return-object v2

    .line 4930
    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 4935
    .end local v1    # "i":I
    :cond_27
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find a stack behind stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "displayId"    # I

    .line 3561
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 3562
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    .line 3563
    const/4 v0, 0x0

    .line 3564
    .local v0, "affinityMatch":Lcom/android/server/am/ActivityRecord;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_25

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for task of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    :cond_25
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_2d
    if-ltz v1, :cond_f2

    .line 3566
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 3567
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_3d
    if-ltz v3, :cond_ee

    .line 3568
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 3569
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v5

    if-nez v5, :cond_65

    .line 3570
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v5, :cond_ea

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping stack: (mismatch activity/stack) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ea

    .line 3574
    :cond_65
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;)V

    .line 3580
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_ea

    .line 3581
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    if-nez v5, :cond_ab

    .line 3584
    const/4 v5, 0x0

    .line 3585
    .local v5, "pulled":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    if-eq v6, v4, :cond_83

    .line 3586
    const/16 v6, 0x1f4

    invoke-virtual {p0, p1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;I)V

    .line 3587
    const/4 v5, 0x1

    .line 3590
    :cond_83
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v6

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_94

    .line 3595
    if-nez v5, :cond_94

    .line 3596
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V

    .line 3600
    :cond_94
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v6

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_a6

    .line 3602
    const/4 v6, 0x6

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->acquireUxPerfLock(ILjava/lang/String;)V

    .line 3604
    :cond_a6
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    return-object v6

    .line 3605
    .end local v5    # "pulled":Z
    :cond_ab
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    if-ne v5, p2, :cond_ba

    .line 3609
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    goto :goto_ea

    .line 3610
    :cond_ba
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v5, :cond_ea

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    if-eqz v5, :cond_ea

    .line 3611
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping match on different display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 3612
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3611
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_ea
    :goto_ea
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_3d

    .line 3565
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_ee
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2d

    .line 3619
    .end local v1    # "displayNdx":I
    :cond_f2
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_104

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_107

    .line 3620
    :cond_104
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V

    .line 3623
    :cond_107
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_114

    if-nez v0, :cond_114

    const-string v1, "ActivityManager"

    const-string v2, "No task found"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3624
    :cond_114
    return-object v0
.end method

.method findTaskToMoveToFront(Lcom/android/server/am/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .registers 25
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "forceNonResizeable"    # Z

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    .line 2325
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 2327
    .local v11, "currentStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 2328
    .local v12, "focusedStack":Lcom/android/server/am/ActivityStack;
    const/4 v13, 0x0

    if-eqz v12, :cond_16

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v13

    :goto_17
    move-object v14, v0

    .line 2332
    .local v14, "top_activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v14, :cond_25

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_25

    .line 2333
    invoke-virtual {v8, v14}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V

    .line 2336
    :cond_25
    if-nez v11, :cond_43

    .line 2337
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTaskToMoveToFront: can\'t move task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to front. Stack is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    return-void

    .line 2342
    :cond_43
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_4a

    .line 2343
    iput-boolean v1, v8, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2346
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 2348
    .local v7, "prev":Lcom/android/server/am/ActivityRecord;
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_5a

    if-eqz v7, :cond_5f

    .line 2349
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2352
    :cond_5a
    const-string v0, "findTaskToMoveToFront"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 2355
    :cond_5f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-virtual {v8, v10}, Lcom/android/server/am/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 2356
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2357
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v9, v6}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2359
    invoke-virtual {v8, v13, v10, v9, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 2361
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v5, v11, :cond_8c

    .line 2362
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v15, 0x1

    const-string v16, "findTaskToMoveToFront"

    move-object v0, v9

    move-object v1, v5

    move-object/from16 v17, v5

    move v5, v15

    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .local v17, "stack":Lcom/android/server/am/ActivityStack;
    move-object v15, v6

    move-object/from16 v6, v16

    .end local v6    # "bounds":Landroid/graphics/Rect;
    .local v15, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2364
    move-object v0, v11

    .line 2368
    .end local v17    # "stack":Lcom/android/server/am/ActivityStack;
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    move-object v6, v0

    goto :goto_91

    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "bounds":Landroid/graphics/Rect;
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    :cond_8c
    move-object/from16 v17, v5

    move-object v15, v6

    move-object/from16 v6, v17

    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "bounds":Landroid/graphics/Rect;
    :goto_91
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 2369
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v0, v8

    move-object v1, v6

    move-object v2, v15

    move-object/from16 v18, v6

    move/from16 v6, v16

    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    .local v18, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v16, v7

    move/from16 v7, v17

    .end local v7    # "prev":Lcom/android/server/am/ActivityRecord;
    .local v16, "prev":Lcom/android/server/am/ActivityRecord;
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    goto :goto_b7

    .line 2376
    .end local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v7    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_ad
    move-object/from16 v18, v6

    move-object/from16 v16, v7

    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "prev":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    .restart local v18    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->resizeWindowContainer()V

    .end local v15    # "bounds":Landroid/graphics/Rect;
    .end local v18    # "stack":Lcom/android/server/am/ActivityStack;
    goto :goto_b7

    .line 2380
    .end local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_b5
    move-object/from16 v16, v7

    .end local v7    # "prev":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    :goto_b7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 2381
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    .line 2382
    if-nez v6, :cond_c0

    .line 2381
    move-object v4, v13

    goto :goto_c3

    .line 2382
    :cond_c0
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2381
    move-object v4, v0

    :goto_c3
    move-object v0, v11

    move-object v1, v9

    move-object v3, v10

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2386
    if-eqz v6, :cond_d7

    iget-object v0, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConnor:Lcom/android/server/am/Connor;

    iget-object v1, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/Connor;->feed(Ljava/lang/String;Z)V

    .line 2389
    :cond_d7
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_f1

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTaskToMoveToFront: moved to front of stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    :cond_f1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, v9

    move-object v4, v11

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;Z)V

    .line 2394
    return-void
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .registers 18
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

    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    .line 2192
    const/4 v1, 0x0

    .line 2193
    .local v1, "didSomething":Z
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "displayNdx":I
    :goto_a
    if-ltz v2, :cond_35

    .line 2194
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityDisplay;

    .line 2195
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "stackNdx":I
    :goto_1a
    if-ltz v4, :cond_32

    .line 2196
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 2197
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    move-object v5, v11

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2199
    const/4 v1, 0x1

    .line 2195
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2f
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    .line 2193
    .end local v3    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v4    # "stackNdx":I
    :cond_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 2203
    .end local v2    # "displayNdx":I
    :cond_35
    return v1
.end method

.method finishTopCrashedActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;
    .registers 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2295
    const/4 v0, 0x0

    .line 2296
    .local v0, "finishedTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2297
    .local v1, "focusedStack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "displayNdx":I
    :goto_d
    if-ltz v2, :cond_31

    .line 2298
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityDisplay;

    .line 2301
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    const/4 v4, 0x0

    .local v4, "stackNdx":I
    :goto_18
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2e

    .line 2302
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 2303
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5, p1, p2}, Lcom/android/server/am/ActivityStack;->finishTopCrashedActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 2304
    .local v6, "t":Lcom/android/server/am/TaskRecord;
    if-eq v5, v1, :cond_2a

    if-nez v0, :cond_2b

    .line 2305
    :cond_2a
    move-object v0, v6

    .line 2301
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "t":Lcom/android/server/am/TaskRecord;
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 2297
    .end local v3    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v4    # "stackNdx":I
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 2309
    .end local v2    # "displayNdx":I
    :cond_31
    return-object v0
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 7
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 2313
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_26

    .line 2314
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 2315
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    .line 2316
    .local v2, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_17
    if-ge v3, v2, :cond_23

    .line 2317
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2318
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 2316
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 2313
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "numStacks":I
    .end local v3    # "stackNdx":I
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2321
    .end local v0    # "displayNdx":I
    :cond_26
    return-void
.end method

.method getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;
    .registers 3
    .param p1, "displayId"    # I

    .line 4455
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    return-object v0
.end method

.method getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;
    .registers 5
    .param p1, "displayId"    # I

    .line 4469
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    .line 4470
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_b

    .line 4471
    return-object v0

    .line 4473
    :cond_b
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 4475
    return-object v2

    .line 4477
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 4478
    .local v1, "display":Landroid/view/Display;
    if-nez v1, :cond_1a

    .line 4480
    return-object v2

    .line 4483
    :cond_1a
    new-instance v2, Lcom/android/server/am/ActivityDisplay;

    invoke-direct {v2, p0, v1}, Lcom/android/server/am/ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/view/Display;)V

    move-object v0, v2

    .line 4484
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->attachDisplay(Lcom/android/server/am/ActivityDisplay;)V

    .line 4485
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityDisplay;)V

    .line 4486
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayAdded(I)V

    .line 4487
    return-object v0
.end method

.method public getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;
    .registers 2

    .line 641
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    return-object v0
.end method

.method getAllStackInfosLocked()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .line 4644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4645
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 4646
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 4647
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1c
    if-ltz v3, :cond_2c

    .line 4648
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 4649
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4647
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 4645
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4652
    .end local v1    # "displayNdx":I
    :cond_2f
    return-object v0
.end method

.method protected getChildAt(I)Lcom/android/server/am/ActivityDisplay;
    .registers 3
    .param p1, "index"    # I

    .line 470
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .registers 2

    .line 465
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;
    .registers 3

    .line 4460
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    return-object v0
.end method

.method getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;
    .registers 6
    .param p1, "displayId"    # I

    .line 479
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 480
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_b

    .line 484
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1

    .line 481
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dumpVisibleStacksOnly"    # Z
    .param p3, "dumpFocusedStackOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 4217
    if-eqz p3, :cond_9

    .line 4218
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 4220
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4221
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4222
    .local v1, "numDisplays":I
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_15
    if-ge v2, v1, :cond_41

    .line 4223
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityDisplay;

    .line 4224
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "stackNdx":I
    :goto_25
    if-ltz v4, :cond_3e

    .line 4225
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4226
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p2, :cond_34

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 4227
    :cond_34
    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4224
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3b
    add-int/lit8 v4, v4, -0x1

    goto :goto_25

    .line 4222
    .end local v3    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v4    # "stackNdx":I
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 4231
    .end local v2    # "displayNdx":I
    :cond_41
    return-object v0
.end method

.method getFocusedStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .line 698
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .line 2706
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivityForUser(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/am/ActivityRecord;
    .registers 9
    .param p1, "userId"    # I

    .line 2710
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 2711
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_c
    if-ltz v1, :cond_3e

    .line 2712
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 2713
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 2714
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2715
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "activityNdx":I
    :goto_22
    if-ltz v4, :cond_3b

    .line 2716
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2717
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_38

    const/4 v6, -0x1

    if-eq p1, v6, :cond_37

    iget v6, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, p1, :cond_38

    .line 2719
    :cond_37
    return-object v5

    .line 2715
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_38
    add-int/lit8 v4, v4, -0x1

    goto :goto_22

    .line 2711
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 2724
    .end local v1    # "taskNdx":I
    :cond_3e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getKeyguardController()Lcom/android/server/am/KeyguardController;
    .registers 2

    .line 649
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    return-object v0
.end method

.method getLastStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .line 710
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;
    .registers 2

    .line 2408
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/am/LaunchParamsController;

    return-object v0
.end method

.method getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "onTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(",
            "Lcom/android/server/am/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/am/TaskRecord;",
            "Z)TT;"
        }
    .end annotation

    .line 2451
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;
    .registers 22
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "onTop"    # Z
    .param p5, "candidateDisplayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(",
            "Lcom/android/server/am/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/am/TaskRecord;",
            "ZI)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 2466
    const/4 v1, -0x1

    .line 2467
    .local v1, "taskId":I
    const/4 v2, -0x1

    .line 2471
    .local v2, "displayId":I
    if-eqz v8, :cond_14

    .line 2472
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    .line 2473
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    .line 2480
    .end local v1    # "taskId":I
    .local v10, "taskId":I
    :cond_14
    move v10, v1

    const/4 v1, -0x1

    if-eq v10, v1, :cond_2c

    .line 2482
    invoke-virtual {v8, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 2483
    const/4 v3, 0x2

    move/from16 v11, p4

    invoke-virtual {v0, v10, v3, v8, v11}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 2485
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v8, v10}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 2486
    if-eqz v3, :cond_2e

    .line 2487
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2491
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2c
    move/from16 v11, p4

    :cond_2e
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    move-result v12

    .line 2492
    .local v12, "activityType":I
    const/4 v3, 0x0

    .line 2496
    .local v3, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    if-ne v2, v1, :cond_37

    .line 2497
    move/from16 v2, p5

    .line 2499
    .end local v2    # "displayId":I
    .local v13, "displayId":I
    :cond_37
    move v13, v2

    if-eq v13, v1, :cond_5e

    invoke-direct {v0, v7, v13}, Lcom/android/server/am/ActivityStackSupervisor;->canLaunchOnDisplay(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 2500
    if-eqz v7, :cond_49

    .line 2502
    invoke-virtual {v0, v13, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2503
    if-eqz v3, :cond_49

    .line 2504
    return-object v3

    .line 2507
    :cond_49
    move-object v14, v3

    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .local v14, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v15

    .line 2508
    .local v15, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v15, :cond_5d

    .line 2509
    move-object v1, v15

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v12

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2510
    .end local v14    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    if-eqz v3, :cond_5e

    .line 2511
    return-object v3

    .line 2518
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .end local v15    # "display":Lcom/android/server/am/ActivityDisplay;
    .restart local v14    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_5d
    move-object v3, v14

    .end local v14    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_5e
    const/4 v1, 0x0

    .line 2519
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .local v1, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    const/4 v2, 0x0

    .line 2520
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v9, :cond_66

    .line 2521
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2523
    :cond_66
    if-nez v1, :cond_6e

    if-eqz v7, :cond_6e

    .line 2524
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2526
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .restart local v14    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_6e
    move-object v14, v1

    if-eqz v14, :cond_9b

    .line 2527
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    .line 2528
    if-eqz v2, :cond_9b

    iget v1, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-direct {v0, v7, v1}, Lcom/android/server/am/ActivityStackSupervisor;->canLaunchOnDisplay(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 2529
    nop

    .line 2530
    invoke-virtual {v2, v7, v8, v9, v12}, Lcom/android/server/am/ActivityDisplay;->resolveWindowingMode(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;I)I

    move-result v1

    .line 2531
    .local v1, "windowingMode":I
    invoke-virtual {v14, v1, v12}, Lcom/android/server/am/ActivityStack;->isCompatible(II)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 2532
    return-object v14

    .line 2534
    :cond_8b
    const/4 v3, 0x4

    if-ne v1, v3, :cond_9b

    .line 2535
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-ne v3, v14, :cond_9b

    .line 2536
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-ne v9, v3, :cond_9b

    .line 2542
    return-object v14

    .line 2547
    .end local v1    # "windowingMode":I
    :cond_9b
    if-eqz v2, :cond_ad

    iget v1, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    .line 2548
    invoke-direct {v0, v7, v1}, Lcom/android/server/am/ActivityStackSupervisor;->canLaunchOnDisplay(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v1

    if-eqz v1, :cond_ad

    const/4 v1, 0x1

    if-eq v12, v1, :cond_ab

    if-eqz v12, :cond_ab

    goto :goto_ad

    .line 2556
    :cond_ab
    move-object v15, v2

    goto :goto_b2

    .line 2553
    :cond_ad
    :goto_ad
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    .line 2556
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    move-object v15, v1

    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .restart local v15    # "display":Lcom/android/server/am/ActivityDisplay;
    :goto_b2
    move-object v1, v15

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v12

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method getLaunchTimeTracker()Lcom/android/server/am/LaunchTimeTracker;
    .registers 2

    .line 645
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchTimeTracker:Lcom/android/server/am/LaunchTimeTracker;

    return-object v0
.end method

.method getNextFocusableStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;
    .registers 11
    .param p1, "currentFocus"    # Lcom/android/server/am/ActivityStack;
    .param p2, "ignoreCurrent"    # Z

    .line 2635
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    .line 2637
    if-eqz p1, :cond_e

    .line 2638
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 2639
    .local v0, "currentWindowingMode":I
    :goto_f
    const/4 v1, 0x0

    .line 2640
    .local v1, "candidate":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_63

    .line 2641
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 2643
    .local v3, "displayId":I
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    .line 2644
    .local v4, "display":Lcom/android/server/am/ActivityDisplay;
    if-nez v4, :cond_27

    .line 2646
    goto :goto_60

    .line 2648
    :cond_27
    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_2d
    if-ltz v5, :cond_60

    .line 2649
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 2650
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p2, :cond_38

    if-ne v6, p1, :cond_38

    .line 2651
    goto :goto_5d

    .line 2653
    :cond_38
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_5d

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-nez v7, :cond_46

    .line 2654
    goto :goto_5d

    .line 2657
    :cond_46
    const/4 v7, 0x4

    if-ne v0, v7, :cond_53

    if-nez v1, :cond_53

    .line 2658
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 2666
    move-object v1, v6

    .line 2667
    goto :goto_5d

    .line 2669
    :cond_53
    if-eqz v1, :cond_5c

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 2671
    return-object v1

    .line 2673
    :cond_5c
    return-object v6

    .line 2648
    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_5d
    :goto_5d
    add-int/lit8 v5, v5, -0x1

    goto :goto_2d

    .line 2640
    .end local v3    # "displayId":I
    .end local v4    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v5    # "j":I
    :cond_60
    :goto_60
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 2677
    .end local v2    # "i":I
    :cond_63
    return-object v1
.end method

.method getNextTaskIdForUserLocked(I)I
    .registers 6
    .param p1, "userId"    # I

    .line 946
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const v1, 0x186a0

    mul-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 950
    .local v0, "currentTaskId":I
    invoke-static {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 951
    .local v1, "candidateTaskId":I
    :goto_e
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/am/RecentTasks;->containsTaskId(II)Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x1

    .line 952
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_1e

    goto :goto_24

    .line 963
    :cond_1e
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 964
    return v1

    .line 954
    :cond_24
    :goto_24
    invoke-static {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 955
    if-eq v1, v0, :cond_2b

    goto :goto_e

    .line 958
    :cond_2b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "currentFocus"    # I

    .line 2691
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    .line 2692
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_24

    .line 2693
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 2694
    .local v1, "displayId":I
    if-ne v1, p2, :cond_1a

    .line 2695
    goto :goto_21

    .line 2697
    :cond_1a
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2698
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_21

    .line 2699
    return-object v2

    .line 2692
    .end local v1    # "displayId":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_21
    :goto_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 2702
    .end local v0    # "i":I
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method getReparentTargetStack(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;
    .registers 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p3, "toTop"    # Z

    .line 3308
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3309
    .local v0, "prevStack":Lcom/android/server/am/ActivityStack;
    iget v1, p2, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 3310
    .local v1, "stackId":I
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v2

    .line 3313
    .local v2, "inMultiWindowMode":Z
    if-eqz v0, :cond_2f

    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v3, v1, :cond_2f

    .line 3314
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not reparent to same stack, task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " already in stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    return-object v0

    .line 3321
    :cond_2f
    if-eqz v2, :cond_57

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    if-eqz v3, :cond_38

    goto :goto_57

    .line 3322
    :cond_38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support multi-window, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3328
    :cond_57
    :goto_57
    iget v3, p2, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eqz v3, :cond_81

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiDisplay:Z

    if-eqz v3, :cond_62

    goto :goto_81

    .line 3329
    :cond_62
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support multi-display, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3334
    :cond_81
    :goto_81
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a6

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v3, :cond_8f

    goto :goto_a6

    .line 3336
    :cond_8f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support freeform, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3342
    :cond_a6
    :goto_a6
    if-eqz v2, :cond_e1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_e1

    .line 3343
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not move unresizeable task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to multi-window stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Moving to a fullscreen stack instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    if-eqz v0, :cond_d4

    .line 3346
    return-object v0

    .line 3348
    :cond_d4
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    const/4 v4, 0x1

    .line 3349
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v5

    .line 3348
    invoke-virtual {v3, v4, v5, p3}, Lcom/android/server/am/ActivityDisplay;->createStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object p2

    .line 3351
    :cond_e1
    return-object p2
.end method

.method getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;
    .registers 4

    .line 968
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 969
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_6

    .line 970
    const/4 v1, 0x0

    return-object v1

    .line 972
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 973
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_10

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_1c

    .line 974
    :cond_10
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 975
    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_1c

    .line 976
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 979
    :cond_1c
    return-object v1
.end method

.method getRunningTasks(ILjava/util/List;IIIZ)V
    .registers 15
    .param p1, "maxNum"    # I
    .param p3, "ignoreActivityType"    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p4, "ignoreWindowingMode"    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p5, "callingUid"    # I
    .param p6, "allowed"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 1321
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/am/RunningTasks;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/RunningTasks;->getTasks(ILjava/util/List;IILandroid/util/SparseArray;IZ)V

    .line 1323
    return-void
.end method

.method protected getStack(I)Lcom/android/server/am/ActivityStack;
    .registers 4
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(I)TT;"
        }
    .end annotation

    .line 2412
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 2413
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2414
    .local v1, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    if-eqz v1, :cond_19

    .line 2415
    return-object v1

    .line 2412
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2418
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    .registers 4
    .param p1, "stackId"    # I

    .line 4631
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4632
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_b

    .line 4633
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    return-object v1

    .line 4635
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method getStackInfo(II)Landroid/app/ActivityManager$StackInfo;
    .registers 5
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 4639
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4640
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_b

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method getTopVisibleActivities()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 5068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5070
    .local v0, "topActivityTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_46

    .line 5071
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 5073
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1d
    if-ltz v3, :cond_43

    .line 5074
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 5076
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 5077
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 5078
    .local v5, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_40

    .line 5079
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v4, v6, :cond_3b

    .line 5080
    const/4 v6, 0x0

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_40

    .line 5082
    :cond_3b
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5073
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_40
    :goto_40
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 5070
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "j":I
    :cond_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 5088
    .end local v1    # "i":I
    :cond_46
    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userId"    # I

    .line 1924
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1926
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 1928
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1926
    return-object v2

    .line 1928
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2575
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 2576
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_4c

    .line 2581
    invoke-virtual {p2, p1}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 2582
    return-object v2

    .line 2586
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 2586
    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_24

    .line 2587
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2588
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->isValidLaunchStack(Lcom/android/server/am/ActivityStack;ILcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2589
    return-object v4

    .line 2586
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 2594
    .end local v1    # "i":I
    :cond_24
    if-eqz p1, :cond_34

    .line 2595
    nop

    .line 2596
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v2

    .line 2595
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityDisplay;->createStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2599
    :cond_34
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getValidLaunchStackOnDisplay: can\'t launch on displayId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    return-object v2

    .line 2577
    :cond_4c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display with displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method goingToSleepLocked()V
    .registers 3

    .line 3654
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleSleepTimeout()V

    .line 3655
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_26

    .line 3656
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3657
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3661
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3662
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 3666
    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->applySleepTokensLocked(Z)V

    .line 3668
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 3669
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3826
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 3827
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3828
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 3829
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3830
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3828
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 3826
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3833
    .end local v0    # "displayNdx":I
    :cond_27
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2152
    const/4 v0, 0x0

    .line 2153
    .local v0, "hasVisibleActivities":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_2a

    .line 2154
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 2155
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_27

    .line 2156
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2157
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2155
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 2153
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2160
    .end local v1    # "displayNdx":I
    :cond_2a
    return v0
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "preferredWindowingMode"    # I
    .param p3, "preferredDisplayId"    # I
    .param p4, "actualStack"    # Lcom/android/server/am/ActivityStack;

    .line 4657
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;Z)V

    .line 4659
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;Z)V
    .registers 14
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "preferredWindowingMode"    # I
    .param p3, "preferredDisplayId"    # I
    .param p4, "actualStack"    # Lcom/android/server/am/ActivityStack;
    .param p5, "forceNonResizable"    # Z

    .line 4663
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_9

    const/4 v2, -0x1

    if-eq p3, v2, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    move v2, v0

    .line 4665
    .local v2, "isSecondaryDisplayPreferred":Z
    :goto_a
    if-eqz p4, :cond_18

    .line 4666
    invoke-virtual {p4}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v3

    if-eqz v3, :cond_18

    move v3, v1

    goto :goto_19

    :cond_18
    move v3, v0

    .line 4667
    .local v3, "inSplitScreenMode":Z
    :goto_19
    if-nez v3, :cond_20

    const/4 v4, 0x3

    if-eq p2, v4, :cond_20

    if-eqz v2, :cond_26

    .line 4668
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-nez v4, :cond_27

    .line 4669
    :cond_26
    return-void

    .line 4673
    :cond_27
    if-eqz v2, :cond_4f

    .line 4674
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 4675
    .local v4, "actualDisplayId":I
    invoke-virtual {p1, v4}, Lcom/android/server/am/TaskRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 4680
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7, v1}, Lcom/android/server/am/ActivityManagerService;->setTaskWindowingMode(IIZ)V

    .line 4682
    if-eq p3, v4, :cond_4f

    .line 4685
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    .line 4686
    invoke-virtual {v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayFailed()V

    .line 4687
    return-void

    .line 4676
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task resolved to incompatible display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4691
    .end local v4    # "actualDisplayId":I
    :cond_4f
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_7b

    if-eqz p5, :cond_58

    goto :goto_7b

    .line 4707
    :cond_58
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4708
    .local v0, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isNonResizableOrForcedResizable()Z

    move-result v4

    if-eqz v4, :cond_7a

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v4, :cond_7a

    .line 4710
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4711
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_70

    .line 4712
    const/4 v1, 0x2

    goto :goto_71

    .line 4713
    :cond_70
    nop

    .line 4714
    .local v1, "reason":I
    :goto_71
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6, v1, v4}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 4717
    .end local v1    # "reason":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_7a
    return-void

    .line 4694
    .end local v0    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_7b
    :goto_7b
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v4}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 4699
    nop

    .line 4700
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 4701
    .local v4, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v4, :cond_98

    .line 4702
    if-ne p4, v4, :cond_95

    move v0, v1

    nop

    :cond_95
    invoke-virtual {p0, v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 4704
    :cond_98
    return-void
.end method

.method hasAwakeDisplay()Z
    .registers 5

    .line 3644
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 3645
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 3646
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->shouldSleep()Z

    move-result v3

    if-nez v3, :cond_19

    .line 3647
    return v1

    .line 3644
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3650
    .end local v0    # "displayNdx":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method initPowerManagement()V
    .registers 4

    .line 667
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 668
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "ActivityManager-Sleep"

    .line 669
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 670
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "*launch*"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 671
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 672
    return-void
.end method

.method public initialize()V
    .registers 4

    .line 625
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mInitialized:Z

    if-eqz v0, :cond_5

    .line 626
    return-void

    .line 629
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mInitialized:Z

    .line 630
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->createRunningTasks()Lcom/android/server/am/RunningTasks;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/am/RunningTasks;

    .line 631
    new-instance v0, Lcom/android/server/am/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 632
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/ActivityMetricsLogger;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    .line 633
    new-instance v0, Lcom/android/server/am/KeyguardController;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/KeyguardController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    .line 635
    new-instance v0, Lcom/android/server/am/LaunchParamsController;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/LaunchParamsController;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/am/LaunchParamsController;

    .line 636
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/am/LaunchParamsController;

    invoke-virtual {v0, p0}, Lcom/android/server/am/LaunchParamsController;->registerDefaultModifiers(Lcom/android/server/am/ActivityStackSupervisor;)V

    .line 637
    return-void
.end method

.method invalidateTaskLayers()V
    .registers 2

    .line 3899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    .line 3900
    return-void
.end method

.method isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .registers 14
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "launchDisplayId"    # I
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 1838
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_2a

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch on display check: displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callingPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    :cond_2a
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3c

    if-ne p2, v0, :cond_3c

    .line 1842
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_3b

    const-string v0, "ActivityManager"

    const-string v2, "Launch on display check: no caller info, skip check"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_3b
    return v1

    .line 1846
    :cond_3c
    invoke-virtual {p0, p3}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    .line 1847
    .local v2, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    const/4 v3, 0x0

    if-nez v2, :cond_4b

    .line 1848
    const-string v0, "ActivityManager"

    const-string v1, "Launch on display check: display not found"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    return v3

    .line 1854
    :cond_4b
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    .line 1856
    .local v4, "startAnyPerm":I
    if-nez v4, :cond_61

    .line 1857
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_60

    const-string v0, "ActivityManager"

    const-string v3, "Launch on display check: allow launch any on display"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_60
    return v1

    .line 1863
    :cond_61
    invoke-virtual {v2, p2}, Lcom/android/server/am/ActivityDisplay;->isUidPresent(I)Z

    move-result v5

    .line 1865
    .local v5, "uidPresentOnDisplay":Z
    iget-object v6, v2, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getOwnerUid()I

    move-result v6

    .line 1866
    .local v6, "displayOwnerUid":I
    iget-object v7, v2, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getType()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_a9

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_a9

    iget-object v7, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v7, :cond_a9

    .line 1870
    iget v7, p4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-nez v7, :cond_91

    .line 1871
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_90

    const-string v0, "ActivityManager"

    const-string v1, "Launch on display check: disallow launch on virtual display for not-embedded activity."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_90
    return v3

    .line 1876
    :cond_91
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "android.permission.ACTIVITY_EMBEDDING"

    invoke-virtual {v7, v8, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v0, :cond_a9

    if-nez v5, :cond_a9

    .line 1878
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_a8

    const-string v0, "ActivityManager"

    const-string v1, "Launch on display check: disallow activity embedding without permission."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    :cond_a8
    return v3

    .line 1884
    :cond_a9
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 1886
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_ba

    const-string v0, "ActivityManager"

    const-string v3, "Launch on display check: allow launch on public display"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_ba
    return v1

    .line 1892
    :cond_bb
    if-ne v6, p2, :cond_c9

    .line 1893
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_c8

    const-string v0, "ActivityManager"

    const-string v3, "Launch on display check: allow launch for owner of the display"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :cond_c8
    return v1

    .line 1898
    :cond_c9
    if-eqz v5, :cond_d7

    .line 1899
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_d6

    const-string v0, "ActivityManager"

    const-string v3, "Launch on display check: allow launch for caller present on the display"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :cond_d6
    return v1

    .line 1904
    :cond_d7
    const-string v0, "ActivityManager"

    const-string v1, "Launch on display check: denied"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    return v3
.end method

.method isCurrentProfileLocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 4041
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 4042
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->isCurrentProfile(I)Z

    move-result v0

    return v0
.end method

.method isDisplayAdded(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 4450
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z
    .registers 5
    .param p1, "container"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "alwaysFocusable"    # Z

    .line 702
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    if-eqz v0, :cond_c

    .line 703
    return v1

    .line 706
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz p2, :cond_19

    goto :goto_1a

    :cond_19
    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v1, 0x1

    :goto_1b
    return v1
.end method

.method isFocusedStack(Lcom/android/server/am/ActivityStack;)Z
    .registers 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 714
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .line 863
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 864
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_7
    if-ge v1, v0, :cond_2a

    .line 865
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 866
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_17
    if-ltz v3, :cond_27

    .line 867
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 868
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 869
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_24

    .line 870
    return-object v5

    .line 866
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_24
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 864
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 874
    .end local v1    # "displayNdx":I
    :cond_2a
    const/4 v1, 0x0

    return-object v1
.end method

.method isStoppingNoHistoryActivity()Z
    .registers 4

    .line 4053
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4054
    .local v1, "record":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isNoHistory()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4055
    const/4 v0, 0x1

    return v0

    .line 4057
    .end local v1    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    goto :goto_6

    .line 4059
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method lockAllProfileTasks(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 904
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 906
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_d
    if-ltz v0, :cond_4d

    .line 907
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 908
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1d
    if-ltz v2, :cond_4a

    .line 909
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 910
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 911
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "taskNdx":I
    :goto_2d
    if-ltz v5, :cond_47

    .line 912
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 917
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-direct {p0, v6, p1}, Lcom/android/server/am/ActivityStackSupervisor;->taskTopActivityIsUser(Lcom/android/server/am/TaskRecord;I)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 918
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8, p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskProfileLocked(II)V
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_54

    .line 911
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_44
    add-int/lit8 v5, v5, -0x1

    goto :goto_2d

    .line 908
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    .end local v5    # "taskNdx":I
    :cond_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 906
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_4a
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 925
    .end local v0    # "displayNdx":I
    :cond_4d
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 926
    nop

    .line 927
    return-void

    .line 925
    :catchall_54
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method logStackState()V
    .registers 2

    .line 4734
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityMetricsLogger;->logWindowState()V

    .line 4735
    return-void
.end method

.method moveActivityToPinnedStackLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V
    .registers 28
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceHintBounds"    # Landroid/graphics/Rect;
    .param p3, "aspectRatio"    # F
    .param p4, "reason"    # Ljava/lang/String;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 3383
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 3385
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v11

    .line 3386
    .local v11, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v11}, Lcom/android/server/am/ActivityDisplay;->getPinnedStack()Lcom/android/server/am/PinnedActivityStack;

    move-result-object v0

    .line 3390
    .local v0, "stack":Lcom/android/server/am/PinnedActivityStack;
    const/4 v12, 0x0

    if-eqz v0, :cond_1b

    .line 3391
    invoke-virtual {v9, v0, v12}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 3395
    :cond_1b
    const/4 v1, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v2

    const/4 v13, 0x1

    invoke-virtual {v11, v1, v2, v13}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/am/PinnedActivityStack;

    .line 3399
    .end local v0    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .local v15, "stack":Lcom/android/server/am/PinnedActivityStack;
    move/from16 v14, p3

    invoke-virtual {v15, v14}, Lcom/android/server/am/PinnedActivityStack;->getDefaultPictureInPictureBounds(F)Landroid/graphics/Rect;

    move-result-object v0

    move-object v8, v0

    .line 3402
    .local v8, "destBounds":Landroid/graphics/Rect;
    :try_start_2f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3406
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_c2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v16, 0x0

    move-object v1, v9

    move-object v2, v15

    move-object/from16 v22, v8

    move/from16 v8, v16

    .end local v8    # "destBounds":Landroid/graphics/Rect;
    .local v22, "destBounds":Landroid/graphics/Rect;
    :try_start_43
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 3410
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_bb

    if-ne v1, v13, :cond_66

    .line 3412
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v14, v0

    move-object v1, v15

    .line 3412
    .end local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .local v1, "stack":Lcom/android/server/am/PinnedActivityStack;
    move-object/from16 v21, p4

    :try_start_5c
    invoke-virtual/range {v14 .. v21}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_96

    .line 3436
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_60
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    goto :goto_c7

    .line 3423
    .end local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    :cond_66
    move-object v1, v15

    .line 3423
    .end local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    :try_start_67
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iget v3, v10, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3424
    invoke-virtual {v9, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v3

    iget-object v4, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 3423
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 3425
    .local v2, "newTask":Lcom/android/server/am/TaskRecord;
    const v3, 0x7fffffff

    const-string/jumbo v4, "moveActivityToStack"

    invoke-virtual {v10, v2, v3, v4}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    .line 3428
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v14, v2

    move-object v15, v1

    move-object/from16 v21, p4

    invoke-virtual/range {v14 .. v21}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 3434
    .end local v2    # "newTask":Lcom/android/server/am/TaskRecord;
    :goto_96
    iput-boolean v12, v10, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_98
    .catchall {:try_start_67 .. :try_end_98} :catchall_b5

    .line 3436
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3437
    nop

    .line 3439
    const/4 v0, -0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    invoke-virtual {v1, v2, v3, v0, v13}, Lcom/android/server/am/PinnedActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 3446
    .end local v22    # "destBounds":Landroid/graphics/Rect;
    .local v3, "destBounds":Landroid/graphics/Rect;
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v12, v12}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3447
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 3449
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v0, v10}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityPinned(Lcom/android/server/am/ActivityRecord;)V

    .line 3450
    return-void

    .line 3436
    .end local v3    # "destBounds":Landroid/graphics/Rect;
    .restart local v22    # "destBounds":Landroid/graphics/Rect;
    :catchall_b5
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    .line 3436
    .end local v22    # "destBounds":Landroid/graphics/Rect;
    .restart local v3    # "destBounds":Landroid/graphics/Rect;
    goto :goto_c7

    .line 3436
    .end local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .end local v3    # "destBounds":Landroid/graphics/Rect;
    .restart local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v22    # "destBounds":Landroid/graphics/Rect;
    :catchall_bb
    move-exception v0

    move-object/from16 v2, p2

    move-object v1, v15

    move-object/from16 v3, v22

    .line 3436
    .end local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .end local v22    # "destBounds":Landroid/graphics/Rect;
    .restart local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v3    # "destBounds":Landroid/graphics/Rect;
    goto :goto_c7

    .line 3436
    .end local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .end local v3    # "destBounds":Landroid/graphics/Rect;
    .restart local v8    # "destBounds":Landroid/graphics/Rect;
    .restart local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    :catchall_c2
    move-exception v0

    move-object/from16 v2, p2

    move-object v3, v8

    move-object v1, v15

    .line 3436
    .end local v8    # "destBounds":Landroid/graphics/Rect;
    .end local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v3    # "destBounds":Landroid/graphics/Rect;
    :goto_c7
    iget-object v4, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3454
    const/4 v0, 0x0

    if-eqz p1, :cond_7a

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_7a

    .line 3460
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 3461
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 3462
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_34

    .line 3463
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveActivityStackToFront: invalid task or stack: r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    return v0

    .line 3468
    :cond_34
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v2, v3, :cond_5a

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-ne v3, p1, :cond_5a

    .line 3469
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v3, :cond_59

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveActivityStackToFront: already on top, r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    :cond_59
    return v0

    .line 3474
    :cond_5a
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v0, :cond_75

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveActivityStackToFront: r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    :cond_75
    invoke-virtual {v2, p2, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 3478
    const/4 v0, 0x1

    return v0

    .line 3455
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_7a
    :goto_7a
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v1, :cond_95

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveActivityStackToFront: unfocusable r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    :cond_95
    return v0
.end method

.method moveHomeStackTaskToTop(Ljava/lang/String;)Z
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 755
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop()V

    .line 757
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 758
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_d

    .line 759
    const/4 v1, 0x0

    return v1

    .line 761
    :cond_d
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 762
    const/4 v1, 0x1

    return v1
.end method

.method moveHomeStackToFront(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 742
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method moveRecentsStackToFront(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 746
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 748
    .local v0, "recentsStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_f

    .line 749
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 751
    :cond_f
    return-void
.end method

.method moveStackToDisplayLocked(IIZ)V
    .registers 10
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "onTop"    # Z

    .line 3276
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 3277
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_6e

    .line 3281
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3282
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_56

    .line 3287
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    .line 3288
    .local v2, "currentDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v2, :cond_39

    .line 3293
    iget v3, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    if-eq v3, p2, :cond_1a

    .line 3298
    invoke-virtual {v1, v0, p3}, Lcom/android/server/am/ActivityStack;->reparent(Lcom/android/server/am/ActivityDisplay;Z)V

    .line 3300
    return-void

    .line 3294
    :cond_1a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to move stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to its current displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3289
    :cond_39
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveStackToDisplayLocked: Stack with stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not attached to any display."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3283
    .end local v2    # "currentDisplay":Lcom/android/server/am/ActivityDisplay;
    :cond_56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveStackToDisplayLocked: Unknown stackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3278
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveStackToDisplayLocked: Unknown displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;IZ)V
    .registers 6
    .param p1, "fromStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toDisplayId"    # I
    .param p3, "onTop"    # Z

    .line 2887
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 2889
    return-void
.end method

.method moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V
    .registers 4
    .param p1, "fromStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "onTop"    # Z

    .line 2883
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;IZ)V

    .line 2884
    return-void
.end method

.method moveTopStackActivityToPinnedStackLocked(ILandroid/graphics/Rect;)Z
    .registers 9
    .param p1, "stackId"    # I
    .param p2, "destBounds"    # Landroid/graphics/Rect;

    .line 3355
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3356
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_53

    .line 3361
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 3362
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    if-nez v1, :cond_25

    .line 3363
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTopStackActivityToPinnedStackLocked: No top running activity in stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    return v2

    .line 3368
    :cond_25
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v3, :cond_49

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v3

    if-nez v3, :cond_49

    .line 3369
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTopStackActivityToPinnedStackLocked: Picture-In-Picture not supported for  r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    return v2

    .line 3375
    :cond_49
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "moveTopActivityToPinnedStack"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveActivityToPinnedStackLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V

    .line 3377
    const/4 v2, 0x1

    return v2

    .line 3357
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTopStackActivityToPinnedStackLocked: Unknown stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method notifyAppTransitionDone()V
    .registers 5

    .line 2794
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateRecentsHomeStackBounds()V

    .line 2795
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_26

    .line 2796
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2797
    .local v1, "taskId":I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 2798
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_23

    .line 2799
    invoke-virtual {v3, v2}, Lcom/android/server/am/TaskRecord;->setTaskDockedResizing(Z)V

    .line 2795
    .end local v1    # "taskId":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 2802
    .end local v0    # "i":I
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2803
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 4426
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_1a

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display added displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4428
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 4438
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_1a

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display changed displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4439
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4440
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 4432
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_1a

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display removed displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4433
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4434
    return-void
.end method

.method public onRecentTaskAdded(Lcom/android/server/am/TaskRecord;)V
    .registers 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 3255
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 3256
    return-void
.end method

.method public onRecentTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V
    .registers 9
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "wasTrimmed"    # Z

    .line 3260
    if-eqz p2, :cond_e

    .line 3263
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "recent-task-trimmed"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    .line 3266
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 3267
    return-void
.end method

.method pauseBackStacks(ZLcom/android/server/am/ActivityRecord;Z)Z
    .registers 12
    .param p1, "userLeaving"    # Z
    .param p2, "resuming"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "dontWait"    # Z

    .line 1088
    const/4 v0, 0x0

    .line 1089
    .local v0, "someActivityPaused":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1089
    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_8d

    .line 1090
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1091
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 1091
    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_89

    .line 1092
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1093
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-nez v5, :cond_86

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_86

    .line 1097
    sget-boolean v5, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v5, :cond_59

    .line 1098
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_59

    .line 1099
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QuickReply: skip pausing stack="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " mResumedActivity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1099
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    goto :goto_86

    .line 1104
    :cond_59
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_80

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pauseBackStacks: stack="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " mResumedActivity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1104
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_80
    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, p2, p3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1091
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_86
    :goto_86
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1089
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_89
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_9

    .line 1111
    .end local v1    # "displayNdx":I
    :cond_8d
    return v0
.end method

.method prepareForShutdownLocked()V
    .registers 4

    .line 3672
    const/4 v0, 0x0

    .line 3672
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 3673
    const-string/jumbo v1, "shutdown"

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->createSleepTokenLocked(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    .line 3672
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3675
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method final processStoppingActivitiesLocked(Lcom/android/server/am/ActivityRecord;ZZ)Ljava/util/ArrayList;
    .registers 14
    .param p1, "idleActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "remove"    # Z
    .param p3, "processPausingActivities"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 4064
    const/4 v0, 0x0

    .line 4066
    .local v0, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesVisible()Z

    move-result v1

    .line 4067
    .local v1, "nowVisible":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "activityNdx":I
    :goto_d
    if-ltz v2, :cond_d3

    .line 4068
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4069
    .local v3, "s":Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 4070
    .local v4, "waitingVisible":Z
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_51

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": nowVisible="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " waitingVisible="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " finishing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4072
    :cond_51
    if-eqz v4, :cond_7d

    if-eqz v1, :cond_7d

    .line 4073
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4074
    const/4 v4, 0x0

    .line 4075
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_7d

    .line 4081
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_79

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Before stopping, can hide: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    :cond_79
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 4085
    :cond_7d
    if-eqz p2, :cond_cf

    .line 4086
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4087
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v5, :cond_8a

    .line 4088
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v6

    goto :goto_90

    .line 4089
    :cond_8a
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v6

    .line 4090
    .local v6, "shouldSleepOrShutDown":Z
    :goto_90
    if-eqz v4, :cond_94

    if-eqz v6, :cond_cf

    .line 4091
    :cond_94
    if-nez p3, :cond_a5

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 4094
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4095
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4096
    goto :goto_cf

    .line 4099
    :cond_a5
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v7, :cond_bf

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ready to stop: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    :cond_bf
    if-nez v0, :cond_c7

    .line 4101
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v7

    .line 4103
    :cond_c7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4104
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4067
    .end local v3    # "s":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "waitingVisible":Z
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "shouldSleepOrShutDown":Z
    :cond_cf
    :goto_cf
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_d

    .line 4109
    .end local v2    # "activityNdx":I
    :cond_d3
    return-object v0
.end method

.method rankTaskLayersIfNeeded()V
    .registers 7

    .line 3903
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    if-nez v0, :cond_5

    .line 3904
    return-void

    .line 3906
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    .line 3907
    nop

    .local v0, "displayNdx":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 3908
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3909
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    const/4 v2, 0x0

    .line 3910
    .local v2, "baseLayer":I
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_20
    if-ltz v3, :cond_2e

    .line 3911
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 3912
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->rankTaskLayers(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 3910
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_20

    .line 3907
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "baseLayer":I
    .end local v3    # "stackNdx":I
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3915
    .end local v0    # "displayNdx":I
    :cond_31
    return-void
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .registers 43
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 1401
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_38

    .line 1405
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_1b

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v0, :cond_1b

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_37

    :cond_1b
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "realStartActivityLocked: Skipping start of r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " some activities pausing..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_37
    return v5

    .line 1411
    :cond_38
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 1412
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v13

    .line 1414
    .local v13, "stack":Lcom/android/server/am/ActivityStack;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->beginDeferResume()V

    .line 1417
    :try_start_43
    invoke-virtual {v2, v3, v5}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1420
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 1422
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v0
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_478

    if-eqz v0, :cond_61

    .line 1425
    :try_start_56
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->notifyUnknownVisibilityLaunched()V

    goto :goto_61

    .line 1613
    :catchall_5a
    move-exception v0

    move-object/from16 v34, v6

    move-object v6, v2

    move-object v2, v13

    goto/16 :goto_47d

    .line 1432
    :cond_61
    :goto_61
    const/4 v7, 0x1

    if-eqz p4, :cond_6b

    .line 1436
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-virtual {v1, v2, v0, v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z
    :try_end_6b
    .catchall {:try_start_56 .. :try_end_6b} :catchall_5a

    .line 1440
    :cond_6b
    :try_start_6b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, v2, v7, v7}, Lcom/android/server/am/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v0
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_478

    if-eqz v0, :cond_78

    .line 1447
    :try_start_75
    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_5a

    .line 1451
    :cond_78
    :try_start_78
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_478

    if-eqz v0, :cond_85

    :try_start_7e
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_5a

    goto :goto_86

    :cond_85
    const/4 v0, -0x1

    :goto_86
    move v15, v0

    .line 1452
    .local v15, "applicationInfoUid":I
    :try_start_87
    iget v0, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v8, v3, Lcom/android/server/am/ProcessRecord;->userId:I
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_478

    if-ne v0, v8, :cond_93

    :try_start_8d
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_5a

    if-eq v0, v15, :cond_cf

    .line 1453
    :cond_93
    :try_start_93
    const-string v0, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User ID for activity changing for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " appInfo.uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " info.ai.uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " old="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " new="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :cond_cf
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 1461
    iget v8, v2, Lcom/android/server/am/ActivityRecord;->launchCount:I

    add-int/2addr v8, v7

    iput v8, v2, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 1462
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 1464
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z
    :try_end_df
    .catchall {:try_start_93 .. :try_end_df} :catchall_478

    if-eqz v8, :cond_f7

    :try_start_e1
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Launching: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catchall {:try_start_e1 .. :try_end_f7} :catchall_5a

    .line 1466
    :cond_f7
    :try_start_f7
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8
    :try_end_fd
    .catchall {:try_start_f7 .. :try_end_fd} :catchall_478

    move/from16 v16, v8

    .line 1467
    .local v16, "idx":I
    if-gez v16, :cond_106

    .line 1468
    :try_start_101
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_106
    .catchall {:try_start_101 .. :try_end_106} :catchall_5a

    .line 1470
    :cond_106
    :try_start_106
    iget-object v8, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v3, v7, v0}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1471
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1473
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    move-object v12, v0

    .line 1474
    .local v12, "lockTaskController":Lcom/android/server/am/LockTaskController;
    iget v0, v6, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I
    :try_end_119
    .catchall {:try_start_106 .. :try_end_119} :catchall_478

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-eq v0, v10, :cond_12c

    :try_start_11e
    iget v0, v6, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eq v0, v9, :cond_12c

    iget v0, v6, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v0, v8, :cond_12f

    .line 1477
    invoke-virtual {v12}, Lcom/android/server/am/LockTaskController;->getLockTaskModeState()I

    move-result v0
    :try_end_12a
    .catchall {:try_start_11e .. :try_end_12a} :catchall_5a

    if-ne v0, v7, :cond_12f

    .line 1479
    :cond_12c
    :try_start_12c
    invoke-virtual {v12, v6, v5, v5}, Lcom/android/server/am/LockTaskController;->startLockTaskMode(Lcom/android/server/am/TaskRecord;ZI)V
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_478

    .line 1483
    :cond_12f
    :try_start_12f
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_131
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_131} :catch_421
    .catchall {:try_start_12f .. :try_end_131} :catchall_478

    if-eqz v0, :cond_411

    .line 1486
    const/4 v0, 0x0

    .line 1487
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v11, 0x0

    .line 1488
    .local v11, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz v4, :cond_149

    .line 1491
    :try_start_137
    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object v0, v8

    .line 1492
    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_13c
    .catch Landroid/os/RemoteException; {:try_start_137 .. :try_end_13c} :catch_13e
    .catchall {:try_start_137 .. :try_end_13c} :catchall_5a

    move-object v11, v8

    goto :goto_149

    .line 1593
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v11    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :catch_13e
    move-exception v0

    move-object/from16 v34, v6

    move-object/from16 v33, v12

    move/from16 v35, v15

    move-object v6, v2

    move-object v2, v13

    goto/16 :goto_42a

    .line 1494
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v11    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_149
    :goto_149
    move-object v8, v0

    :try_start_14a
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z
    :try_end_14c
    .catch Landroid/os/RemoteException; {:try_start_14a .. :try_end_14c} :catch_421
    .catchall {:try_start_14a .. :try_end_14c} :catchall_478

    if-eqz v0, :cond_186

    :try_start_14e
    const-string v0, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Launching: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " icicle="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " with results="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " newIntents="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " andResume="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_186
    .catch Landroid/os/RemoteException; {:try_start_14e .. :try_end_186} :catch_13e
    .catchall {:try_start_14e .. :try_end_186} :catchall_5a

    .line 1498
    :cond_186
    :try_start_186
    invoke-static {}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getInstance()Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    move-result-object v0

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v7, v10, v5, v9}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->setFront(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1500
    const/16 v0, 0x7536

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget v7, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v5, v9

    .line 1501
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v5, v9

    iget v7, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v5, v9

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v7, v5, v9

    .line 1500
    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1502
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0
    :try_end_1c7
    .catch Landroid/os/RemoteException; {:try_start_186 .. :try_end_1c7} :catch_421
    .catchall {:try_start_186 .. :try_end_1c7} :catchall_478

    if-eqz v0, :cond_1d8

    .line 1504
    :try_start_1c9
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;
    :try_end_1d8
    .catch Landroid/os/RemoteException; {:try_start_1c9 .. :try_end_1d8} :catch_13e
    .catchall {:try_start_1c9 .. :try_end_1d8} :catchall_5a

    .line 1506
    :cond_1d8
    :try_start_1d8
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 1508
    iput-boolean v7, v2, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1509
    iput-boolean v7, v2, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 1510
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getAppWarningsLocked()Lcom/android/server/am/AppWarnings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppWarnings;->onStartActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1511
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1512
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 1513
    const/4 v5, 0x0

    .line 1514
    .local v5, "profilerInfo":Landroid/app/ProfilerInfo;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;
    :try_end_20b
    .catch Landroid/os/RemoteException; {:try_start_1d8 .. :try_end_20b} :catch_421
    .catchall {:try_start_1d8 .. :try_end_20b} :catchall_478

    if-eqz v0, :cond_24b

    :try_start_20d
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24b

    .line 1515
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_225

    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-ne v0, v3, :cond_24b

    .line 1516
    :cond_225
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 1517
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    move-object v7, v0

    .line 1518
    .local v7, "profilerInfoSvc":Landroid/app/ProfilerInfo;
    if-eqz v7, :cond_24b

    iget-object v0, v7, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_24b

    .line 1519
    iget-object v0, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_236
    .catch Landroid/os/RemoteException; {:try_start_20d .. :try_end_236} :catch_13e
    .catchall {:try_start_20d .. :try_end_236} :catchall_5a

    if-eqz v0, :cond_245

    .line 1521
    :try_start_238
    iget-object v0, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v7, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_240
    .catch Ljava/io/IOException; {:try_start_238 .. :try_end_240} :catch_241
    .catch Landroid/os/RemoteException; {:try_start_238 .. :try_end_240} :catch_13e
    .catchall {:try_start_238 .. :try_end_240} :catchall_5a

    .line 1524
    goto :goto_245

    .line 1522
    :catch_241
    move-exception v0

    .line 1523
    .local v0, "e":Ljava/io/IOException;
    :try_start_242
    invoke-virtual {v7}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 1527
    .end local v0    # "e":Ljava/io/IOException;
    :cond_245
    :goto_245
    new-instance v0, Landroid/app/ProfilerInfo;

    invoke-direct {v0, v7}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V
    :try_end_24a
    .catch Landroid/os/RemoteException; {:try_start_242 .. :try_end_24a} :catch_13e
    .catchall {:try_start_242 .. :try_end_24a} :catchall_5a

    .line 1527
    .end local v5    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v7    # "profilerInfoSvc":Landroid/app/ProfilerInfo;
    .local v0, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_24c

    .line 1532
    .end local v0    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v5    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_24b
    move-object v0, v5

    .line 1532
    .end local v5    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v0    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_24c
    const/4 v5, 0x1

    :try_start_24d
    iput-boolean v5, v3, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 1533
    iput-boolean v5, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1534
    iget-object v5, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1539
    new-instance v5, Landroid/util/MergedConfiguration;

    iget-object v7, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1540
    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-direct {v5, v7, v9}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 1541
    .local v5, "mergedConfiguration":Landroid/util/MergedConfiguration;
    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityRecord;->setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 1543
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-direct {v1, v7, v9}, Lcom/android/server/am/ActivityStackSupervisor;->logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1547
    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v7, v9}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v7

    .line 1549
    .local v7, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    new-instance v9, Landroid/content/Intent;

    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1550
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v18

    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1553
    invoke-virtual {v5}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    .line 1554
    invoke-virtual {v5}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v32, v5

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;
    :try_end_292
    .catch Landroid/os/RemoteException; {:try_start_24d .. :try_end_292} :catch_421
    .catchall {:try_start_24d .. :try_end_292} :catchall_478

    .line 1554
    .end local v5    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .local v32, "mergedConfiguration":Landroid/util/MergedConfiguration;
    move-object/from16 v33, v12

    :try_start_294
    iget-object v12, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1554
    .end local v12    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .local v33, "lockTaskController":Lcom/android/server/am/LockTaskController;
    iget-object v14, v6, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;
    :try_end_298
    .catch Landroid/os/RemoteException; {:try_start_294 .. :try_end_298} :catch_409
    .catchall {:try_start_294 .. :try_end_298} :catchall_478

    move-object/from16 v34, v6

    :try_start_29a
    iget v6, v3, Lcom/android/server/am/ProcessRecord;->repProcState:I
    :try_end_29c
    .catch Landroid/os/RemoteException; {:try_start_29a .. :try_end_29c} :catch_403
    .catchall {:try_start_29a .. :try_end_29c} :catchall_3fe

    .line 1554
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .local v34, "task":Lcom/android/server/am/TaskRecord;
    move/from16 v35, v15

    :try_start_29e
    iget-object v15, v2, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;
    :try_end_2a0
    .catch Landroid/os/RemoteException; {:try_start_29e .. :try_end_2a0} :catch_3fa
    .catchall {:try_start_29e .. :try_end_2a0} :catchall_3fe

    .line 1554
    .end local v15    # "applicationInfoUid":I
    .local v35, "applicationInfoUid":I
    move-object/from16 v36, v13

    :try_start_2a2
    iget-object v13, v2, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;
    :try_end_2a4
    .catch Landroid/os/RemoteException; {:try_start_2a2 .. :try_end_2a4} :catch_3f5
    .catchall {:try_start_2a2 .. :try_end_2a4} :catchall_3ef

    .line 1554
    .end local v13    # "stack":Lcom/android/server/am/ActivityStack;
    .local v36, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_2a4
    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1556
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v30

    .line 1549
    move-object/from16 v17, v9

    move-object/from16 v19, v10

    move-object/from16 v22, v5

    move-object/from16 v23, v12

    move-object/from16 v24, v14

    move/from16 v25, v6

    move-object/from16 v26, v15

    move-object/from16 v27, v13

    move-object/from16 v28, v8

    move-object/from16 v29, v11

    move-object/from16 v31, v0

    invoke-static/range {v17 .. v31}, Landroid/app/servertransaction/LaunchActivityItem;->obtain(Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;)Landroid/app/servertransaction/LaunchActivityItem;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_2c7
    .catch Landroid/os/RemoteException; {:try_start_2a4 .. :try_end_2c7} :catch_3e9
    .catchall {:try_start_2a4 .. :try_end_2c7} :catchall_3e3

    .line 1561
    if-eqz v4, :cond_2e2

    .line 1562
    :try_start_2c9
    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v2

    invoke-static {v2}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v2
    :try_end_2d3
    .catch Landroid/os/RemoteException; {:try_start_2c9 .. :try_end_2d3} :catch_2db
    .catchall {:try_start_2c9 .. :try_end_2d3} :catchall_2d4

    .line 1562
    .local v2, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_2e6

    .line 1613
    .end local v0    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v2    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v7    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v11    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v16    # "idx":I
    .end local v32    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v35    # "applicationInfoUid":I
    :catchall_2d4
    move-exception v0

    move-object/from16 v2, v36

    move-object/from16 v6, p1

    goto/16 :goto_47d

    .line 1593
    .restart local v16    # "idx":I
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v35    # "applicationInfoUid":I
    :catch_2db
    move-exception v0

    move-object/from16 v2, v36

    move-object/from16 v6, p1

    goto/16 :goto_42a

    .line 1564
    .restart local v0    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v7    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v11    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .restart local v32    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :cond_2e2
    :try_start_2e2
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v2

    .line 1566
    .restart local v2    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :goto_2e6
    invoke-virtual {v7, v2}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 1569
    iget-object v5, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1572
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_2f6
    .catch Landroid/os/RemoteException; {:try_start_2e2 .. :try_end_2f6} :catch_3e9
    .catchall {:try_start_2e2 .. :try_end_2f6} :catchall_3e3

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-eqz v5, :cond_366

    :try_start_2fa
    iget-object v5, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v5, :cond_366

    .line 1578
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_366

    .line 1579
    iget-object v5, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;
    :try_end_310
    .catch Landroid/os/RemoteException; {:try_start_2fa .. :try_end_310} :catch_35f
    .catchall {:try_start_2fa .. :try_end_310} :catchall_358

    if-eqz v5, :cond_33a

    :try_start_312
    iget-object v5, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v3, :cond_33a

    .line 1581
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting new heavy weight process "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " when already running "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33a
    .catch Landroid/os/RemoteException; {:try_start_312 .. :try_end_33a} :catch_2db
    .catchall {:try_start_312 .. :try_end_33a} :catchall_2d4

    .line 1585
    :cond_33a
    :try_start_33a
    iget-object v5, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v5, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 1586
    iget-object v5, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5
    :try_end_348
    .catch Landroid/os/RemoteException; {:try_start_33a .. :try_end_348} :catch_35f
    .catchall {:try_start_33a .. :try_end_348} :catchall_358

    .line 1588
    .local v5, "msg":Landroid/os/Message;
    move-object/from16 v6, p1

    :try_start_34a
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1589
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v9, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_353
    .catch Landroid/os/RemoteException; {:try_start_34a .. :try_end_353} :catch_356
    .catchall {:try_start_34a .. :try_end_353} :catchall_354

    .line 1589
    .end local v0    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v2    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v7    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v11    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v32    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    goto :goto_368

    .line 1613
    .end local v16    # "idx":I
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v35    # "applicationInfoUid":I
    :catchall_354
    move-exception v0

    goto :goto_35b

    .line 1593
    .restart local v16    # "idx":I
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v35    # "applicationInfoUid":I
    :catch_356
    move-exception v0

    goto :goto_362

    .line 1613
    .end local v16    # "idx":I
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v35    # "applicationInfoUid":I
    :catchall_358
    move-exception v0

    move-object/from16 v6, p1

    .line 1613
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    :goto_35b
    move-object/from16 v2, v36

    goto/16 :goto_47d

    .line 1593
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v16    # "idx":I
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v35    # "applicationInfoUid":I
    .restart local v36    # "stack":Lcom/android/server/am/ActivityStack;
    :catch_35f
    move-exception v0

    move-object/from16 v6, p1

    .line 1593
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_362
    move-object/from16 v2, v36

    goto/16 :goto_42a

    .line 1611
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v36    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_366
    move-object/from16 v6, p1

    .line 1613
    .end local v16    # "idx":I
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v35    # "applicationInfoUid":I
    :goto_368
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->endDeferResume()V

    .line 1614
    nop

    .line 1616
    const/4 v2, 0x0

    iput-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1617
    move-object/from16 v2, v36

    invoke-virtual {v2, v6}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    .line 1617
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_392

    .line 1618
    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " being launched, but already in LRU list"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_392
    if-eqz v4, :cond_39e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    if-eqz v0, :cond_39e

    .line 1626
    invoke-virtual {v2, v6}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_3c5

    .line 1631
    :cond_39e
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_3bd

    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Moving to PAUSED: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " (starting in paused state)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :cond_3bd
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v5, "realStartActivityLocked"

    invoke-virtual {v6, v0, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1640
    :goto_3c5
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_3d4

    .line 1641
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStartController;->startSetupActivity()V

    .line 1646
    :cond_3d4
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3e1

    .line 1647
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1650
    :cond_3e1
    const/4 v5, 0x1

    return v5

    .line 1613
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v36    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_3e3
    move-exception v0

    move-object/from16 v2, v36

    move-object/from16 v6, p1

    goto :goto_3f3

    .line 1593
    .restart local v16    # "idx":I
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v35    # "applicationInfoUid":I
    :catch_3e9
    move-exception v0

    move-object/from16 v2, v36

    move-object/from16 v6, p1

    goto :goto_3f9

    .line 1613
    .end local v16    # "idx":I
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v35    # "applicationInfoUid":I
    :catchall_3ef
    move-exception v0

    move-object v6, v2

    move-object/from16 v2, v36

    .line 1613
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_3f3
    goto/16 :goto_47d

    .line 1593
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v16    # "idx":I
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v35    # "applicationInfoUid":I
    .restart local v36    # "stack":Lcom/android/server/am/ActivityStack;
    :catch_3f5
    move-exception v0

    move-object v6, v2

    move-object/from16 v2, v36

    .line 1593
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_3f9
    goto :goto_42a

    .line 1593
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v13    # "stack":Lcom/android/server/am/ActivityStack;
    :catch_3fa
    move-exception v0

    move-object v6, v2

    move-object v2, v13

    .line 1593
    .end local v13    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    goto :goto_42a

    .line 1613
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v16    # "idx":I
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v35    # "applicationInfoUid":I
    .restart local v13    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_3fe
    move-exception v0

    move-object v6, v2

    move-object v2, v13

    .line 1613
    .end local v13    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_47d

    .line 1593
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v13    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "applicationInfoUid":I
    .restart local v16    # "idx":I
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    :catch_403
    move-exception v0

    move-object v6, v2

    move-object v2, v13

    move/from16 v35, v15

    .line 1593
    .end local v13    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "applicationInfoUid":I
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v35    # "applicationInfoUid":I
    goto :goto_42a

    .line 1593
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v34    # "task":Lcom/android/server/am/TaskRecord;
    .end local v35    # "applicationInfoUid":I
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v13    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "applicationInfoUid":I
    :catch_409
    move-exception v0

    move-object/from16 v34, v6

    move/from16 v35, v15

    move-object v6, v2

    move-object v2, v13

    .line 1593
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v13    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "applicationInfoUid":I
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v34    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v35    # "applicationInfoUid":I
    goto :goto_42a

    .line 1484
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v34    # "task":Lcom/android/server/am/TaskRecord;
    .end local v35    # "applicationInfoUid":I
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v13    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "applicationInfoUid":I
    :cond_411
    move-object/from16 v34, v6

    move-object/from16 v33, v12

    move/from16 v35, v15

    move-object v6, v2

    move-object v2, v13

    .line 1484
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v13    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "applicationInfoUid":I
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v34    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v35    # "applicationInfoUid":I
    :try_start_419
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_41f
    .catch Landroid/os/RemoteException; {:try_start_419 .. :try_end_41f} :catch_41f
    .catchall {:try_start_419 .. :try_end_41f} :catchall_476

    .line 1593
    :catch_41f
    move-exception v0

    goto :goto_42a

    .line 1593
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v34    # "task":Lcom/android/server/am/TaskRecord;
    .end local v35    # "applicationInfoUid":I
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v13    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "applicationInfoUid":I
    :catch_421
    move-exception v0

    move-object/from16 v34, v6

    move-object/from16 v33, v12

    move/from16 v35, v15

    move-object v6, v2

    move-object v2, v13

    .line 1594
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v13    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "applicationInfoUid":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v34    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v35    # "applicationInfoUid":I
    :goto_42a
    :try_start_42a
    iget-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v5, :cond_46b

    .line 1597
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Second failure launching "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1598
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", giving up"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1597
    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1600
    iget-object v5, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1601
    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "2nd-crash"

    const/4 v12, 0x0

    move-object v7, v2

    move-object/from16 v5, v33

    .line 1601
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .local v5, "lockTaskController":Lcom/android/server/am/LockTaskController;
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    :try_end_465
    .catchall {:try_start_42a .. :try_end_465} :catchall_476

    .line 1603
    nop

    .line 1613
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->endDeferResume()V

    .line 1603
    const/4 v7, 0x0

    return v7

    .line 1608
    .end local v5    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    :cond_46b
    move-object/from16 v5, v33

    .line 1608
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v5    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    const/4 v7, 0x1

    :try_start_46e
    iput-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1609
    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1610
    throw v0
    :try_end_476
    .catchall {:try_start_46e .. :try_end_476} :catchall_476

    .line 1613
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v16    # "idx":I
    .end local v35    # "applicationInfoUid":I
    :catchall_476
    move-exception v0

    goto :goto_47d

    .line 1613
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v34    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v13    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_478
    move-exception v0

    move-object/from16 v34, v6

    move-object v6, v2

    move-object v2, v13

    .line 1613
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v13    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v34    # "task":Lcom/android/server/am/TaskRecord;
    :goto_47d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->endDeferResume()V

    throw v0
.end method

.method releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3939
    const/4 v0, 0x0

    .line 3941
    .local v0, "firstTask":Lcom/android/server/am/TaskRecord;
    const/4 v1, 0x0

    .line 3942
    .local v1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v2, :cond_1c

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to release some activities in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3943
    :cond_1c
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "firstTask":Lcom/android/server/am/TaskRecord;
    :goto_1f
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_d0

    .line 3944
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3948
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_b5

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_3f

    goto/16 :goto_b5

    .line 3954
    :cond_3f
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v5, :cond_97

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v5, :cond_97

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v5, :cond_97

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3955
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_5a

    goto :goto_97

    .line 3960
    :cond_5a
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 3961
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_b1

    .line 3962
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v6, :cond_82

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Collecting release task "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    :cond_82
    if-nez v3, :cond_86

    .line 3965
    move-object v3, v5

    goto :goto_b1

    .line 3966
    :cond_86
    if-eq v3, v5, :cond_b1

    .line 3967
    if-nez v1, :cond_93

    .line 3968
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v6

    .line 3969
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3971
    :cond_93
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_b1

    .line 3956
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_97
    :goto_97
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v5, :cond_b1

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not releasing in-use activity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3943
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_b1
    :goto_b1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1f

    .line 3949
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_b5
    :goto_b5
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v2, :cond_cf

    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Abort release; already destroying: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    :cond_cf
    return-void

    .line 3975
    .end local v0    # "i":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_d0
    if-nez v1, :cond_de

    .line 3976
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v0, :cond_dd

    const-string v0, "ActivityManager"

    const-string v2, "Didn\'t find two or more tasks to release"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3977
    :cond_dd
    return-void

    .line 3981
    :cond_de
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3982
    .local v0, "numDisplays":I
    move v4, v2

    .local v4, "displayNdx":I
    :goto_e5
    if-ge v4, v0, :cond_107

    .line 3983
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityDisplay;

    .line 3984
    .local v5, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v6

    .line 3986
    .local v6, "stackCount":I
    move v7, v2

    .local v7, "stackNdx":I
    :goto_f4
    if-ge v7, v6, :cond_104

    .line 3987
    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 3989
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v8, p1, v1, p2}, Lcom/android/server/am/ActivityStack;->releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_101

    .line 3990
    return-void

    .line 3986
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_101
    add-int/lit8 v7, v7, 0x1

    goto :goto_f4

    .line 3982
    .end local v5    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v6    # "stackCount":I
    .end local v7    # "stackNdx":I
    :cond_104
    add-int/lit8 v4, v4, 0x1

    goto :goto_e5

    .line 3994
    .end local v4    # "displayNdx":I
    :cond_107
    return-void
.end method

.method removeSleepTimeouts()V
    .registers 3

    .line 4416
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 4417
    return-void
.end method

.method removeStack(Lcom/android/server/am/ActivityStack;)V
    .registers 4
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 3086
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$x0Vocp-itdO3YPTBM6d_k8Yij7g;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$x0Vocp-itdO3YPTBM6d_k8Yij7g;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 3087
    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .registers 4
    .param p1, "windowingModes"    # [I

    .line 3094
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 3095
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->removeStacksInWindowingModes([I)V

    .line 3094
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3097
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .registers 4
    .param p1, "activityTypes"    # [I

    .line 3100
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 3101
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->removeStacksWithActivityTypes([I)V

    .line 3100
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3103
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method removeTaskByIdLocked(IZZLjava/lang/String;)Z
    .registers 11
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 3110
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removeTaskByIdLocked(IZZZLjava/lang/String;)Z
    .registers 10
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z
    .param p4, "pauseImmediately"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 3126
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 3127
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_21

    .line 3128
    invoke-virtual {v1, p4, p5}, Lcom/android/server/am/TaskRecord;->removeTaskActivitiesLocked(ZLjava/lang/String;)V

    .line 3129
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3130
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 3131
    iget-boolean v2, v1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v2, :cond_20

    .line 3132
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 3134
    :cond_20
    return v0

    .line 3136
    :cond_21
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request to remove task ignored for non-existent task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    const/4 v0, 0x0

    return v0
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4404
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_20

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTimeoutsForActivity: Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    .line 4405
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4404
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4406
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4407
    return-void
.end method

.method removeUserLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2174
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2175
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .registers 13
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "thisTime"    # J
    .param p5, "totalTime"    # J

    .line 1219
    const/4 v0, 0x0

    .line 1220
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_32

    .line 1221
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WaitResult;

    .line 1222
    .local v2, "w":Landroid/app/WaitResult;
    iget-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_2f

    .line 1223
    const/4 v0, 0x1

    .line 1224
    iput-boolean p1, v2, Landroid/app/WaitResult;->timeout:Z

    .line 1225
    if-eqz p2, :cond_2b

    .line 1226
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1228
    :cond_2b
    iput-wide p3, v2, Landroid/app/WaitResult;->thisTime:J

    .line 1229
    iput-wide p5, v2, Landroid/app/WaitResult;->totalTime:J

    .line 1220
    .end local v2    # "w":Landroid/app/WaitResult;
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1233
    .end local v1    # "i":I
    :cond_32
    if-eqz v0, :cond_39

    .line 1234
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1236
    :cond_39
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1165
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1166
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 3811
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3813
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3814
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    .line 3815
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3817
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    .line 3818
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3819
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 3820
    return v2

    .line 3822
    :cond_26
    return v3
.end method

.method reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/am/ActivityRecord;I)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # I

    .line 1188
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1189
    return-void

    .line 1192
    :cond_9
    const/4 v0, 0x3

    if-eq p2, v0, :cond_10

    const/4 v1, 0x2

    if-eq p2, v1, :cond_10

    .line 1193
    return-void

    .line 1196
    :cond_10
    const/4 v1, 0x0

    .line 1198
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_33

    .line 1199
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WaitResult;

    .line 1200
    .local v3, "w":Landroid/app/WaitResult;
    iget-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v4, :cond_30

    .line 1201
    const/4 v1, 0x1

    .line 1202
    iput p2, v3, Landroid/app/WaitResult;->result:I

    .line 1206
    if-ne p2, v0, :cond_30

    .line 1207
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1198
    .end local v3    # "w":Landroid/app/WaitResult;
    :cond_30
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 1212
    .end local v2    # "i":I
    :cond_33
    if-eqz v1, :cond_3a

    .line 1213
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1215
    :cond_3a
    return-void
.end method

.method resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 15
    .param p1, "dockedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempDockedTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempDockedTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p4, "tempOtherTaskBounds"    # Landroid/graphics/Rect;
    .param p5, "tempOtherTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p6, "preserveWindows"    # Z

    .line 2916
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 2919
    return-void
.end method

.method resizePinnedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "pinnedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempPinnedTaskBounds"    # Landroid/graphics/Rect;

    .line 3009
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getPinnedStack()Lcom/android/server/am/PinnedActivityStack;

    move-result-object v0

    .line 3010
    .local v0, "stack":Lcom/android/server/am/PinnedActivityStack;
    if-nez v0, :cond_13

    .line 3011
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "resizePinnedStackLocked: pinned stack not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    return-void

    .line 3019
    :cond_13
    invoke-virtual {v0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PinnedStackWindowController;

    .line 3020
    .local v1, "stackController":Lcom/android/server/wm/PinnedStackWindowController;
    invoke-virtual {v1}, Lcom/android/server/wm/PinnedStackWindowController;->pinnedStackResizeDisallowed()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3021
    return-void

    .line 3024
    :cond_20
    const-string v2, "am.resizePinnedStack"

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3025
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 3027
    :try_start_2c
    invoke-virtual {v0}, Lcom/android/server/am/PinnedActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3028
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v5, 0x0

    .line 3029
    .local v5, "insetBounds":Landroid/graphics/Rect;
    const/4 v6, 0x0

    if-eqz p2, :cond_4d

    invoke-virtual {v0}, Lcom/android/server/am/PinnedActivityStack;->isAnimatingBoundsToFullscreen()Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 3031
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    move-object v5, v7

    .line 3032
    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3033
    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3034
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 3035
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 3037
    :cond_4d
    if-eqz p1, :cond_54

    if-nez p2, :cond_54

    .line 3041
    invoke-virtual {v0}, Lcom/android/server/am/PinnedActivityStack;->onPipAnimationEndResize()V

    .line 3043
    :cond_54
    invoke-virtual {v0, p1, p2, v5}, Lcom/android/server/am/PinnedActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3044
    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/PinnedActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_5a
    .catchall {:try_start_2c .. :try_end_5a} :catchall_64

    .line 3046
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "insetBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3047
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 3048
    nop

    .line 3049
    return-void

    .line 3046
    :catchall_64
    move-exception v2

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3047
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V
    .registers 19
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "tempTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "tempTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p5, "preserveWindows"    # Z
    .param p6, "allowResizeInDockedMode"    # Z
    .param p7, "deferResume"    # Z

    move-object v9, p0

    move-object v10, p1

    .line 2731
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2732
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v7, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 2734
    return-void

    .line 2737
    :cond_16
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v1

    .line 2738
    .local v1, "splitScreenActive":Z
    if-nez p6, :cond_2d

    .line 2739
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-nez v0, :cond_2d

    if-eqz v1, :cond_2d

    .line 2742
    return-void

    .line 2745
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "am.resizeStack_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2746
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2748
    :try_start_4a
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2749
    if-nez p2, :cond_5d

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 2751
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    goto :goto_63

    .line 2752
    :cond_5d
    if-eqz v1, :cond_63

    .line 2755
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 2758
    :cond_63
    :goto_63
    invoke-virtual {v10, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2759
    if-nez p7, :cond_75

    .line 2760
    nop

    .line 2761
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_6d
    .catchall {:try_start_4a .. :try_end_6d} :catchall_81

    .line 2760
    move/from16 v7, p5

    :try_start_6f
    invoke-virtual {v10, v0, v7}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_77

    .line 2764
    :catchall_73
    move-exception v0

    goto :goto_84

    :cond_75
    move/from16 v7, p5

    :goto_77
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2765
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2766
    nop

    .line 2767
    return-void

    .line 2764
    :catchall_81
    move-exception v0

    move/from16 v7, p5

    :goto_84
    iget-object v8, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2765
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;

    .line 1327
    if-eqz p2, :cond_5

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 1328
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_6
    if-eqz v0, :cond_5f

    .line 1333
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1337
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 1338
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_2e

    .line 1339
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1342
    :cond_2e
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_3b

    .line 1343
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setNativeDebuggingAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 1346
    :cond_3b
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_48

    .line 1347
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setTrackAllocationApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 1350
    :cond_48
    if-eqz p4, :cond_53

    .line 1351
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p4}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    .line 1354
    :cond_53
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchToken()Ljava/lang/String;

    move-result-object v1

    .line 1355
    .local v1, "intentLaunchToken":Ljava/lang/String;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-nez v2, :cond_5f

    if-eqz v1, :cond_5f

    .line 1356
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 1359
    .end local v1    # "intentLaunchToken":Ljava/lang/String;
    :cond_5f
    return-object v0
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "userId"    # I
    .param p6, "filterCallingUid"    # I

    .line 1394
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1395
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1
.end method

.method resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;

    .line 2436
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 2437
    .local v0, "activityType":I
    :goto_8
    if-nez v0, :cond_10

    if-eqz p3, :cond_10

    .line 2438
    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    .line 2440
    :cond_10
    if-eqz v0, :cond_13

    .line 2441
    return v0

    .line 2443
    :cond_13
    if-eqz p2, :cond_19

    .line 2444
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    .line 2446
    :cond_19
    if-eqz v0, :cond_1d

    move v1, v0

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x1

    :goto_1e
    return v1
.end method

.method resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
    .registers 21
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "filterCallingUid"    # I

    move-object v1, p0

    .line 1364
    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    const-wide/16 v3, 0x40

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1366
    const-string/jumbo v0, "resolveIntent"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1367
    const/high16 v0, 0x10000

    or-int v0, p4, v0

    or-int/lit16 v0, v0, 0x400

    .line 1369
    .local v0, "modifiedFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v5

    if-nez v5, :cond_23

    .line 1370
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_26

    .line 1371
    :cond_23
    const/high16 v5, 0x800000

    or-int/2addr v0, v5

    .line 1379
    .end local v0    # "modifiedFlags":I
    .local v12, "modifiedFlags":I
    :cond_26
    move v12, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_50

    move-wide v13, v5

    .line 1381
    .local v13, "token":J
    :try_start_2c
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    const/4 v10, 0x1

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move v8, v12

    move/from16 v9, p3

    move/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_4b

    .line 1384
    :try_start_40
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_50

    .line 1387
    :try_start_43
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_55

    .line 1381
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 1384
    :catchall_4b
    move-exception v0

    :try_start_4c
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    .line 1387
    .end local v12    # "modifiedFlags":I
    .end local v13    # "token":J
    :catchall_50
    move-exception v0

    :try_start_51
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1389
    :catchall_55
    move-exception v0

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_55

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "aOptions"    # Landroid/app/ActivityOptions;
    .param p3, "onTop"    # Z

    .line 3228
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3229
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3230
    .local v1, "currentStack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x1

    if-eqz v1, :cond_15

    .line 3232
    if-ne v1, v0, :cond_f

    .line 3234
    return v2

    .line 3238
    :cond_f
    const-string/jumbo v3, "restoreRecentTaskLocked"

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    .line 3241
    :cond_15
    const-string/jumbo v3, "restoreRecentTask"

    invoke-virtual {v0, p1, p3, v3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    .line 3243
    invoke-virtual {p1, p3, v2}, Lcom/android/server/am/TaskRecord;->createWindowContainer(ZZ)V

    .line 3244
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_40

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added restored task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    :cond_40
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3247
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .line 3247
    .local v4, "activityNdx":I
    :goto_47
    if-ltz v4, :cond_55

    .line 3248
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->createWindowContainer()V

    .line 3247
    add-int/lit8 v4, v4, -0x1

    goto :goto_47

    .line 3250
    .end local v4    # "activityNdx":I
    :cond_55
    return v2
.end method

.method resumeFocusedStackTopActivityLocked()Z
    .registers 2

    .line 2242
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 9
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/app/ActivityOptions;

    .line 2248
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2249
    return v1

    .line 2252
    :cond_8
    if-eqz p1, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2253
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    .line 2256
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2257
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_6d

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_6d

    .line 2259
    :cond_26
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 2261
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p3}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2265
    sget-boolean v2, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v2, :cond_73

    .line 2266
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_73

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLastResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2267
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 2268
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickReply: setFocusedTask to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "focusedNotQuickReply"

    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 2270
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v2}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    goto :goto_73

    .line 2258
    :cond_6d
    :goto_6d
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 2275
    :cond_73
    :goto_73
    return v1
.end method

.method resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 7
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 766
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v0, :cond_e

    .line 768
    const/4 v0, 0x0

    return v0

    .line 771
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop()V

    .line 772
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 773
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resumeHomeStackTask"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, "myReason":Ljava/lang/String;
    if-eqz v0, :cond_39

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_39

    .line 777
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 778
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    return v2

    .line 780
    :cond_39
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3928
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 3929
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3930
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 3931
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3932
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3930
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 3928
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3935
    .end local v0    # "displayNdx":I
    :cond_27
    return-void
.end method

.method final scheduleIdleLocked()V
    .registers 3

    .line 4400
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4401
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .line 4393
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_20

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleIdleTimeoutLocked: Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    .line 4394
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4393
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4395
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4396
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4397
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3854
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3855
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .registers 3

    .line 4410
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 4411
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4413
    :cond_f
    return-void
.end method

.method final scheduleSleepTimeout()V
    .registers 5

    .line 4420
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 4421
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4422
    return-void
.end method

.method scheduleUpdateMultiWindowMode(Lcom/android/server/am/TaskRecord;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 4740
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4741
    return-void

    .line 4744
    :cond_b
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_13
    if-ltz v0, :cond_2f

    .line 4745
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4746
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2c

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_2c

    .line 4747
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4744
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 4751
    .end local v0    # "i":I
    :cond_2f
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 4752
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4754
    :cond_3e
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "targetStackBounds"    # Landroid/graphics/Rect;

    .line 4767
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_29

    .line 4768
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4769
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_26

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_26

    .line 4770
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4774
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4767
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4777
    .end local v0    # "i":I
    :cond_29
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

    .line 4779
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 4780
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4782
    :cond_3a
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "prevStack"    # Lcom/android/server/am/ActivityStack;

    .line 4757
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4758
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p2, :cond_1d

    if-eq p2, v0, :cond_1d

    .line 4759
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1d

    .line 4763
    :cond_15
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    .line 4764
    return-void

    .line 4760
    :cond_1d
    :goto_1d
    return-void
.end method

.method sendPowerHintForLaunchEndIfNeeded()V
    .registers 4

    .line 1763
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerHintSent:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_16

    .line 1764
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1765
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerHintSent:Z

    .line 1767
    :cond_16
    return-void
.end method

.method sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V
    .registers 8
    .param p1, "forceSend"    # Z
    .param p2, "targetActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 1744
    move v0, p1

    .line 1746
    .local v0, "sendHint":Z
    const/4 v1, 0x1

    if-nez v0, :cond_1d

    .line 1749
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1750
    .local v2, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1b

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1b

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1752
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v3, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v3, v1

    :goto_1c
    move v0, v3

    .line 1755
    .end local v2    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_1d
    if-eqz v0, :cond_30

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v2, :cond_30

    .line 1756
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1757
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerHintSent:Z

    .line 1759
    :cond_30
    return-void
.end method

.method sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1169
    const/4 v0, 0x0

    .line 1170
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_3e

    .line 1171
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    .line 1172
    .local v2, "w":Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1173
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->getResult()Landroid/app/WaitResult;

    move-result-object v3

    .line 1174
    .local v3, "result":Landroid/app/WaitResult;
    const/4 v0, 0x1

    .line 1175
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/WaitResult;->timeout:Z

    .line 1176
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Landroid/app/WaitResult;->thisTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Landroid/app/WaitResult;->totalTime:J

    .line 1178
    iget-wide v4, v3, Landroid/app/WaitResult;->totalTime:J

    iput-wide v4, v3, Landroid/app/WaitResult;->thisTime:J

    .line 1179
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1170
    .end local v2    # "w":Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;
    .end local v3    # "result":Landroid/app/WaitResult;
    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1182
    .end local v1    # "i":I
    :cond_3e
    if-eqz v0, :cond_45

    .line 1183
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1185
    :cond_45
    return-void
.end method

.method setDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)V
    .registers 7
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I

    .line 488
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 489
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_a

    .line 493
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityDisplay;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 494
    return-void

    .line 490
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setDockedStackMinimized(Z)V
    .registers 4
    .param p1, "minimized"    # Z

    .line 4795
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    .line 4796
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    if-eqz v0, :cond_16

    .line 4797
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4798
    .local v0, "current":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4801
    const-string/jumbo v1, "setDockedStackMinimized"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    .line 4804
    .end local v0    # "current":Lcom/android/server/am/ActivityStack;
    :cond_16
    return-void
.end method

.method setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "focusCandidate"    # Lcom/android/server/am/ActivityStack;

    .line 719
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 721
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextFocusableStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    move-result-object p2

    .line 724
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq p2, v0, :cond_32

    .line 725
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 726
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 728
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 729
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, -0x1

    if-nez v1, :cond_1e

    .line 730
    move v1, v2

    goto :goto_24

    .line 729
    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 730
    :goto_24
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v3, :cond_29

    goto :goto_2f

    :cond_29
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v2

    .line 728
    :goto_2f
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/am/EventLogTags;->writeAmFocusedStack(IIILjava/lang/String;)V

    .line 733
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 734
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v1, :cond_4b

    .line 735
    :cond_42
    if-eqz v0, :cond_4b

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-eqz v1, :cond_4b

    .line 736
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    .line 739
    :cond_4b
    return-void
.end method

.method setLaunchSource(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 2001
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2002
    return-void
.end method

.method setNextTaskIdForUserLocked(II)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 930
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 931
    .local v0, "currentTaskId":I
    if-le p1, v0, :cond_e

    .line 932
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 934
    :cond_e
    return-void
.end method

.method setRecentTasks(Lcom/android/server/am/RecentTasks;)V
    .registers 3
    .param p1, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    .line 653
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 654
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v0, p0}, Lcom/android/server/am/RecentTasks;->registerCallback(Lcom/android/server/am/RecentTasks$Callbacks;)V

    .line 655
    return-void
.end method

.method setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 4945
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4946
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->setTaskDockedResizing(Z)V

    .line 4947
    return-void
.end method

.method setSplitScreenResizing(Z)V
    .registers 10
    .param p1, "resizing"    # Z

    .line 2892
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-ne p1, v0, :cond_5

    .line 2893
    return-void

    .line 2896
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDockedStackResizing:Z

    .line 2897
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setDockedStackResizing(Z)V

    .line 2899
    if-nez p1, :cond_2f

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    if-eqz v0, :cond_2f

    .line 2900
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 2904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    .line 2905
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    .line 2906
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    .line 2907
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    .line 2908
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    .line 2909
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    .line 2911
    :cond_2f
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 10
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 675
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 676
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 677
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/KeyguardController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 679
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "display"

    .line 680
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 681
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 682
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 684
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    .line 685
    .local v1, "displays":[Landroid/view/Display;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "displayNdx":I
    :goto_36
    if-ltz v2, :cond_4e

    .line 686
    aget-object v4, v1, v2

    .line 687
    .local v4, "display":Landroid/view/Display;
    new-instance v5, Lcom/android/server/am/ActivityDisplay;

    invoke-direct {v5, p0, v4}, Lcom/android/server/am/ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/view/Display;)V

    .line 688
    .local v5, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 689
    invoke-direct {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityDisplay;)V

    .line 685
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    .line 692
    .end local v2    # "displayNdx":I
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v3}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 694
    .end local v1    # "displays":[Landroid/view/Display;
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_62

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 695
    return-void

    .line 694
    :catchall_62
    move-exception v1

    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method shutdownLocked(I)Z
    .registers 9
    .param p1, "timeout"    # I

    .line 3678
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 3680
    const/4 v0, 0x0

    .line 3681
    .local v0, "timedout":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 3683
    .local v1, "endTime":J
    :goto_a
    const/4 v3, 0x1

    invoke-direct {p0, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->putStacksToSleepLocked(ZZ)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 3684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 3685
    .local v3, "timeRemaining":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_26

    .line 3687
    :try_start_1d
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_22} :catch_23

    goto :goto_24

    .line 3688
    :catch_23
    move-exception v5

    .line 3689
    .end local v3    # "timeRemaining":J
    :goto_24
    nop

    .line 3695
    goto :goto_a

    .line 3691
    .restart local v3    # "timeRemaining":J
    :cond_26
    const-string v5, "ActivityManager"

    const-string v6, "Activity manager shutdown timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    const/4 v0, 0x1

    .line 3693
    nop

    .line 3701
    .end local v3    # "timeRemaining":J
    :cond_2f
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 3703
    return v0
.end method

.method startActivityFromRecents(IIILcom/android/server/am/SafeActivityOptions;)I
    .registers 31
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "taskId"    # I
    .param p4, "options"    # Lcom/android/server/am/SafeActivityOptions;

    move-object/from16 v1, p0

    move/from16 v2, p3

    .line 4951
    move-object/from16 v14, p4

    const/4 v3, 0x0

    .line 4955
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    const/4 v0, 0x0

    .line 4956
    .local v0, "activityType":I
    const/4 v4, 0x0

    .line 4957
    .local v4, "windowingMode":I
    const/4 v5, 0x0

    if-eqz v14, :cond_11

    .line 4958
    invoke-virtual {v14, v1}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_12

    .line 4959
    :cond_11
    move-object v6, v5

    :goto_12
    move-object v13, v6

    .line 4960
    .local v13, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v13, :cond_1d

    .line 4961
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    .line 4962
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v4

    .line 4964
    .end local v0    # "activityType":I
    .end local v4    # "windowingMode":I
    .local v11, "windowingMode":I
    .local v12, "activityType":I
    :cond_1d
    move v12, v0

    move v11, v4

    const/4 v4, 0x2

    if-eq v12, v4, :cond_1e0

    const/4 v10, 0x3

    if-eq v12, v10, :cond_1e0

    .line 4970
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_30

    .line 4971
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 4973
    :cond_30
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/4 v6, 0x1

    if-eqz v0, :cond_40

    .line 4974
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v7, 0x1081

    const-string v8, ""

    const/16 v9, 0x3e8

    invoke-virtual {v0, v7, v8, v9, v6}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 4977
    :cond_40
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 4979
    const/4 v9, 0x4

    const/4 v8, 0x0

    if-ne v11, v10, :cond_69

    .line 4980
    :try_start_49
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 4981
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getSplitScreenCreateMode()I

    move-result v7

    .line 4980
    invoke-virtual {v0, v7, v5}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    .line 4986
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->deferUpdateRecentsHomeStackBounds()V

    .line 4987
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x13

    invoke-virtual {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V
    :try_end_5c
    .catchall {:try_start_49 .. :try_end_5c} :catchall_5d

    goto :goto_69

    .line 5036
    :catchall_5d
    move-exception v0

    move-object v6, v3

    .line 5036
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v11    # "windowingMode":I
    .end local v12    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    .local v19, "activityOptions":Landroid/app/ActivityOptions;
    .local v25, "activityType":I
    :goto_5f
    move v5, v10

    move v4, v11

    move/from16 v25, v12

    move-object/from16 v19, v13

    move v10, v8

    move v8, v9

    goto/16 :goto_1b5

    .line 4990
    .end local v4    # "windowingMode":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v25    # "activityType":I
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "windowingMode":I
    .restart local v12    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_69
    :goto_69
    :try_start_69
    invoke-virtual {v1, v2, v4, v13, v6}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v0
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_1ab

    move-object v5, v0

    .line 4992
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_17b

    .line 4999
    if-eq v11, v10, :cond_7c

    .line 5003
    :try_start_72
    const-string/jumbo v0, "startActivityFromRecents"

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_79

    goto :goto_7c

    .line 5036
    :catchall_79
    move-exception v0

    move-object v6, v5

    goto :goto_5f

    .line 5008
    :cond_7c
    :goto_7c
    :try_start_7c
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v3, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v3}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    move-result v0
    :try_end_86
    .catchall {:try_start_7c .. :try_end_86} :catchall_170

    if-nez v0, :cond_ec

    .line 5009
    :try_start_88
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_ec

    .line 5010
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    move-object v3, v0

    .line 5012
    .local v3, "targetActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1, v6, v3}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 5013
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V
    :try_end_9b
    .catchall {:try_start_88 .. :try_end_9b} :catchall_79

    .line 5015
    :try_start_9b
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v7, v8, v14, v6}, Lcom/android/server/am/ActivityManagerService;->moveTaskToFrontLocked(IILcom/android/server/am/SafeActivityOptions;Z)V
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_e5

    .line 5018
    :try_start_a2
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v0, v4, v3}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    .line 5020
    nop

    .line 5022
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v0

    .line 5023
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 5024
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 5022
    invoke-virtual {v0, v6, v4, v7}, Lcom/android/server/am/ActivityStartController;->postStartActivityProcessingForLastStarter(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    :try_end_b9
    .catchall {:try_start_a2 .. :try_end_b9} :catchall_79

    .line 5025
    nop

    .line 5036
    if-ne v11, v10, :cond_df

    if-eqz v5, :cond_df

    .line 5040
    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    .line 5042
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 5043
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    nop

    .line 5044
    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 5045
    .local v6, "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v7

    if-eqz v7, :cond_df

    .line 5051
    const-string/jumbo v7, "startActivityFromRecents: homeVisibleInSplitScreen"

    invoke-virtual {v1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5056
    iget-object v7, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 5059
    .end local v0    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v6    # "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    :cond_df
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5025
    return v4

    .line 5018
    :catchall_e5
    move-exception v0

    :try_start_e6
    iget-object v6, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v6, v4, v3}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    throw v0
    :try_end_ec
    .catchall {:try_start_e6 .. :try_end_ec} :catchall_79

    .line 5027
    .end local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :cond_ec
    :try_start_ec
    iget-object v7, v5, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 5028
    .local v7, "callingPackage":Ljava/lang/String;
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 5029
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x100000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5030
    iget v15, v5, Lcom/android/server/am/TaskRecord;->userId:I

    .line 5031
    .local v15, "userId":I
    iget-object v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v3

    iget v4, v5, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string/jumbo v21, "startActivityFromRecents"
    :try_end_10c
    .catchall {:try_start_ec .. :try_end_10c} :catchall_170

    const/16 v22, 0x0

    move-object v6, v5

    move/from16 v5, p1

    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v23, v6

    move/from16 v6, p2

    .line 5031
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .local v23, "task":Lcom/android/server/am/TaskRecord;
    move-object v8, v0

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move/from16 v24, v11

    move-object/from16 v11, v18

    .line 5031
    .end local v11    # "windowingMode":I
    .local v24, "windowingMode":I
    move/from16 v25, v12

    move/from16 v12, v19

    .line 5031
    .end local v12    # "activityType":I
    .restart local v25    # "activityType":I
    move-object/from16 v19, v13

    move/from16 v13, v20

    .line 5031
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v19    # "activityOptions":Landroid/app/ActivityOptions;
    move-object/from16 v14, p4

    move-object/from16 v16, v23

    move-object/from16 v17, v21

    move/from16 v18, v22

    :try_start_12e
    invoke-virtual/range {v3 .. v18}, Lcom/android/server/am/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v3
    :try_end_132
    .catchall {:try_start_12e .. :try_end_132} :catchall_167

    .line 5036
    move/from16 v4, v24

    const/4 v5, 0x3

    if-ne v4, v5, :cond_15f

    .line 5036
    .end local v24    # "windowingMode":I
    .restart local v4    # "windowingMode":I
    move-object/from16 v6, v23

    if-eqz v6, :cond_161

    .line 5040
    .end local v23    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    .line 5042
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v5

    .line 5043
    .local v5, "display":Lcom/android/server/am/ActivityDisplay;
    nop

    .line 5044
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 5045
    .local v8, "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v9

    if-eqz v9, :cond_161

    .line 5051
    const-string/jumbo v9, "startActivityFromRecents: homeVisibleInSplitScreen"

    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5056
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 5056
    .end local v5    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v8    # "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    goto :goto_161

    .line 5059
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v23    # "task":Lcom/android/server/am/TaskRecord;
    :cond_15f
    move-object/from16 v6, v23

    .line 5059
    .end local v23    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_161
    :goto_161
    iget-object v5, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5031
    return v3

    .line 5036
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "windowingMode":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v15    # "userId":I
    .restart local v23    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v24    # "windowingMode":I
    :catchall_167
    move-exception v0

    move-object/from16 v6, v23

    move/from16 v4, v24

    const/4 v5, 0x3

    const/4 v8, 0x4

    const/4 v10, 0x0

    .line 5036
    .end local v23    # "task":Lcom/android/server/am/TaskRecord;
    .end local v24    # "windowingMode":I
    .restart local v4    # "windowingMode":I
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_1b5

    .line 5036
    .end local v4    # "windowingMode":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v25    # "activityType":I
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "windowingMode":I
    .restart local v12    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_170
    move-exception v0

    move-object v6, v5

    move v5, v10

    move v4, v11

    move/from16 v25, v12

    move-object/from16 v19, v13

    move v10, v8

    move v8, v9

    .line 5036
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v11    # "windowingMode":I
    .end local v12    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v25    # "activityType":I
    goto :goto_1b5

    .line 4993
    .end local v4    # "windowingMode":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v25    # "activityType":I
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "windowingMode":I
    .restart local v12    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_17b
    move-object v6, v5

    move v5, v10

    move v4, v11

    move/from16 v25, v12

    move-object/from16 v19, v13

    move v10, v8

    move v8, v9

    .line 4993
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v11    # "windowingMode":I
    .end local v12    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v25    # "activityType":I
    :try_start_184
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateRecentsHomeStackBounds()V

    .line 4994
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 4995
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startActivityFromRecents: Task "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " not found."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a9
    .catchall {:try_start_184 .. :try_end_1a9} :catchall_1a9

    .line 5036
    :catchall_1a9
    move-exception v0

    goto :goto_1b5

    .line 5036
    .end local v4    # "windowingMode":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v25    # "activityType":I
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "windowingMode":I
    .restart local v12    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_1ab
    move-exception v0

    move v5, v10

    move v4, v11

    move/from16 v25, v12

    move-object/from16 v19, v13

    move v10, v8

    move v8, v9

    move-object v6, v3

    .line 5036
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v11    # "windowingMode":I
    .end local v12    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v25    # "activityType":I
    :goto_1b5
    if-ne v4, v5, :cond_1da

    if-eqz v6, :cond_1da

    .line 5040
    invoke-virtual {v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    .line 5042
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    .line 5043
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    nop

    .line 5044
    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 5045
    .local v5, "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v7

    if-eqz v7, :cond_1da

    .line 5051
    const-string/jumbo v7, "startActivityFromRecents: homeVisibleInSplitScreen"

    invoke-virtual {v1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5056
    iget-object v7, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v10}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 5059
    .end local v3    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v5    # "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    :cond_1da
    iget-object v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    .line 4965
    .end local v4    # "windowingMode":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v25    # "activityType":I
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "windowingMode":I
    .restart local v12    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_1e0
    move v4, v11

    move/from16 v25, v12

    move-object/from16 v19, v13

    .line 4965
    .end local v11    # "windowingMode":I
    .end local v12    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .restart local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v25    # "activityType":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startActivityFromRecents: Task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " can\'t be launch in the home/recents stack."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 22
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1712
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 1715
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchTimeTracker()Lcom/android/server/am/LaunchTimeTracker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/LaunchTimeTracker;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 1717
    if-eqz v3, :cond_74

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_74

    .line 1719
    :try_start_20
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_33

    const-string v0, "android"

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1720
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 1725
    :cond_33
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v6, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_44} :catch_4e

    .line 1728
    :cond_44
    move/from16 v4, p2

    move/from16 v5, p3

    :try_start_48
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 1729
    return-void

    .line 1730
    :catch_4c
    move-exception v0

    goto :goto_53

    :catch_4e
    move-exception v0

    move/from16 v4, p2

    move/from16 v5, p3

    .line 1731
    .local v0, "e":Landroid/os/RemoteException;
    :goto_53
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when starting activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1732
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1731
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_78

    .line 1739
    :cond_74
    move/from16 v4, p2

    move/from16 v5, p3

    :goto_78
    iget-object v8, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v13, "activity"

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1740
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 1739
    invoke-virtual/range {v8 .. v17}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    .line 1741
    return-void
.end method

.method switchUserLocked(ILcom/android/server/am/UserState;)Z
    .registers 12
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 3997
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    .line 3999
    .local v0, "focusStackId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 4000
    .local v1, "dockedStack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    .line 4001
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v4, v1, :cond_18

    move v4, v3

    goto :goto_19

    :cond_18
    move v4, v2

    :goto_19
    invoke-virtual {p0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 4006
    :cond_1c
    new-array v4, v3, [I

    const/4 v5, 0x2

    aput v5, v4, v2

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeStacksInWindowingModes([I)V

    .line 4008
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 4009
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 4010
    .local v2, "restoreStackId":I
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 4012
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4013
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 4013
    .local v4, "displayNdx":I
    :goto_43
    if-ltz v4, :cond_6a

    .line 4014
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityDisplay;

    .line 4015
    .local v5, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v3

    .line 4015
    .local v6, "stackNdx":I
    :goto_52
    if-ltz v6, :cond_67

    .line 4016
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 4017
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v7, p1}, Lcom/android/server/am/ActivityStack;->switchUserLocked(I)V

    .line 4018
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 4019
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_64

    .line 4020
    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 4015
    .end local v7    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_64
    add-int/lit8 v6, v6, -0x1

    goto :goto_52

    .line 4013
    .end local v5    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v6    # "stackNdx":I
    :cond_67
    add-int/lit8 v4, v4, -0x1

    goto :goto_43

    .line 4025
    .end local v4    # "displayNdx":I
    :cond_6a
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4026
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_72

    .line 4027
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 4029
    :cond_72
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    .line 4030
    .local v4, "homeInFront":Z
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v5

    if-eqz v5, :cond_83

    .line 4031
    const-string/jumbo v5, "switchUserOnHomeDisplay"

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_8a

    .line 4034
    :cond_83
    const/4 v5, 0x0

    const-string/jumbo v6, "switchUserOnOtherDisplay"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 4036
    :goto_8a
    return v4
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .line 1239
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;
    .registers 10
    .param p1, "considerKeyguardState"    # Z

    .line 1251
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1252
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1253
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_f

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isValidTopRunningActivity(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1254
    return-object v1

    .line 1258
    :cond_f
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    .line 1260
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1e
    if-ltz v2, :cond_51

    .line 1261
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1262
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityDisplay;

    .line 1266
    .local v4, "display":Lcom/android/server/am/ActivityDisplay;
    if-nez v4, :cond_31

    .line 1267
    goto :goto_4e

    .line 1272
    :cond_31
    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 1275
    .local v5, "topStack":Lcom/android/server/am/ActivityStack;
    if-eqz v5, :cond_4e

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_4e

    if-ne v5, v0, :cond_40

    .line 1276
    goto :goto_4e

    .line 1279
    :cond_40
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 1282
    .local v6, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-nez v6, :cond_47

    .line 1283
    goto :goto_4e

    .line 1290
    :cond_47
    invoke-direct {p0, v6, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isValidTopRunningActivity(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 1291
    return-object v6

    .line 1260
    .end local v3    # "displayId":I
    .end local v4    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v5    # "topStack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 1295
    .end local v2    # "i":I
    :cond_51
    const/4 v2, 0x0

    return-object v2
.end method

.method updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2279
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 2280
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 2281
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 2282
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2283
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2281
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 2279
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2286
    .end local v0    # "displayNdx":I
    :cond_27
    return-void
.end method

.method updatePictureInPictureMode(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;Z)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "targetStackBounds"    # Landroid/graphics/Rect;
    .param p3, "forceUpdate"    # Z

    .line 4785
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 4786
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_29

    .line 4787
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4788
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_26

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_26

    .line 4789
    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    .line 4786
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 4792
    .end local v0    # "i":I
    :cond_29
    return-void
.end method

.method updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2214
    const/4 v0, 0x0

    .line 2215
    .local v0, "fgApp":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_3d

    .line 2216
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 2217
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_3a

    .line 2218
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2219
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 2220
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2221
    .local v5, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_2e

    .line 2222
    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_3a

    .line 2223
    :cond_2e
    iget-object v6, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_3a

    .line 2224
    iget-object v6, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_3a

    .line 2217
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_37
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 2215
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2233
    .end local v1    # "displayNdx":I
    :cond_3d
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_65

    if-eqz v0, :cond_65

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v1, v0, :cond_65

    iget-wide v1, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_65

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v1, v2, :cond_65

    .line 2236
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 2237
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .line 2239
    :cond_65
    return-void
.end method

.method updateUIDsPresentOnDisplay()V
    .registers 6

    .line 1910
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1911
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_d
    if-ltz v0, :cond_2b

    .line 1912
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 1914
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1915
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    .line 1916
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getPresentUIDs()Landroid/util/IntArray;

    move-result-object v4

    .line 1915
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1911
    .end local v1    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1920
    .end local v0    # "displayNdx":I
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayAccessUIDs(Landroid/util/SparseArray;)V

    .line 1921
    return-void
.end method

.method updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 2182
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-eq p1, v0, :cond_14

    .line 2183
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    goto :goto_11

    :cond_d
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    :goto_11
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2185
    :cond_14
    return-void
.end method

.method validateTopActivitiesLocked()V
    .registers 11

    .line 4113
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4113
    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_f1

    .line 4114
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4115
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 4115
    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_ed

    .line 4116
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4117
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4118
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v4, :cond_27

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2b

    :cond_27
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v5

    .line 4119
    .local v5, "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :goto_2b
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 4120
    if-nez v4, :cond_4c

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateTop...: null top activity, stack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e9

    .line 4123
    :cond_4c
    iget-object v6, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 4124
    .local v6, "pausing":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_71

    if-ne v6, v4, :cond_71

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validateTop...: top stack has pausing activity r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4127
    :cond_71
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v7, :cond_98

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v7, :cond_98

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validateTop...: activity in front not resumed r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    .end local v6    # "pausing":Lcom/android/server/am/ActivityRecord;
    :cond_98
    goto :goto_e9

    .line 4132
    :cond_99
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 4133
    .local v6, "resumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_c0

    if-ne v6, v4, :cond_c0

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validateTop...: back stack has resumed activity r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    :cond_c0
    if-eqz v4, :cond_e9

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v7, :cond_ca

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_e9

    :cond_ca
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validateTop...: activity in back resumed r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4115
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v6    # "resumed":Lcom/android/server/am/ActivityRecord;
    :cond_e9
    :goto_e9
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_18

    .line 4113
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_ed
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 4141
    .end local v0    # "displayNdx":I
    :cond_f1
    return-void
.end method

.method waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/app/WaitResult;

    .line 1146
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;-><init>(Landroid/content/ComponentName;Landroid/app/WaitResult;)V

    .line 1147
    .local v0, "waitInfo":Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    return-void
.end method

.method wakeUp(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;

    .line 4807
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.server.am:TURN_ON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 4808
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 4176
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4177
    .local v0, "token":J
    const/4 v2, 0x0

    const-wide v3, 0x10b00000001L

    invoke-super {p0, p1, v3, v4, v2}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 4178
    nop

    .local v2, "displayNdx":I
    :goto_e
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 4179
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityDisplay;

    .line 4180
    .local v3, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    const-wide v4, 0x20b00000002L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/ActivityDisplay;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4178
    .end local v3    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 4182
    .end local v2    # "displayNdx":I
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v2

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/KeyguardController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4183
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    const-wide v3, 0x10500000004L

    if-eqz v2, :cond_54

    .line 4184
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4185
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4186
    .local v2, "focusedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_53

    .line 4187
    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4189
    .end local v2    # "focusedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_53
    goto :goto_58

    .line 4190
    :cond_54
    const/4 v2, -0x1

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4192
    :goto_58
    const-wide v2, 0x10800000006L

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 4193
    invoke-virtual {v4, v5}, Lcom/android/server/am/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v4

    .line 4192
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4194
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4195
    return-void
.end method
