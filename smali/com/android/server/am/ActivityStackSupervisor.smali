.class public Lcom/android/server/am/ActivityStackSupervisor;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/server/am/RecentTasks$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;,
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

.field public static mIsPerfBoostAcquired:Z

.field public static mPerfHandle:I

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

.field mPrivacyGuardPackageName:Ljava/lang/String;

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
    .locals 3

    .line 225
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 226
    sput-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    .line 227
    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfHandle:I

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
    .locals 2

    .line 620
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 228
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 229
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

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

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPrivacyGuardPackageName:Ljava/lang/String;

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    .line 434
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 438
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    .line 440
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 451
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    .line 452
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 456
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    .line 463
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    .line 547
    new-instance v1, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    invoke-direct {v1}, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    .line 554
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    .line 565
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    .line 574
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 621
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 622
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    .line 623
    new-instance p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 624
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayAdded(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayRemoved(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTokenLocked(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V

    return-void
.end method

.method private allResumedActivitiesVisible()Z
    .locals 7

    .line 1060
    nop

    .line 1061
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_4

    .line 1062
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityDisplay;

    .line 1063
    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v1

    :goto_1
    if-ltz v5, :cond_3

    .line 1064
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 1065
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 1066
    if-eqz v6, :cond_2

    .line 1067
    iget-boolean v3, v6, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 1070
    :cond_0
    nop

    .line 1063
    move v3, v1

    goto :goto_3

    .line 1068
    :cond_1
    :goto_2
    return v2

    .line 1063
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1061
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1074
    :cond_4
    return v3
.end method

.method private beginDeferResume()V
    .locals 1

    .line 4721
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 4722
    return-void
.end method

.method private calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityDisplay;)V
    .locals 1

    .line 4417
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 4418
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x105007c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 4420
    return-void
.end method

.method private canLaunchOnDisplay(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 0

    .line 2539
    if-nez p1, :cond_0

    .line 2540
    const/4 p1, 0x1

    return p1

    .line 2542
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result p1

    return p1
.end method

.method private checkFinishBootingLocked()Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .line 2015
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 2016
    nop

    .line 2017
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 2018
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 2019
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v3, v1, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 2020
    nop

    .line 2022
    move v2, v3

    :cond_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    .line 2023
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService;->postFinishBooting(ZZ)V

    .line 2025
    :cond_2
    return v0
.end method

.method private displayConfigMatchesGlobal(I)Z
    .locals 3

    .line 530
    if-nez p1, :cond_0

    .line 531
    const/4 p1, 0x1

    return p1

    .line 533
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 534
    const/4 p1, 0x0

    return p1

    .line 536
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_2

    .line 540
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result p1

    return p1

    .line 538
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No display found with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z
    .locals 17
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

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p8

    .line 4239
    nop

    .line 4240
    nop

    .line 4241
    nop

    .line 4242
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    const/4 v7, 0x0

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move v8, v0

    move v0, v7

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ltz v8, :cond_d

    .line 4243
    move-object/from16 v14, p2

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityRecord;

    .line 4244
    if-eqz v4, :cond_0

    iget-object v5, v15, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4245
    nop

    .line 4242
    move-object/from16 v15, p0

    move-object/from16 v6, p4

    goto/16 :goto_b

    .line 4247
    :cond_0
    if-nez v9, :cond_1

    .line 4248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "      "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4249
    new-array v13, v7, [Ljava/lang/String;

    .line 4251
    :cond_1
    nop

    .line 4252
    if-nez p6, :cond_3

    if-nez p5, :cond_2

    invoke-virtual {v15}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4253
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 4252
    :cond_3
    nop

    .line 4253
    move v0, v7

    :goto_1
    if-eqz v10, :cond_4

    .line 4254
    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4255
    nop

    .line 4257
    move v10, v7

    :cond_4
    if-eqz v11, :cond_5

    .line 4258
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4259
    nop

    .line 4261
    const/4 v11, 0x0

    :cond_5
    invoke-virtual {v15}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eq v12, v6, :cond_8

    .line 4262
    invoke-virtual {v15}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v12

    .line 4263
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4264
    if-eqz v0, :cond_6

    const-string v6, "* "

    goto :goto_2

    :cond_6
    const-string v6, "  "

    :goto_2
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4265
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4266
    if-eqz v0, :cond_7

    .line 4267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v1, v6}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    .line 4268
    :cond_7
    if-eqz p5, :cond_8

    .line 4270
    iget-object v6, v12, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_8

    .line 4271
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4272
    iget-object v6, v12, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4276
    :cond_8
    :goto_3
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_9

    const-string v6, "  * "

    goto :goto_4

    :cond_9
    const-string v6, "    "

    :goto_4
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4277
    const-string v7, " #"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4278
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4279
    if-eqz v0, :cond_a

    .line 4280
    invoke-virtual {v15, v1, v9}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_5

    .line 4281
    :cond_a
    if-eqz p5, :cond_b

    .line 4283
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4284
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_b

    .line 4285
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4288
    :cond_b
    :goto_5
    if-eqz p7, :cond_c

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_c

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_c

    .line 4291
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 4293
    :try_start_0
    new-instance v10, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v10}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4295
    :try_start_1
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iget-object v15, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v2, v15, v9, v13}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4298
    const-wide/16 v2, 0x7d0

    move-object/from16 v15, p0

    :try_start_2
    invoke-virtual {v10, v15, v2, v3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4300
    :try_start_3
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 4301
    goto :goto_9

    .line 4300
    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v15, p0

    :goto_6
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4304
    :catch_0
    move-exception v0

    goto :goto_7

    .line 4302
    :catch_1
    move-exception v0

    goto :goto_8

    .line 4304
    :catch_2
    move-exception v0

    move-object/from16 v15, p0

    .line 4305
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Got a RemoteException while dumping the activity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 4302
    :catch_3
    move-exception v0

    move-object/from16 v15, p0

    .line 4303
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failure while dumping the activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4306
    :goto_9
    nop

    .line 4307
    :goto_a
    nop

    .line 4242
    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_b

    :cond_c
    move-object/from16 v15, p0

    const/4 v0, 0x1

    :goto_b
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v2, p3

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 4310
    :cond_d
    return v0
.end method

.method private endDeferResume()V
    .locals 1

    .line 4728
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 4729
    return-void
.end method

.method private getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 3

    .line 1955
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1956
    return v0

    .line 1959
    :cond_0
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1960
    if-nez p1, :cond_1

    .line 1961
    return v0

    .line 1966
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x1000

    .line 1967
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1971
    nop

    .line 1973
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1974
    return v0

    .line 1977
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_3

    .line 1978
    const/4 p1, 0x1

    return p1

    .line 1981
    :cond_3
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p1

    .line 1982
    if-ne p1, v1, :cond_4

    .line 1983
    return v0

    .line 1986
    :cond_4
    iget-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {p3, p1, p4, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    .line 1988
    const/4 p1, 0x2

    return p1

    .line 1991
    :cond_5
    return v0

    .line 1968
    :catch_0
    move-exception p1

    .line 1969
    const-string p1, "ActivityManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot find package info for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    return v0
.end method

.method private getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I
    .locals 7

    .line 1928
    const/4 v0, -0x1

    if-nez p5, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p3

    if-ne p3, v0, :cond_0

    .line 1931
    const/4 p1, 0x1

    return p1

    .line 1934
    :cond_0
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p3, :cond_1

    .line 1935
    return v1

    .line 1938
    :cond_1
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p1

    .line 1939
    if-ne p1, v0, :cond_2

    .line 1940
    return v1

    .line 1943
    :cond_2
    iget-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {p3, p1, p4, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 1945
    if-nez p5, :cond_3

    .line 1946
    const/4 p1, 0x2

    return p1

    .line 1950
    :cond_3
    return v1
.end method

.method private getStack(II)Lcom/android/server/am/ActivityStack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(II)TT;"
        }
    .end annotation

    .line 2401
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2402
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2403
    if-eqz v1, :cond_0

    .line 2404
    return-object v1

    .line 2401
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2407
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .locals 10

    .line 4502
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 4503
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4504
    new-instance v2, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 4505
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityStack;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    .line 4506
    iput v0, v2, Landroid/app/ActivityManager$StackInfo;->displayId:I

    .line 4507
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iput v0, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 4508
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    iput v0, v2, Landroid/app/ActivityManager$StackInfo;->userId:I

    .line 4509
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    iput-boolean v3, v2, Landroid/app/ActivityManager$StackInfo;->visible:Z

    .line 4511
    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput v1, v2, Landroid/app/ActivityManager$StackInfo;->position:I

    .line 4512
    iget-object v1, v2, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4514
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 4515
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4516
    new-array v5, v4, [I

    .line 4517
    new-array v6, v4, [Ljava/lang/String;

    .line 4518
    new-array v7, v4, [I

    .line 4519
    :goto_1
    if-ge v3, v4, :cond_4

    .line 4520
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 4521
    iget v9, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    aput v9, v5, v3

    .line 4522
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v9, :cond_1

    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 4523
    :cond_1
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v9, :cond_2

    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 4524
    :cond_2
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_2

    .line 4525
    :cond_3
    const-string/jumbo v9, "unknown"

    :goto_2
    aput-object v9, v6, v3

    .line 4526
    iget v8, v8, Lcom/android/server/am/TaskRecord;->userId:I

    aput v8, v7, v3

    .line 4519
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4528
    :cond_4
    iput-object v5, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    .line 4529
    iput-object v6, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    .line 4530
    iput-object v7, v2, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    .line 4532
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 4533
    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    nop

    :cond_5
    iput-object v0, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 4534
    return-object v2
.end method

.method private handleDisplayAdded(I)V
    .locals 1

    .line 4364
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4365
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    .line 4366
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4367
    return-void

    .line 4366
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private handleDisplayChanged(I)V
    .locals 4

    .line 4442
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4443
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4445
    if-eqz v1, :cond_2

    .line 4447
    if-eqz p1, :cond_1

    .line 4448
    iget-object v2, v1, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    .line 4449
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v3, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v3, :cond_0

    .line 4450
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "Display-off"

    .line 4451
    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/ActivityManagerService;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0

    .line 4452
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v2, :cond_1

    .line 4454
    iget-object v2, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 4455
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 4459
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->updateBounds()V

    .line 4461
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayChanged(I)V

    .line 4462
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4463
    return-void

    .line 4462
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private handleDisplayRemoved(I)V
    .locals 2

    .line 4423
    if-eqz p1, :cond_1

    .line 4427
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4428
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4429
    if-nez v1, :cond_0

    .line 4430
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4433
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->remove()V

    .line 4435
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->releaseSleepTokens(Lcom/android/server/am/ActivityDisplay;)V

    .line 4437
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4438
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4439
    return-void

    .line 4438
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 4424
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t remove the primary display."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4

    .line 3754
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3755
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3757
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 3758
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v3, v0}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 3759
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 3760
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 3764
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 3765
    if-eqz p1, :cond_0

    .line 3766
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 3768
    :cond_0
    return-void
.end method

.method private isValidLaunchStack(Lcom/android/server/am/ActivityStack;ILcom/android/server/am/ActivityRecord;)Z
    .locals 1

    .line 2583
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2588
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 2596
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2597
    invoke-virtual {p3, p2}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result p1

    return p1

    .line 2586
    :pswitch_0
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isActivityTypeAssistant()Z

    move-result p1

    return p1

    .line 2585
    :pswitch_1
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isActivityTypeRecents()Z

    move-result p1

    return p1

    .line 2584
    :pswitch_2
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result p1

    return p1

    .line 2590
    :pswitch_3
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result p1

    return p1

    .line 2593
    :pswitch_4
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result p1

    return p1

    .line 2592
    :pswitch_5
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result p1

    return p1

    .line 2591
    :pswitch_6
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result p1

    return p1

    .line 2589
    :pswitch_7
    const/4 p1, 0x1

    return p1

    .line 2599
    :cond_0
    const-string p2, "ActivityManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isValidLaunchStack: Unexpected stack="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private isValidTopRunningActivity(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 1

    .line 1299
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1300
    return v0

    .line 1303
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result p2

    .line 1305
    if-nez p2, :cond_1

    .line 1306
    return v0

    .line 1309
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->canShowWhenLocked()Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$moveTasksToFullscreenStackLocked$0(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;IZ)V
    .locals 0

    .line 2866
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackInSurfaceTransaction(Lcom/android/server/am/ActivityStack;IZ)V

    return-void
.end method

.method public static synthetic lambda$removeStack$1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;)V
    .locals 0

    .line 3064
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeStackInSurfaceTransaction(Lcom/android/server/am/ActivityStack;)V

    return-void
.end method

.method private logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4

    .line 1687
    nop

    .line 1688
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1689
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1690
    if-eqz v1, :cond_0

    .line 1691
    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result v1

    goto :goto_0

    .line 1694
    :cond_0
    move v1, v0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/os/Bundle;->getSize()I

    move-result v0

    .line 1695
    :goto_1
    add-int p2, v1, v0

    const v2, 0x30d40

    if-le p2, v2, :cond_2

    .line 1696
    const-string p2, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction too large, intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", extras size: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", icicle size: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :cond_2
    return-void
.end method

.method private moveTasksToFullscreenStackInSurfaceTransaction(Lcom/android/server/am/ActivityStack;IZ)V
    .locals 21

    move-object/from16 v9, p0

    .line 2790
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2792
    const/4 v10, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 2793
    const/4 v1, 0x2

    const/4 v11, 0x0

    if-ne v0, v1, :cond_0

    .line 2794
    move/from16 v20, v10

    goto :goto_0

    .line 2793
    :cond_0
    nop

    .line 2794
    move/from16 v20, v11

    :goto_0
    move/from16 v1, p2

    invoke-virtual {v9, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v15

    .line 2796
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2798
    invoke-virtual {v15}, Lcom/android/server/am/ActivityDisplay;->onExitingSplitScreenMode()V

    .line 2802
    invoke-virtual {v15}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v10

    :goto_1
    if-ltz v0, :cond_2

    .line 2803
    invoke-virtual {v15, v0}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2804
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2805
    goto :goto_2

    .line 2807
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v9

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 2802
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2815
    :cond_2
    iput-boolean v11, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 2820
    :cond_3
    nop

    .line 2821
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 2823
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2824
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v10}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 2825
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2826
    move v8, v11

    :goto_3
    if-ge v8, v7, :cond_6

    .line 2827
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/server/am/TaskRecord;

    .line 2828
    const/4 v2, 0x0

    iget-object v3, v9, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 2829
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v5

    .line 2828
    move-object v1, v15

    move-object v4, v14

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v13

    .line 2831
    if-eqz p3, :cond_5

    .line 2832
    add-int/lit8 v2, v7, -0x1

    if-ne v8, v2, :cond_4

    .line 2834
    move/from16 v16, v10

    goto :goto_4

    .line 2832
    :cond_4
    nop

    .line 2834
    move/from16 v16, v11

    :goto_4
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v17, 0x1

    const-string v19, "moveTasksToFullscreenStack - onTop"

    move-object v12, v14

    move-object v4, v14

    move v14, v2

    move-object v2, v15

    move v15, v3

    move/from16 v18, v20

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 2838
    iget-object v3, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget v5, v4, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 2839
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 2838
    invoke-static {v3, v5, v4}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureFullScreen(Landroid/content/Context;ILjava/lang/String;)V

    .line 2840
    goto :goto_5

    .line 2844
    :cond_5
    move-object v4, v14

    move-object v2, v15

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v19, "moveTasksToFullscreenStack - NOT_onTop"

    move-object v12, v4

    move/from16 v18, v20

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 2826
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object v15, v2

    goto :goto_3

    .line 2852
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v11, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2853
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2855
    iput-boolean v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 2856
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2857
    nop

    .line 2858
    return-void

    .line 2855
    :catchall_0
    move-exception v0

    iput-boolean v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 2856
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method static nextTaskIdForUser(II)I
    .locals 1

    .line 935
    add-int/lit8 p0, p0, 0x1

    .line 936
    add-int/lit8 p1, p1, 0x1

    const v0, 0x186a0

    mul-int/2addr p1, v0

    if-ne p0, p1, :cond_0

    .line 938
    sub-int/2addr p0, v0

    .line 940
    :cond_0
    return p0
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1

    .line 4158
    if-eqz p1, :cond_2

    .line 4159
    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4160
    :cond_0
    if-eqz p3, :cond_1

    .line 4161
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 4163
    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4164
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4165
    const/4 p0, 0x1

    return p0

    .line 4168
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private putStacksToSleepLocked(ZZ)Z
    .locals 6

    .line 3711
    nop

    .line 3712
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 3713
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityDisplay;

    .line 3714
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_1

    .line 3715
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 3716
    if-eqz p1, :cond_0

    .line 3717
    invoke-virtual {v5, p2}, Lcom/android/server/am/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v5

    and-int/2addr v2, v5

    goto :goto_2

    .line 3719
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 3714
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 3712
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3723
    :cond_2
    return v2
.end method

.method private readyToResume()Z
    .locals 1

    .line 4735
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private releaseSleepTokens(Lcom/android/server/am/ActivityDisplay;)V
    .locals 3

    .line 4490
    iget-object v0, p1, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4491
    return-void

    .line 4493
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal$SleepToken;

    .line 4494
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4495
    goto :goto_0

    .line 4496
    :cond_1
    iget-object p1, p1, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4498
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 4499
    return-void
.end method

.method private removeSleepTokenLocked(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V
    .locals 2

    .line 4478
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4480
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->access$000(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    .line 4481
    if-eqz v0, :cond_0

    .line 4482
    iget-object v1, v0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4483
    iget-object p1, v0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4484
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 4487
    :cond_0
    return-void
.end method

.method private removeStackInSurfaceTransaction(Lcom/android/server/am/ActivityStack;)V
    .locals 4

    .line 3030
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 3031
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 3041
    check-cast p1, Lcom/android/server/am/PinnedActivityStack;

    .line 3042
    iput-boolean v2, p1, Lcom/android/server/am/PinnedActivityStack;->mForceHidden:Z

    .line 3043
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/PinnedActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3044
    iput-boolean v1, p1, Lcom/android/server/am/PinnedActivityStack;->mForceHidden:Z

    .line 3045
    invoke-virtual {p0, v0, v1, v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    .line 3049
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 3050
    goto :goto_1

    .line 3051
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_0
    if-ltz p1, :cond_1

    .line 3052
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v3, "remove-stack"

    invoke-virtual {p0, v1, v2, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 3051
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 3056
    :cond_1
    :goto_1
    return-void
.end method

.method private resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    .line 2903
    iget-boolean v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    if-nez v1, :cond_0

    .line 2905
    return-void

    .line 2908
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v10

    .line 2909
    if-nez v10, :cond_1

    .line 2910
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "resizeDockedStackLocked: docked stack not found"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    return-void

    .line 2914
    :cond_1
    iget-boolean v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mDockedStackResizing:Z

    const/4 v11, 0x1

    if-eqz v1, :cond_2

    .line 2915
    iput-boolean v11, v9, Lcom/android/server/am/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    .line 2916
    invoke-static/range {p1 .. p1}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    .line 2917
    invoke-static/range {p2 .. p2}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    .line 2918
    invoke-static/range {p3 .. p3}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    .line 2919
    invoke-static/range {p4 .. p4}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    .line 2920
    invoke-static/range {p5 .. p5}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    .line 2923
    :cond_2
    const-string v1, "am.resizeDockedStack"

    const-wide/16 v12, 0x40

    invoke-static {v12, v13, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2924
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2927
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 2928
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    .line 2929
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2933
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v15, 0x0

    if-eq v1, v11, :cond_9

    if-nez v0, :cond_3

    .line 2934
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_5

    .line 2947
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 2948
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 2949
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v11

    move v7, v1

    :goto_0
    if-ltz v7, :cond_a

    .line 2950
    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2951
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 2952
    nop

    .line 2949
    :goto_1
    move/from16 v17, v7

    move-object/from16 v16, v8

    goto :goto_4

    .line 2954
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2955
    goto :goto_1

    .line 2957
    :cond_5
    iget-boolean v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isTopActivityVisible()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2960
    goto :goto_1

    .line 2963
    :cond_6
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 2964
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    move-object/from16 v6, p4

    invoke-virtual {v2, v6, v1, v8, v11}, Lcom/android/server/am/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 2969
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    .line 2970
    move-object v3, v1

    goto :goto_2

    .line 2969
    :cond_7
    nop

    .line 2970
    move-object v3, v15

    :goto_2
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    move-object v4, v8

    goto :goto_3

    :cond_8
    move-object v4, v6

    :goto_3
    const/16 v16, 0x1

    .line 2969
    move-object v1, v9

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v17, v7

    move/from16 v7, v16

    move-object/from16 v16, v8

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 2949
    :goto_4
    add-int/lit8 v7, v17, -0x1

    move-object/from16 v8, v16

    goto :goto_0

    .line 2938
    :cond_9
    :goto_5
    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 2941
    nop

    .line 2975
    move-object v14, v15

    :cond_a
    if-nez p7, :cond_b

    .line 2976
    move/from16 v0, p6

    invoke-virtual {v10, v14, v0}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2979
    :cond_b
    iput-boolean v11, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 2980
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2981
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2982
    nop

    .line 2983
    return-void

    .line 2979
    :catchall_0
    move-exception v0

    iput-boolean v11, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 2980
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2981
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private taskTopActivityIsUser(Lcom/android/server/am/TaskRecord;I)Z
    .locals 1

    .line 888
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 889
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 891
    :goto_0
    if-eqz p1, :cond_1

    iget p1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq p1, p2, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    iget p1, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne p1, p2, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V
    .locals 7

    .line 3461
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_2

    .line 3462
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x1081

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 3463
    sput-boolean v2, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 3464
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 3465
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1601

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 3467
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfHandle:I

    goto :goto_0

    .line 3470
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfHandle:I

    .line 3473
    :goto_0
    sget v0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfHandle:I

    if-lez v0, :cond_1

    .line 3474
    sput-boolean v2, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    .line 3476
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v5, 0x2f

    .line 3477
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3476
    invoke-virtual {v0, v4, v1, p1}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 3479
    :cond_2
    return-void
.end method

.method acquireLaunchWakelock()V
    .locals 4

    .line 2002
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2003
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2007
    :cond_0
    return-void
.end method

.method acquireUxPerfLock(ILjava/lang/String;)V
    .locals 2

    .line 3482
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_0

    .line 3483
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 3485
    :cond_0
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .line 2034
    nop

    .line 2035
    nop

    .line 2036
    nop

    .line 2037
    nop

    .line 2038
    nop

    .line 2039
    nop

    .line 2041
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 2042
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 2045
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2046
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 2047
    if-eqz p2, :cond_0

    .line 2048
    const-wide/16 v2, -0x1

    invoke-virtual {p0, p2, p1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;J)V

    .line 2056
    :cond_0
    if-eqz p4, :cond_1

    .line 2057
    invoke-virtual {p1, p4}, Lcom/android/server/am/ActivityRecord;->setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 2062
    :cond_1
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 2065
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result p4

    if-nez p4, :cond_2

    if-eqz p2, :cond_3

    .line 2066
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    move-result p2

    goto :goto_0

    .line 2070
    :cond_3
    move p2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    move-result p4

    const/4 v2, 0x0

    if-eqz p4, :cond_6

    .line 2071
    if-eqz p1, :cond_4

    .line 2072
    iget-object p4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p4}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 2075
    :cond_4
    iget-object p4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 2076
    iget-object p4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0x68

    invoke-virtual {p4, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2081
    iget-object p4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2083
    :cond_5
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2087
    :cond_6
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Lcom/android/server/am/ActivityRecord;ZZ)Ljava/util/ArrayList;

    move-result-object p3

    .line 2089
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    goto :goto_1

    .line 2090
    :cond_7
    move p4, v1

    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 2091
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2092
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 2095
    :cond_8
    move-object v4, v2

    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 2096
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2097
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2102
    :cond_9
    move-object v5, p1

    move p1, v1

    :goto_3
    if-ge p1, p4, :cond_c

    .line 2103
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2104
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 2105
    if-eqz v6, :cond_b

    .line 2106
    iget-boolean v7, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_a

    .line 2107
    const-string v7, "activityIdleInternalLocked"

    invoke-virtual {v6, v5, v1, v1, v7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    goto :goto_4

    .line 2110
    :cond_a
    invoke-virtual {v6, v5}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2102
    :cond_b
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 2117
    :cond_c
    move p1, v1

    move p3, p1

    :goto_5
    if-ge p1, v3, :cond_e

    .line 2118
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v5, p4

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2119
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p4

    .line 2120
    if-eqz p4, :cond_d

    .line 2121
    const-string v6, "finish-idle"

    invoke-virtual {p4, v5, v0, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result p4

    or-int/2addr p3, p4

    .line 2117
    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 2125
    :cond_e
    if-nez p2, :cond_f

    .line 2127
    if-eqz v2, :cond_f

    .line 2128
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_f

    .line 2129
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/UserState;

    invoke-virtual {p1, p2}, Lcom/android/server/am/UserController;->finishUserSwitch(Lcom/android/server/am/UserState;)V

    .line 2128
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2134
    :cond_f
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 2138
    if-eqz p3, :cond_10

    .line 2139
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2142
    :cond_10
    return-object v5
.end method

.method activityRelaunchedLocked(Landroid/os/IBinder;)V
    .locals 1

    .line 4627
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchingFinished(Landroid/os/IBinder;)V

    .line 4628
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 4629
    if-eqz p1, :cond_0

    .line 4630
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4631
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(ZZ)V

    .line 4634
    :cond_0
    return-void
.end method

.method activityRelaunchingLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1

    .line 4637
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunching(Landroid/os/IBinder;)V

    .line 4638
    return-void
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1

    .line 3676
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3677
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 3678
    if-eqz p1, :cond_0

    .line 3679
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    goto :goto_0

    .line 3681
    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 3683
    :goto_0
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .locals 4

    .line 3806
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3807
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3808
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 3809
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3810
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->addStartingWindowsForVisibleActivities(Z)V

    .line 3808
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3806
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3813
    :cond_1
    return-void
.end method

.method allPausedActivitiesComplete()Z
    .locals 8

    .line 1103
    nop

    .line 1104
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 1105
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1106
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_1

    .line 1107
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1108
    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1109
    if-eqz v4, :cond_0

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1115
    const/4 v0, 0x0

    return v0

    .line 1106
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1104
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1120
    :cond_2
    return v1
.end method

.method allResumedActivitiesComplete()Z
    .locals 6

    .line 1039
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 1040
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1041
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_1

    .line 1042
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1043
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1044
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1045
    if-eqz v4, :cond_0

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1046
    const/4 v0, 0x0

    return v0

    .line 1041
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1039
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1055
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1056
    return v1
.end method

.method allResumedActivitiesIdle()Z
    .locals 6

    .line 1018
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    .line 1019
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1020
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_3

    .line 1021
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1022
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v5

    if-nez v5, :cond_0

    .line 1023
    goto :goto_2

    .line 1025
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1026
    if-eqz v4, :cond_1

    iget-boolean v4, v4, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v4, :cond_2

    .line 1029
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1020
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1018
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1034
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchEndIfNeeded()V

    .line 1035
    return v1
.end method

.method anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 1

    .line 782
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object p1

    return-object p1
.end method

.method anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;
    .locals 2

    .line 786
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;

    move-result-object p1

    return-object p1
.end method

.method anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 799
    move/from16 v4, p4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 800
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should not specify activity options for non-restore lookup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_1
    :goto_0
    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 805
    const/4 v7, 0x0

    move v8, v7

    :goto_1
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ge v8, v6, :cond_6

    .line 806
    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityDisplay;

    .line 807
    invoke-virtual {v11}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v12

    sub-int/2addr v12, v9

    :goto_2
    if-ltz v12, :cond_5

    .line 808
    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 809
    invoke-virtual {v9, v1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v13

    .line 810
    if-nez v13, :cond_2

    .line 811
    nop

    .line 807
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 813
    :cond_2
    if-eqz v3, :cond_4

    .line 816
    invoke-virtual {v0, v10, v3, v13, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 817
    if-eqz v1, :cond_4

    if-eq v9, v1, :cond_4

    .line 818
    if-eqz v4, :cond_3

    .line 819
    nop

    .line 820
    move v3, v7

    goto :goto_3

    .line 819
    :cond_3
    nop

    .line 820
    move v3, v5

    :goto_3
    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v7, "anyTaskForIdLocked"

    move-object v0, v13

    move v2, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 824
    :cond_4
    return-object v13

    .line 805
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 829
    :cond_6
    if-nez v2, :cond_7

    .line 830
    return-object v10

    .line 836
    :cond_7
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v5, v1}, Lcom/android/server/am/RecentTasks;->getTask(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 838
    if-nez v1, :cond_8

    .line 843
    return-object v10

    .line 846
    :cond_8
    if-ne v2, v9, :cond_9

    .line 847
    return-object v1

    .line 851
    :cond_9
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 854
    return-object v10

    .line 857
    :cond_a
    return-object v1
.end method

.method applySleepTokensLocked(Z)V
    .locals 7

    .line 3627
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_a

    .line 3629
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3630
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->shouldSleep()Z

    move-result v2

    .line 3631
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->isSleeping()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3632
    goto/16 :goto_5

    .line 3634
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->setIsSleeping(Z)V

    .line 3636
    if-nez p1, :cond_1

    .line 3637
    goto/16 :goto_5

    .line 3641
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    const/4 v4, 0x0

    if-ltz v3, :cond_4

    .line 3642
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 3643
    if-eqz v2, :cond_2

    .line 3644
    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityStack;->goToSleepIfPossible(Z)Z

    goto :goto_2

    .line 3646
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    .line 3647
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v4

    iget v5, v1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3653
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 3641
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3658
    :cond_4
    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3659
    goto :goto_5

    .line 3662
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3663
    :goto_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_7

    .line 3664
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3665
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    iget v6, v1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    if-ne v5, v6, :cond_6

    .line 3666
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3663
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3670
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3671
    :cond_8
    nop

    .line 3627
    :cond_9
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 3673
    :cond_a
    return-void
.end method

.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 981
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 982
    nop

    .line 983
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ltz v1, :cond_6

    .line 984
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityDisplay;

    .line 985
    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_1
    if-ltz v6, :cond_5

    .line 986
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 987
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 988
    goto/16 :goto_5

    .line 990
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStack;->getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V

    .line 991
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 992
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 993
    move v9, v4

    move v4, v3

    :goto_2
    if-ge v4, v8, :cond_4

    .line 994
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .line 995
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v11, :cond_3

    iget v11, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v12, :cond_3

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 996
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 998
    if-ne v7, v10, :cond_1

    move v11, v2

    goto :goto_3

    :cond_1
    move v11, v3

    :goto_3
    :try_start_0
    invoke-virtual {p0, v10, p1, v11, v2}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_2

    .line 1000
    nop

    .line 1006
    move v9, v2

    :cond_2
    goto :goto_4

    .line 1002
    :catch_0
    move-exception p1

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in new application when starting activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1004
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1003
    const-string v1, "ActivityManager"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1005
    throw p1

    .line 993
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 985
    :cond_4
    move v4, v9

    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 983
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 1011
    :cond_6
    if-nez v4, :cond_7

    .line 1012
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1014
    :cond_7
    return v4
.end method

.method attachDisplay(Lcom/android/server/am/ActivityDisplay;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4413
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4414
    return-void
.end method

.method canPlaceEntityOnDisplay(IZIILandroid/content/pm/ActivityInfo;)Z
    .locals 3

    .line 501
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 503
    return v0

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 507
    return v2

    .line 509
    :cond_1
    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->displayConfigMatchesGlobal(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 511
    return v2

    .line 513
    :cond_2
    invoke-virtual {p0, p3, p4, p1, p5}, Lcom/android/server/am/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 517
    return v2

    .line 519
    :cond_3
    return v0
.end method

.method canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z
    .locals 2

    .line 2377
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2380
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_1

    .line 2381
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p1, p1, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    nop

    .line 2380
    :cond_3
    return v0

    .line 2378
    :cond_4
    :goto_0
    return v0
.end method

.method cancelInitializingActivities()V
    .locals 4

    .line 1124
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1125
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 1126
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 1127
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 1128
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->cancelInitializingActivities()V

    .line 1126
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1124
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1131
    :cond_1
    return-void
.end method

.method checkReadyForSleepLocked(Z)V
    .locals 1

    .line 3686
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3688
    return-void

    .line 3691
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->putStacksToSleepLocked(ZZ)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3692
    return-void

    .line 3696
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchEndIfNeeded()V

    .line 3698
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 3700
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3701
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3703
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p1, p1, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz p1, :cond_3

    .line 3704
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 3706
    :cond_3
    return-void
.end method

.method checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Z
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p10

    .line 1767
    iget-object v0, v6, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1768
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/am/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1769
    move v0, v12

    goto :goto_0

    .line 1768
    :cond_0
    nop

    .line 1769
    move v0, v11

    :goto_0
    iget-object v1, v6, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.START_ANY_ACTIVITY"

    invoke-virtual {v1, v2, v8, v9}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    .line 1771
    if-eqz v1, :cond_9

    if-eqz v0, :cond_1

    if-eqz p9, :cond_1

    goto/16 :goto_3

    .line 1777
    :cond_1
    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p7

    move v3, v8

    move v4, v9

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v0

    .line 1779
    nop

    .line 1780
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1779
    invoke-direct {v6, v1, v2, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 1781
    if-eq v0, v12, :cond_5

    if-ne v1, v12, :cond_2

    goto/16 :goto_1

    .line 1809
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Appop Denial: starting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1814
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1813
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1815
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    return v11

    .line 1817
    :cond_3
    if-ne v0, v2, :cond_4

    .line 1818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Appop Denial: starting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") requires appop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1821
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1822
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    return v11

    .line 1826
    :cond_4
    return v12

    .line 1783
    :cond_5
    :goto_1
    if-eqz p11, :cond_6

    .line 1784
    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v13, p12

    move-object/from16 v15, p11

    move-object/from16 v16, p3

    move/from16 v17, p4

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1789
    :cond_6
    if-eq v1, v12, :cond_8

    .line 1794
    iget-boolean v0, v7, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v0, :cond_7

    .line 1795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: starting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") not exported from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1800
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: starting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1790
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: starting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") with revoked permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1793
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1805
    :goto_2
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1775
    :cond_9
    :goto_3
    return v12
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;ZZ)V
    .locals 11

    .line 3119
    if-eqz p3, :cond_0

    .line 3120
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v0, p1}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 3122
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3123
    if-nez v0, :cond_1

    .line 3124
    const-string p2, "ActivityManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No component for base intent of task: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    return-void

    .line 3129
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/am/ActiveServices;->cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/Intent;)V

    .line 3131
    if-nez p2, :cond_2

    .line 3132
    return-void

    .line 3136
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 3137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3138
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 3139
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 3141
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 3142
    move v5, v2

    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 3143
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 3144
    iget v7, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v7, v8, :cond_3

    .line 3146
    goto :goto_3

    .line 3148
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v7, :cond_4

    .line 3150
    goto :goto_3

    .line 3152
    :cond_4
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v7, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 3154
    goto :goto_3

    .line 3157
    :cond_5
    move v7, v2

    :goto_2
    iget-object v8, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 3158
    iget-object v8, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 3159
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v10, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v9, v10, :cond_6

    iget-boolean v8, v8, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v8, :cond_6

    .line 3162
    return-void

    .line 3157
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3166
    :cond_7
    iget-boolean v7, v6, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-eqz v7, :cond_8

    .line 3168
    return-void

    .line 3172
    :cond_8
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3142
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3139
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3177
    :cond_a
    move p1, v2

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_c

    .line 3178
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ProcessRecord;

    .line 3179
    iget v1, p2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-nez v1, :cond_b

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    .line 3180
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3181
    const-string/jumbo v1, "remove task"

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_5

    .line 3184
    :cond_b
    const-string/jumbo v1, "remove task"

    iput-object v1, p2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 3177
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 3187
    :cond_c
    if-eqz p3, :cond_d

    .line 3189
    :try_start_0
    new-instance p1, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;

    invoke-direct {p1, p0}, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    new-array p2, v2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3192
    goto :goto_6

    .line 3190
    :catch_0
    move-exception p1

    .line 3191
    const-string p2, "ActivityManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    :cond_d
    :goto_6
    return-void
.end method

.method cleanupActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 3

    .line 1142
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1143
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1145
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1146
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->matches(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1145
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1150
    :cond_1
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 4

    .line 3835
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3836
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3837
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 3838
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3839
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 3837
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3835
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3842
    :cond_1
    return-void
.end method

.method closeSystemDialogsLocked()V
    .locals 4

    .line 2158
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2159
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 2160
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 2161
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2162
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->closeSystemDialogsLocked()V

    .line 2160
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2158
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2165
    :cond_1
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .locals 1

    .line 3620
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 3621
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3622
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3624
    :cond_0
    return-void
.end method

.method continueUpdateBounds(I)V
    .locals 1

    .line 2765
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 2766
    if-eqz p1, :cond_0

    .line 2767
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->continueUpdateBounds()V

    .line 2769
    :cond_0
    return-void
.end method

.method continueUpdateRecentsHomeStackBounds()V
    .locals 1

    .line 2760
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateBounds(I)V

    .line 2761
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateBounds(I)V

    .line 2762
    return-void
.end method

.method createRunningTasks()Lcom/android/server/am/RunningTasks;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 657
    new-instance v0, Lcom/android/server/am/RunningTasks;

    invoke-direct {v0}, Lcom/android/server/am/RunningTasks;-><init>()V

    return-object v0
.end method

.method createSleepTokenLocked(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;
    .locals 2

    .line 4466
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    .line 4467
    if-eqz v0, :cond_0

    .line 4471
    new-instance v1, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Ljava/lang/String;I)V

    .line 4472
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4473
    iget-object p1, v0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4474
    return-object v1

    .line 4468
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method deferUpdateBounds(I)V
    .locals 1

    .line 2753
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 2754
    if-eqz p1, :cond_0

    .line 2755
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->deferUpdateBounds()V

    .line 2757
    :cond_0
    return-void
.end method

.method deferUpdateRecentsHomeStackBounds()V
    .locals 1

    .line 2748
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->deferUpdateBounds(I)V

    .line 2749
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->deferUpdateBounds(I)V

    .line 2750
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 4074
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFocusedStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4075
    const-string v0, " mLastFocusedStack="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4076
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurTaskIdForUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4078
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserStackInFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4079
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4080
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4081
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityDisplay;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4079
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4083
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4084
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWaitingForActivityVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4085
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4086
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4085
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4089
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isHomeRecentsComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4090
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4092
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/KeyguardController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4093
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/LockTaskController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4094
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    .line 4173
    move-object/from16 v14, p5

    .line 4174
    nop

    .line 4175
    const/4 v15, 0x0

    move v1, v15

    move v12, v1

    move/from16 v16, v12

    :goto_0
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v17, 0x1

    if-ge v12, v2, :cond_5

    .line 4176
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 4177
    const-string v3, "Display #"

    invoke-virtual {v13, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v13, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4178
    const-string v2, " (activities from top to bottom):"

    invoke-virtual {v13, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4179
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/server/am/ActivityDisplay;

    .line 4180
    invoke-virtual {v11}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v7, v1

    move v10, v2

    :goto_1
    if-ltz v10, :cond_4

    .line 4181
    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 4182
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stack #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4184
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4185
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4183
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isSleeping="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4189
    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v14

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z

    move-result v1

    or-int v16, v16, v1

    .line 4192
    iget-object v3, v9, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v4, "    "

    const-string v5, "Run"

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/16 v18, 0x1

    const-string v19, "    Running activities (most recent first):"

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v21, v9

    move-object v9, v14

    move/from16 v22, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move-object/from16 v11, v19

    move/from16 v19, v12

    move-object/from16 v12, v20

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    or-int v1, v16, v1

    .line 4196
    nop

    .line 4197
    move-object/from16 v2, v21

    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mPausingActivity: "

    invoke-static {v13, v3, v14, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    .line 4199
    if-eqz v3, :cond_0

    .line 4200
    nop

    .line 4201
    nop

    .line 4203
    move v1, v15

    move/from16 v3, v17

    goto :goto_2

    :cond_0
    move v3, v1

    :goto_2
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    const-string v5, "    mResumedActivity: "

    invoke-static {v13, v4, v14, v1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 4205
    if-eqz v4, :cond_1

    .line 4206
    nop

    .line 4207
    nop

    .line 4209
    move v1, v15

    move/from16 v3, v17

    :cond_1
    if-eqz p3, :cond_3

    .line 4210
    iget-object v4, v2, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mLastPausedActivity: "

    invoke-static {v13, v4, v14, v1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 4212
    if-eqz v4, :cond_2

    .line 4213
    nop

    .line 4214
    nop

    .line 4216
    move/from16 v1, v17

    move v3, v1

    :cond_2
    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mLastNoHistoryActivity: "

    invoke-static {v13, v2, v14, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    or-int/2addr v1, v3

    .line 4219
    move v7, v1

    goto :goto_3

    :cond_3
    move v7, v3

    .line 4180
    :goto_3
    add-int/lit8 v10, v22, -0x1

    move/from16 v16, v7

    move-object/from16 v11, v18

    move/from16 v12, v19

    goto/16 :goto_1

    .line 4175
    :cond_4
    move/from16 v19, v12

    add-int/lit8 v12, v19, 0x1

    move v1, v7

    goto/16 :goto_0

    .line 4223
    :cond_5
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

    or-int v15, v16, v1

    .line 4225
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

    .line 4227
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

    or-int v12, v15, v1

    .line 4230
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v3, "  "

    const-string v4, "Sleep"

    const/4 v5, 0x0

    xor-int/lit8 v6, p3, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-string v10, "  Activities waiting to sleep:"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move-object v1, v13

    move-object v8, v14

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    or-int/2addr v0, v12

    .line 4233
    return v0
.end method

.method dumpDisplayConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 4123
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Display override configurations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4124
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4125
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4126
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 4127
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4128
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4130
    :cond_0
    return-void
.end method

.method public dumpDisplays(Ljava/io/PrintWriter;)V
    .locals 4

    .line 4065
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4066
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4067
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

    .line 4068
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->dumpStacks(Ljava/io/PrintWriter;)V

    .line 4069
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4065
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4071
    :cond_0
    return-void
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .locals 1

    .line 3780
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    .line 3782
    return-void
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V
    .locals 4

    .line 3789
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->beginActivityVisibilityUpdate()V

    .line 3792
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3793
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3794
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 3795
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3796
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3794
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3792
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3801
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    .line 3802
    nop

    .line 3803
    return-void

    .line 3801
    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    throw p1
.end method

.method ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z
    .locals 5

    .line 1662
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    .line 1665
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1667
    return v1

    .line 1672
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1673
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v3

    .line 1674
    if-eqz p1, :cond_1

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1675
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    nop

    .line 1672
    :cond_1
    invoke-virtual {v2, v3, v0, p2, v1}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;IZ)Landroid/content/res/Configuration;

    move-result-object v0

    .line 1677
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    .line 1678
    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1682
    :cond_2
    iget-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p3, v0, p1, p4, p2}, Lcom/android/server/am/ActivityManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZI)Z

    move-result p1

    return p1
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;
    .locals 4

    .line 3542
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 3543
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3544
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 3545
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3546
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 3548
    if-eqz v3, :cond_0

    .line 3549
    return-object v3

    .line 3544
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3542
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3553
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method findStackBehind(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;
    .locals 4

    .line 4833
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    .line 4834
    if-nez v0, :cond_0

    .line 4835
    const/4 p1, 0x0

    return-object p1

    .line 4837
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 4838
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-ne v2, p1, :cond_1

    if-lez v1, :cond_1

    .line 4839
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object p1

    return-object p1

    .line 4837
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4842
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find a stack behind stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 6

    .line 3488
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 3489
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    .line 3490
    nop

    .line 3492
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    .line 3493
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 3494
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_5

    .line 3495
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 3496
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3499
    goto :goto_2

    .line 3501
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;)V

    .line 3507
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_4

    .line 3508
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    if-nez v4, :cond_3

    .line 3509
    iget-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object p2, p2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object p2

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p2, v0, :cond_1

    .line 3511
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V

    .line 3513
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object p2, p2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object p2

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p2, v0, :cond_2

    .line 3515
    const/4 p2, 0x6

    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->acquireUxPerfLock(ILjava/lang/String;)V

    .line 3517
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object p1, p1, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    return-object p1

    .line 3518
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v4

    if-ne v4, p2, :cond_4

    .line 3522
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 3494
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3492
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3532
    :cond_6
    iget-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object p2, p2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object p2, p2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object p2

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p2, v0, :cond_8

    .line 3533
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V

    .line 3537
    :cond_8
    return-object v1
.end method

.method findTaskToMoveToFront(Lcom/android/server/am/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .locals 14

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p3

    .line 2308
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 2310
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2311
    const/4 v12, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_0

    .line 2315
    :cond_0
    move-object v1, v12

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_1

    .line 2316
    invoke-virtual {v8, v1}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V

    .line 2319
    :cond_1
    if-nez v11, :cond_2

    .line 2320
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

    .line 2322
    return-void

    .line 2325
    :cond_2
    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 2326
    iput-boolean v2, v8, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2329
    :cond_3
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2331
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    .line 2332
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2335
    :cond_4
    const-string v0, "findTaskToMoveToFront"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 2338
    :cond_5
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v8, v10}, Lcom/android/server/am/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2339
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 2340
    invoke-virtual {v9, v7}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2342
    invoke-virtual {v8, v12, v10, v9, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2344
    if-eq v1, v11, :cond_6

    .line 2345
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "findTaskToMoveToFront"

    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2347
    nop

    .line 2351
    move-object v1, v11

    :cond_6
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2352
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v13, 0x0

    move-object v0, v8

    move-object v2, v7

    move v7, v13

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    goto :goto_1

    .line 2359
    :cond_7
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->resizeWindowContainer()V

    .line 2363
    :cond_8
    :goto_1
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2364
    const/4 v2, 0x0

    .line 2365
    if-nez v0, :cond_9

    .line 2364
    move-object v4, v12

    goto :goto_2

    .line 2365
    :cond_9
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2364
    move-object v4, v0

    :goto_2
    move-object v0, v11

    move-object v1, v9

    move-object v3, v10

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2370
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v4, v11

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;Z)V

    .line 2372
    return-void
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    move-object v0, p0

    .line 2186
    nop

    .line 2187
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_2

    .line 2188
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityDisplay;

    .line 2189
    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_1
    if-ltz v5, :cond_1

    .line 2190
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 2191
    move-object v7, p1

    move-object v8, p2

    move v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2193
    nop

    .line 2189
    move v3, v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2187
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2197
    :cond_2
    return v3
.end method

.method finishTopCrashedActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;
    .locals 7

    .line 2278
    nop

    .line 2279
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2280
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_3

    .line 2281
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityDisplay;

    .line 2284
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2285
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 2286
    invoke-virtual {v5, p1, p2}, Lcom/android/server/am/ActivityStack;->finishTopCrashedActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 2287
    if-eq v5, v0, :cond_0

    if-nez v2, :cond_1

    .line 2288
    :cond_0
    nop

    .line 2284
    move-object v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2280
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2292
    :cond_3
    return-object v2
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 5

    .line 2296
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2297
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 2298
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    .line 2299
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 2300
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2301
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 2299
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2296
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2304
    :cond_1
    return-void
.end method

.method getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;
    .locals 1

    .line 4376
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ActivityDisplay;

    return-object p1
.end method

.method getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;
    .locals 2

    .line 4390
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    .line 4391
    if-eqz v0, :cond_0

    .line 4392
    return-object v0

    .line 4394
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4396
    return-object v1

    .line 4398
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 4399
    if-nez v0, :cond_2

    .line 4401
    return-object v1

    .line 4404
    :cond_2
    new-instance v1, Lcom/android/server/am/ActivityDisplay;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/view/Display;)V

    .line 4405
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->attachDisplay(Lcom/android/server/am/ActivityDisplay;)V

    .line 4406
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityDisplay;)V

    .line 4407
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayAdded(I)V

    .line 4408
    return-object v1
.end method

.method public getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    return-object v0
.end method

.method getAllStackInfosLocked()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .line 4551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4552
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4553
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 4554
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_0

    .line 4555
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 4556
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4554
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 4552
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4559
    :cond_1
    return-object v0
.end method

.method protected getChildAt(I)Lcom/android/server/am/ActivityDisplay;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ActivityDisplay;

    return-object p1
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;
    .locals 2

    .line 4381
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    return-object v0
.end method

.method getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;
    .locals 3

    .line 481
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    return-object p1

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No display found with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .locals 6
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

    .line 4138
    if-eqz p3, :cond_0

    .line 4139
    iget-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p2, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 4141
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4142
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4143
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 4144
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 4145
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_3

    .line 4146
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 4147
    if-eqz p2, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4148
    :cond_1
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4145
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 4143
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4152
    :cond_4
    return-object p3
.end method

.method getFocusedStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .line 2684
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivityForUser(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/am/ActivityRecord;
    .locals 6

    .line 2688
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 2689
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 2690
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 2691
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2692
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2693
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    .line 2694
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 2695
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    iget v5, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, p1, :cond_1

    .line 2697
    :cond_0
    return-object v4

    .line 2693
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2689
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2702
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKeyguardController()Lcom/android/server/am/KeyguardController;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    return-object v0
.end method

.method getLastStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;
    .locals 1

    .line 2386
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/am/LaunchParamsController;

    return-object v0
.end method

.method getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;
    .locals 6
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

    .line 2429
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;

    move-result-object p1

    return-object p1
.end method

.method getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;
    .locals 7
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

    .line 2444
    nop

    .line 2445
    nop

    .line 2449
    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 2450
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    .line 2451
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    goto :goto_0

    .line 2458
    :cond_0
    move v1, v0

    move v2, v1

    :goto_0
    if-eq v1, v0, :cond_1

    .line 2460
    invoke-virtual {p2, v0}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 2461
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3, p2, p4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 2463
    invoke-virtual {p2, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 2464
    if-eqz v3, :cond_1

    .line 2465
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    return-object p1

    .line 2469
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    move-result v6

    .line 2470
    nop

    .line 2474
    if-ne v2, v0, :cond_2

    .line 2475
    goto :goto_1

    .line 2477
    :cond_2
    move p5, v2

    :goto_1
    if-eq p5, v0, :cond_4

    invoke-direct {p0, p1, p5}, Lcom/android/server/am/ActivityStackSupervisor;->canLaunchOnDisplay(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2478
    if-eqz p1, :cond_3

    .line 2480
    invoke-virtual {p0, p5, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2481
    if-eqz v0, :cond_3

    .line 2482
    return-object v0

    .line 2485
    :cond_3
    invoke-virtual {p0, p5}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 2486
    if-eqz v0, :cond_4

    .line 2487
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object p5

    .line 2488
    if-eqz p5, :cond_4

    .line 2489
    return-object p5

    .line 2496
    :cond_4
    nop

    .line 2497
    nop

    .line 2498
    const/4 p5, 0x0

    if-eqz p3, :cond_5

    .line 2499
    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_2

    .line 2501
    :cond_5
    move-object v0, p5

    :goto_2
    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    .line 2502
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2504
    :cond_6
    if-eqz v0, :cond_8

    .line 2505
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p5

    .line 2506
    if-eqz p5, :cond_8

    iget v1, p5, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->canLaunchOnDisplay(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2507
    nop

    .line 2508
    invoke-virtual {p5, p1, p2, p3, v6}, Lcom/android/server/am/ActivityDisplay;->resolveWindowingMode(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;I)I

    move-result v1

    .line 2509
    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2510
    return-object v0

    .line 2512
    :cond_7
    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 2513
    invoke-virtual {p5}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-ne v1, v0, :cond_8

    .line 2514
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne p3, v1, :cond_8

    .line 2520
    return-object v0

    .line 2525
    :cond_8
    if-eqz p5, :cond_9

    iget v0, p5, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    .line 2526
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->canLaunchOnDisplay(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    if-eq v6, v0, :cond_a

    if-eqz v6, :cond_a

    .line 2531
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p5

    .line 2534
    :cond_a
    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object p1

    return-object p1
.end method

.method getNextFocusableStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;
    .locals 8

    .line 2613
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    .line 2615
    if-eqz p1, :cond_0

    .line 2616
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2617
    :goto_0
    nop

    .line 2618
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_1
    if-ltz v1, :cond_8

    .line 2619
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 2621
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    .line 2622
    if-nez v4, :cond_1

    .line 2624
    goto :goto_4

    .line 2626
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_2
    if-ltz v5, :cond_7

    .line 2627
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 2628
    if-eqz p2, :cond_2

    if-ne v6, p1, :cond_2

    .line 2629
    goto :goto_3

    .line 2631
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6, v2}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2632
    goto :goto_3

    .line 2635
    :cond_3
    const/4 v7, 0x4

    if-ne v0, v7, :cond_4

    if-nez v3, :cond_4

    .line 2636
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2644
    nop

    .line 2645
    nop

    .line 2626
    move-object v3, v6

    goto :goto_3

    .line 2647
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2649
    return-object v3

    .line 2651
    :cond_5
    return-object v6

    .line 2626
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 2618
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2655
    :cond_8
    return-object v3
.end method

.method getNextTaskIdForUserLocked(I)I
    .locals 3

    .line 944
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const v1, 0x186a0

    mul-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 948
    invoke-static {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 949
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/am/RecentTasks;->containsTaskId(II)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 950
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 962
    return v1

    .line 952
    :cond_1
    :goto_1
    invoke-static {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 953
    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 956
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;
    .locals 2

    .line 2669
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    .line 2670
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2671
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 2672
    if-ne v1, p2, :cond_0

    .line 2673
    goto :goto_1

    .line 2675
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2676
    if-eqz v1, :cond_1

    .line 2677
    return-object v1

    .line 2670
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2680
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 1

    .line 477
    const/4 v0, 0x0

    return-object v0
.end method

.method getReparentTargetStack(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;
    .locals 4

    .line 3286
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3287
    iget v1, p2, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 3288
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v2

    .line 3291
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v3, v1, :cond_0

    .line 3292
    const-string p2, "ActivityManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not reparent to same stack, task="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already in stackId="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    return-object v0

    .line 3299
    :cond_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 3300
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device doesn\'t support multi-window, can not reparent task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to stack="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 3306
    :cond_2
    :goto_0
    iget v3, p2, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiDisplay:Z

    if-eqz v3, :cond_3

    goto :goto_1

    .line 3307
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device doesn\'t support multi-display, can not reparent task="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to stackId="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3312
    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v1, :cond_5

    goto :goto_2

    .line 3314
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device doesn\'t support freeform, can not reparent task="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3320
    :cond_6
    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_8

    .line 3321
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not move unresizeable task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to multi-window stack="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Moving to a fullscreen stack instead."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    if-eqz v0, :cond_7

    .line 3324
    return-object v0

    .line 3326
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p1

    const/4 v0, 0x1

    .line 3327
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result p2

    .line 3326
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/am/ActivityDisplay;->createStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object p2

    .line 3329
    :cond_8
    return-object p2
.end method

.method getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 3

    .line 966
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 967
    if-nez v0, :cond_0

    .line 968
    const/4 v0, 0x0

    return-object v0

    .line 970
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 971
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_3

    .line 972
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 973
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_3

    .line 974
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 977
    :cond_3
    return-object v1
.end method

.method getRunningTasks(ILjava/util/List;IIIZ)V
    .locals 8
    .param p3    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
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

    .line 1316
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/am/RunningTasks;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/RunningTasks;->getTasks(ILjava/util/List;IILandroid/util/SparseArray;IZ)V

    .line 1318
    return-void
.end method

.method protected getStack(I)Lcom/android/server/am/ActivityStack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(I)TT;"
        }
    .end annotation

    .line 2390
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2391
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2392
    if-eqz v1, :cond_0

    .line 2393
    return-object v1

    .line 2390
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2396
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    .locals 0

    .line 4538
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 4539
    if-eqz p1, :cond_0

    .line 4540
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object p1

    return-object p1

    .line 4542
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getStackInfo(II)Landroid/app/ActivityManager$StackInfo;
    .locals 0

    .line 4546
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 4547
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getTopVisibleActivities()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 4967
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4969
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 4970
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 4972
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    .line 4973
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 4975
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4976
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 4977
    if-eqz v5, :cond_1

    .line 4978
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v4, v6, :cond_0

    .line 4979
    const/4 v4, 0x0

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 4981
    :cond_0
    iget-object v4, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4972
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 4969
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4987
    :cond_3
    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 3

    .line 1918
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1920
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1922
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1920
    return-object p1

    .line 1922
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .locals 6

    .line 2553
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 2554
    if-eqz v0, :cond_4

    .line 2559
    invoke-virtual {p2, p1}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2560
    return-object v2

    .line 2564
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_2

    .line 2565
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2566
    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->isValidLaunchStack(Lcom/android/server/am/ActivityStack;ILcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2567
    return-object v4

    .line 2564
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2572
    :cond_2
    if-eqz p1, :cond_3

    .line 2573
    nop

    .line 2574
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result p2

    .line 2573
    invoke-virtual {v0, p1, p2, v3}, Lcom/android/server/am/ActivityDisplay;->createStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object p1

    return-object p1

    .line 2577
    :cond_3
    const-string p2, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getValidLaunchStackOnDisplay: can\'t launch on displayId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    return-object v2

    .line 2555
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display with displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method goingToSleepLocked()V
    .locals 2

    .line 3567
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleSleepTimeout()V

    .line 3568
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3569
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3570
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3574
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3575
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 3579
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->applySleepTokensLocked(Z)V

    .line 3581
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 3582
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    .line 3743
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3744
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3745
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 3746
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3747
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3745
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3743
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3750
    :cond_1
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5

    .line 2146
    nop

    .line 2147
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 2148
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 2149
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_0

    .line 2150
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2151
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 2149
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2147
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2154
    :cond_1
    return v1
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V
    .locals 6

    .line 4564
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;Z)V

    .line 4566
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;Z)V
    .locals 6

    .line 4570
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    .line 4572
    move v2, v1

    goto :goto_0

    .line 4570
    :cond_0
    nop

    .line 4572
    move v2, v0

    :goto_0
    if-eqz p4, :cond_1

    .line 4573
    invoke-virtual {p4}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4574
    move v3, v1

    goto :goto_1

    .line 4573
    :cond_1
    nop

    .line 4574
    move v3, v0

    :goto_1
    if-nez v3, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    if-eqz v2, :cond_3

    .line 4575
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result p2

    if-nez p2, :cond_4

    .line 4576
    :cond_3
    return-void

    .line 4580
    :cond_4
    if-eqz v2, :cond_6

    .line 4581
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p2

    iget p2, p2, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 4582
    invoke-virtual {p1, p2}, Lcom/android/server/am/TaskRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4587
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/am/ActivityManagerService;->setTaskWindowingMode(IIZ)V

    .line 4589
    if-eq p3, p2, :cond_6

    .line 4592
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    .line 4593
    invoke-virtual {p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayFailed()V

    .line 4594
    return-void

    .line 4583
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Task resolved to incompatible display"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4598
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result p2

    if-eqz p2, :cond_a

    if-eqz p5, :cond_7

    goto :goto_3

    .line 4614
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p2

    .line 4615
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isNonResizableOrForcedResizable()Z

    move-result p3

    if-eqz p3, :cond_9

    iget-boolean p3, p2, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez p3, :cond_9

    .line 4617
    iget-object p2, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4618
    if-eqz v2, :cond_8

    .line 4619
    const/4 v1, 0x2

    goto :goto_2

    .line 4620
    :cond_8
    nop

    .line 4621
    :goto_2
    iget-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget p1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p3, p1, v1, p2}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 4624
    :cond_9
    return-void

    .line 4601
    :cond_a
    :goto_3
    iget-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {p2}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 4606
    nop

    .line 4607
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 4608
    if-eqz p1, :cond_c

    .line 4609
    if-ne p4, p1, :cond_b

    move v0, v1

    nop

    :cond_b
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 4611
    :cond_c
    return-void
.end method

.method hasAwakeDisplay()Z
    .locals 3

    .line 3557
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 3558
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 3559
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->shouldSleep()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3560
    return v1

    .line 3557
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3563
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method initPowerManagement()V
    .locals 3

    .line 665
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 666
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "ActivityManager-Sleep"

    .line 667
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 668
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "*launch*"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 669
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 670
    return-void
.end method

.method public initialize()V
    .locals 3

    .line 627
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 628
    return-void

    .line 631
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mInitialized:Z

    .line 632
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->createRunningTasks()Lcom/android/server/am/RunningTasks;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/am/RunningTasks;

    .line 633
    new-instance v0, Lcom/android/server/am/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 634
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/ActivityMetricsLogger;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    .line 635
    new-instance v0, Lcom/android/server/am/KeyguardController;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/KeyguardController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    .line 637
    new-instance v0, Lcom/android/server/am/LaunchParamsController;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/LaunchParamsController;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/am/LaunchParamsController;

    .line 638
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/am/LaunchParamsController;

    invoke-virtual {v0, p0}, Lcom/android/server/am/LaunchParamsController;->registerDefaultModifiers(Lcom/android/server/am/ActivityStackSupervisor;)V

    .line 639
    return-void
.end method

.method invalidateTaskLayers()V
    .locals 1

    .line 3816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    .line 3817
    return-void
.end method

.method isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .locals 7

    .line 1835
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    .line 1837
    return v1

    .line 1840
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object p3

    .line 1841
    const/4 v2, 0x0

    if-nez p3, :cond_1

    .line 1842
    const-string p1, "ActivityManager"

    const-string p2, "Launch on display check: display not found"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    return v2

    .line 1848
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    .line 1850
    if-nez v3, :cond_2

    .line 1853
    return v1

    .line 1857
    :cond_2
    invoke-virtual {p3, p2}, Lcom/android/server/am/ActivityDisplay;->isUidPresent(I)Z

    move-result v3

    .line 1859
    iget-object v4, p3, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getOwnerUid()I

    move-result v4

    .line 1860
    iget-object v5, p3, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_4

    iget-object v5, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v4, v5, :cond_4

    .line 1864
    iget p4, p4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, -0x80000000

    and-int/2addr p4, v5

    if-nez p4, :cond_3

    .line 1867
    return v2

    .line 1870
    :cond_3
    iget-object p4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "android.permission.ACTIVITY_EMBEDDING"

    invoke-virtual {p4, v5, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v0, :cond_4

    if-nez v3, :cond_4

    .line 1874
    return v2

    .line 1878
    :cond_4
    invoke-virtual {p3}, Lcom/android/server/am/ActivityDisplay;->isPrivate()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1882
    return v1

    .line 1886
    :cond_5
    if-ne v4, p2, :cond_6

    .line 1889
    return v1

    .line 1892
    :cond_6
    if-eqz v3, :cond_7

    .line 1895
    return v1

    .line 1898
    :cond_7
    const-string p1, "ActivityManager"

    const-string p2, "Launch on display check: denied"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    return v2
.end method

.method isCurrentProfileLocked(I)Z
    .locals 1

    .line 3958
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3959
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->isCurrentProfile(I)Z

    move-result p1

    return p1
.end method

.method isDisplayAdded(I)Z
    .locals 0

    .line 4371
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z
    .locals 2

    .line 700
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    if-eqz v0, :cond_0

    .line 701
    return v1

    .line 704
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method isFocusedStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 1

    .line 712
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 5

    .line 861
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 862
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 863
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 864
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_1

    .line 865
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 866
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 867
    if-eqz v4, :cond_0

    .line 868
    return-object v4

    .line 864
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 862
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 872
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method isStoppingNoHistoryActivity()Z
    .locals 2

    .line 3970
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3971
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isNoHistory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3972
    const/4 v0, 0x1

    return v0

    .line 3974
    :cond_0
    goto :goto_0

    .line 3976
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method lockAllProfileTasks(I)V
    .locals 7

    .line 902
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 904
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 905
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 906
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 907
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 908
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 909
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_1

    .line 910
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 915
    invoke-direct {p0, v5, p1}, Lcom/android/server/am/ActivityStackSupervisor;->taskTopActivityIsUser(Lcom/android/server/am/TaskRecord;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 916
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v5, p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskProfileLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 906
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 904
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 923
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 924
    nop

    .line 925
    return-void

    .line 923
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw p1
.end method

.method logStackState()V
    .locals 1

    .line 4641
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityMetricsLogger;->logWindowState()V

    .line 4642
    return-void
.end method

.method moveActivityToPinnedStackLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V
    .locals 26

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    .line 3361
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 3363
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    .line 3364
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getPinnedStack()Lcom/android/server/am/PinnedActivityStack;

    move-result-object v2

    .line 3368
    const/4 v10, 0x0

    if-eqz v2, :cond_0

    .line 3369
    invoke-virtual {v9, v2, v10}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 3373
    :cond_0
    const/4 v2, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v3

    const/4 v11, 0x1

    invoke-virtual {v1, v2, v3, v11}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/am/PinnedActivityStack;

    .line 3377
    move/from16 v1, p3

    invoke-virtual {v15, v1}, Lcom/android/server/am/PinnedActivityStack;->getDefaultPictureInPictureBounds(F)Landroid/graphics/Rect;

    move-result-object v14

    .line 3380
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v12

    .line 3384
    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, v15

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 3388
    iget-object v1, v12, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v11, :cond_1

    .line 3390
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v13, v15

    move-object v3, v14

    move v14, v1

    move-object v1, v15

    move v15, v2

    move-object/from16 v19, p4

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z

    goto :goto_0

    .line 3401
    :cond_1
    move-object v3, v14

    move-object v1, v15

    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v19

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3402
    invoke-virtual {v9, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    .line 3401
    move-object/from16 v21, v2

    move-object/from16 v22, v4

    invoke-virtual/range {v19 .. v25}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v12

    .line 3403
    const v2, 0x7fffffff

    const-string v4, "moveActivityToStack"

    invoke-virtual {v0, v12, v2, v4}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    .line 3406
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v13, v1

    move-object/from16 v19, p4

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 3412
    :goto_0
    iput-boolean v10, v0, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3414
    iget-object v2, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3415
    nop

    .line 3417
    const/4 v2, -0x1

    move-object/from16 v4, p2

    invoke-virtual {v1, v4, v3, v2, v11}, Lcom/android/server/am/PinnedActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 3424
    const/4 v1, 0x0

    invoke-virtual {v9, v1, v10, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3425
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 3427
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v1, v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityPinned(Lcom/android/server/am/ActivityRecord;)V

    .line 3428
    return-void

    .line 3414
    :catchall_0
    move-exception v0

    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 4

    .line 3432
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3438
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 3439
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 3440
    if-nez v2, :cond_1

    .line 3441
    const-string p2, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveActivityStackToFront: invalid task or stack: r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " task="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    return v0

    .line 3446
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v2, v3, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 3449
    return v0

    .line 3455
    :cond_2
    invoke-virtual {v2, p2, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 3456
    const/4 p1, 0x1

    return p1

    .line 3435
    :cond_3
    :goto_0
    return v0
.end method

.method moveHomeStackTaskToTop(Ljava/lang/String;)Z
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop()V

    .line 755
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 756
    if-nez v0, :cond_0

    .line 757
    const/4 p1, 0x0

    return p1

    .line 759
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 760
    const/4 p1, 0x1

    return p1
.end method

.method moveHomeStackToFront(Ljava/lang/String;)V
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method moveRecentsStackToFront(Ljava/lang/String;)V
    .locals 3

    .line 744
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 746
    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 749
    :cond_0
    return-void
.end method

.method moveStackToDisplayLocked(IIZ)V
    .locals 2

    .line 3254
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 3255
    if-eqz v0, :cond_3

    .line 3259
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3260
    if-eqz v1, :cond_2

    .line 3265
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p1

    .line 3266
    if-eqz p1, :cond_1

    .line 3271
    iget p1, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    if-eq p1, p2, :cond_0

    .line 3276
    invoke-virtual {v1, v0, p3}, Lcom/android/server/am/ActivityStack;->reparent(Lcom/android/server/am/ActivityDisplay;Z)V

    .line 3278
    return-void

    .line 3272
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to move stack="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to its current displayId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3267
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "moveStackToDisplayLocked: Stack with stack="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not attached to any display."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3261
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "moveStackToDisplayLocked: Unknown stackId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3256
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "moveStackToDisplayLocked: Unknown displayId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;IZ)V
    .locals 2

    .line 2865
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 2867
    return-void
.end method

.method moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V
    .locals 1

    .line 2861
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;IZ)V

    .line 2862
    return-void
.end method

.method moveTopStackActivityToPinnedStackLocked(ILandroid/graphics/Rect;)Z
    .locals 3

    .line 3333
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object p2

    .line 3334
    if-eqz p2, :cond_2

    .line 3339
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 3340
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3341
    const-string p1, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTopStackActivityToPinnedStackLocked: No top running activity in stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    return v0

    .line 3346
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p2, p2, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result p2

    if-nez p2, :cond_1

    .line 3347
    const-string p2, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTopStackActivityToPinnedStackLocked: Picture-In-Picture not supported for  r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    return v0

    .line 3353
    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x0

    const-string v1, "moveTopActivityToPinnedStack"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveActivityToPinnedStackLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V

    .line 3355
    const/4 p1, 0x1

    return p1

    .line 3335
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTopStackActivityToPinnedStackLocked: Unknown stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method notifyAppTransitionDone()V
    .locals 3

    .line 2772
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateRecentsHomeStackBounds()V

    .line 2773
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2774
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2775
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 2776
    if-eqz v1, :cond_0

    .line 2777
    invoke-virtual {v1, v2}, Lcom/android/server/am/TaskRecord;->setTaskDockedResizing(Z)V

    .line 2773
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2780
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2781
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 4

    .line 4348
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4349
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4

    .line 4360
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4361
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 4

    .line 4354
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4355
    return-void
.end method

.method public onRecentTaskAdded(Lcom/android/server/am/TaskRecord;)V
    .locals 0

    .line 3233
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 3234
    return-void
.end method

.method public onRecentTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V
    .locals 6

    .line 3238
    if-eqz p2, :cond_0

    .line 3241
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "recent-task-trimmed"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    .line 3244
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 3245
    return-void
.end method

.method pauseBackStacks(ZLcom/android/server/am/ActivityRecord;Z)Z
    .locals 7

    .line 1086
    nop

    .line 1087
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 1088
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityDisplay;

    .line 1089
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_1

    .line 1090
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 1091
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1094
    invoke-virtual {v5, p1, v1, p2, p3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    move-result v5

    or-int/2addr v2, v5

    .line 1089
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1087
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1099
    :cond_2
    return v2
.end method

.method prepareForShutdownLocked()V
    .locals 3

    .line 3585
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3586
    const-string/jumbo v1, "shutdown"

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->createSleepTokenLocked(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    .line 3585
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3588
    :cond_0
    return-void
.end method

.method final processStoppingActivitiesLocked(Lcom/android/server/am/ActivityRecord;ZZ)Ljava/util/ArrayList;
    .locals 6
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

    .line 3981
    nop

    .line 3983
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesVisible()Z

    move-result v0

    .line 3984
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_7

    .line 3985
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3986
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 3989
    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 3990
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3991
    nop

    .line 3992
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_0

    .line 3999
    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 4002
    :cond_0
    move v4, v5

    :cond_1
    if-eqz p2, :cond_6

    .line 4003
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4004
    if-eqz v5, :cond_2

    .line 4005
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v5

    goto :goto_1

    .line 4006
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v5

    .line 4007
    :goto_1
    if-eqz v4, :cond_3

    if-eqz v5, :cond_6

    .line 4008
    :cond_3
    if-nez p3, :cond_4

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4011
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4012
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4013
    goto :goto_2

    .line 4017
    :cond_4
    if-nez v2, :cond_5

    .line 4018
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4020
    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4024
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4025
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3984
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4030
    :cond_7
    return-object v2
.end method

.method rankTaskLayersIfNeeded()V
    .locals 6

    .line 3820
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    if-nez v0, :cond_0

    .line 3821
    return-void

    .line 3823
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    .line 3824
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3825
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 3826
    nop

    .line 3827
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v4, v0

    :goto_1
    if-ltz v3, :cond_1

    .line 3828
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 3829
    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityStack;->rankTaskLayers(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 3827
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3824
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3832
    :cond_2
    return-void
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1396
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 1403
    return v5

    .line 1406
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 1407
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 1409
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->beginDeferResume()V

    .line 1412
    :try_start_0
    invoke-virtual {v2, v3, v5}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1415
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 1417
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1419
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1420
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->notifyUnknownVisibilityLaunched()V

    .line 1427
    :cond_1
    const/4 v8, 0x1

    if-eqz p4, :cond_2

    .line 1431
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-virtual {v1, v2, v0, v5, v8}, Lcom/android/server/am/ActivityStackSupervisor;->ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z

    .line 1435
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, v2, v8, v8}, Lcom/android/server/am/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1442
    invoke-virtual {v2, v8}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 1446
    :cond_3
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    .line 1447
    :goto_0
    iget v9, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v10, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v9, v10, :cond_5

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v9, v0, :cond_6

    .line 1448
    :cond_5
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "User ID for activity changing for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " appInfo.uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " info.ai.uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " old="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " new="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :cond_6
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 1456
    iget v9, v2, Lcom/android/server/am/ActivityRecord;->launchCount:I

    add-int/2addr v9, v8

    iput v9, v2, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 1457
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, v2, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 1461
    iget-object v9, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 1462
    if-gez v9, :cond_7

    .line 1463
    iget-object v9, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1465
    :cond_7
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v3, v8, v0}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1466
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1468
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v9

    .line 1469
    iget v10, v6, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x2

    if-eq v10, v13, :cond_8

    iget v10, v6, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eq v10, v12, :cond_8

    iget v10, v6, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v10, v11, :cond_9

    .line 1472
    invoke-virtual {v9}, Lcom/android/server/am/LockTaskController;->getLockTaskModeState()I

    move-result v10

    if-ne v10, v8, :cond_9

    .line 1474
    :cond_8
    invoke-virtual {v9, v6, v5, v5}, Lcom/android/server/am/LockTaskController;->startLockTaskMode(Lcom/android/server/am/TaskRecord;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1478
    :cond_9
    :try_start_1
    iget-object v9, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v9, :cond_16

    .line 1481
    nop

    .line 1482
    nop

    .line 1483
    if-eqz p3, :cond_a

    .line 1486
    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1487
    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1492
    move-object/from16 v25, v9

    move-object/from16 v26, v10

    goto :goto_1

    :cond_a
    move-object/from16 v25, v0

    move-object/from16 v26, v25

    :goto_1
    const/16 v9, 0x7536

    new-array v10, v12, [Ljava/lang/Object;

    iget v12, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v5

    .line 1493
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v8

    iget v12, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v13

    iget-object v12, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v12, v10, v11

    .line 1492
    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1494
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1496
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    iget-object v10, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v10, v9, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 1498
    :cond_b
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 1500
    iput-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1501
    iput-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 1502
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getAppWarningsLocked()Lcom/android/server/am/AppWarnings;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/server/am/AppWarnings;->onStartActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1503
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v2}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1504
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    iput-object v9, v2, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 1505
    nop

    .line 1506
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v9, :cond_e

    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1507
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_c

    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-ne v9, v3, :cond_e

    .line 1508
    :cond_c
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v9, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 1509
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 1510
    if-eqz v9, :cond_e

    iget-object v10, v9, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-eqz v10, :cond_e

    .line 1511
    iget-object v0, v9, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_d

    .line 1513
    :try_start_2
    iget-object v0, v9, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v9, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1516
    goto :goto_2

    .line 1514
    :catch_0
    move-exception v0

    .line 1515
    :try_start_3
    invoke-virtual {v9}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 1519
    :cond_d
    :goto_2
    new-instance v0, Landroid/app/ProfilerInfo;

    invoke-direct {v0, v9}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    .line 1524
    :cond_e
    move-object/from16 v28, v0

    iput-boolean v8, v3, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 1525
    iput-boolean v8, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1526
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1531
    new-instance v0, Landroid/util/MergedConfiguration;

    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1532
    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 1533
    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityRecord;->setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 1535
    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-direct {v1, v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1539
    iget-object v9, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v9, v10}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v9

    .line 1541
    new-instance v14, Landroid/content/Intent;

    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v14, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1542
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v15

    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1545
    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    .line 1546
    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget v12, v3, Lcom/android/server/am/ProcessRecord;->repProcState:I

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    iget-object v13, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1548
    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v27

    .line 1541
    move-object/from16 v16, v10

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v21, v6

    move/from16 v22, v12

    move-object/from16 v23, v8

    move-object/from16 v24, v5

    invoke-static/range {v14 .. v28}, Landroid/app/servertransaction/LaunchActivityItem;->obtain(Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;)Landroid/app/servertransaction/LaunchActivityItem;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1553
    if-eqz p3, :cond_f

    .line 1554
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v0

    invoke-static {v0}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v0

    goto :goto_3

    .line 1556
    :cond_f
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v0

    .line 1558
    :goto_3
    invoke-virtual {v9, v0}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 1561
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1564
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/4 v5, 0x2

    and-int/2addr v0, v5

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v0, :cond_11

    .line 1570
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1571
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v3, :cond_10

    .line 1573
    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting new heavy weight process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " when already running "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_10
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 1578
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x18

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1580
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1581
    iget-object v5, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1603
    :cond_11
    nop

    .line 1605
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->endDeferResume()V

    .line 1606
    nop

    .line 1608
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1609
    invoke-virtual {v7, v2}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1610
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " being launched, but already in LRU list"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :cond_12
    if-eqz p3, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1618
    invoke-virtual {v7, v2}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_4

    .line 1625
    :cond_13
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v3, "realStartActivityLocked"

    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1632
    :goto_4
    invoke-virtual {v1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1633
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStartController;->startSetupActivity()V

    .line 1638
    :cond_14
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_15

    .line 1639
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1642
    :cond_15
    const/4 v1, 0x1

    return v1

    .line 1479
    :cond_16
    :try_start_4
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1585
    :catch_1
    move-exception v0

    .line 1586
    :try_start_5
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v4, :cond_17

    .line 1589
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second failure launching "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1590
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", giving up"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1589
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1592
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1593
    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "2nd-crash"

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1595
    nop

    .line 1605
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->endDeferResume()V

    .line 1595
    const/4 v1, 0x0

    return v1

    .line 1600
    :cond_17
    const/4 v4, 0x1

    :try_start_6
    iput-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1601
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1602
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1605
    :catchall_0
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->endDeferResume()V

    throw v0
.end method

.method releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 9

    .line 3856
    nop

    .line 3858
    nop

    .line 3860
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    move v0, v1

    :goto_0
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 3861
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3865
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_5

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 3871
    :cond_0
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v5, :cond_4

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3872
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3874
    goto :goto_1

    .line 3877
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 3878
    if-eqz v4, :cond_4

    .line 3881
    if-nez v3, :cond_2

    .line 3882
    nop

    .line 3860
    move-object v3, v4

    goto :goto_1

    .line 3883
    :cond_2
    if-eq v3, v4, :cond_4

    .line 3884
    if-nez v2, :cond_3

    .line 3885
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 3886
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3888
    :cond_3
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3860
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3867
    :cond_5
    :goto_2
    return-void

    .line 3892
    :cond_6
    if-nez v2, :cond_7

    .line 3894
    return-void

    .line 3898
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3899
    move v3, v1

    :goto_3
    if-ge v3, v0, :cond_a

    .line 3900
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityDisplay;

    .line 3901
    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    .line 3903
    move v6, v1

    :goto_4
    if-ge v6, v5, :cond_9

    .line 3904
    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 3906
    invoke-virtual {v7, p1, v2, p2}, Lcom/android/server/am/ActivityStack;->releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_8

    .line 3907
    return-void

    .line 3903
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 3899
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3911
    :cond_a
    return-void
.end method

.method removeSleepTimeouts()V
    .locals 2

    .line 4337
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 4338
    return-void
.end method

.method removeStack(Lcom/android/server/am/ActivityStack;)V
    .locals 2

    .line 3064
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$x0Vocp-itdO3YPTBM6d_k8Yij7g;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$x0Vocp-itdO3YPTBM6d_k8Yij7g;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 3065
    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .locals 2

    .line 3072
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3073
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->removeStacksInWindowingModes([I)V

    .line 3072
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3075
    :cond_0
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .locals 2

    .line 3078
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3079
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->removeStacksWithActivityTypes([I)V

    .line 3078
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3081
    :cond_0
    return-void
.end method

.method removeTaskByIdLocked(IZZLjava/lang/String;)Z
    .locals 6

    .line 3088
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method removeTaskByIdLocked(IZZZLjava/lang/String;)Z
    .locals 2

    .line 3104
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 3105
    if-eqz v1, :cond_1

    .line 3106
    invoke-virtual {v1, p4, p5}, Lcom/android/server/am/TaskRecord;->removeTaskActivitiesLocked(ZLjava/lang/String;)V

    .line 3107
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3108
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 3109
    iget-boolean p1, v1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz p1, :cond_0

    .line 3110
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 3112
    :cond_0
    return v0

    .line 3114
    :cond_1
    const-string p2, "ActivityManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Request to remove task ignored for non-existent task "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    const/4 p1, 0x0

    return p1
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2

    .line 4327
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4328
    return-void
.end method

.method removeUserLocked(I)V
    .locals 1

    .line 2168
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2169
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;J)V
    .locals 6

    .line 1205
    nop

    .line 1206
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v3, 0x1042

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v3, 0x3

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    long-to-int v5, p3

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 1216
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_4

    .line 1217
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WaitResult;

    .line 1218
    iget-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v4, :cond_3

    .line 1219
    nop

    .line 1220
    iput-boolean p1, v3, Landroid/app/WaitResult;->timeout:Z

    .line 1221
    if-eqz p2, :cond_2

    .line 1222
    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1224
    :cond_2
    iput-wide p3, v3, Landroid/app/WaitResult;->totalTime:J

    .line 1216
    move v1, v2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1228
    :cond_4
    if-eqz v1, :cond_5

    .line 1229
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1231
    :cond_5
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 0

    .line 1153
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1154
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2

    .line 3728
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3730
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3731
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3732
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3734
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3735
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3736
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 3737
    return v1

    .line 3739
    :cond_1
    return v0
.end method

.method reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/am/ActivityRecord;I)V
    .locals 6

    .line 1175
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    return-void

    .line 1179
    :cond_0
    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    .line 1180
    return-void

    .line 1183
    :cond_1
    const/4 v1, 0x0

    .line 1185
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_4

    .line 1186
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WaitResult;

    .line 1187
    iget-object v5, v4, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v5, :cond_3

    .line 1188
    nop

    .line 1189
    iput p2, v4, Landroid/app/WaitResult;->result:I

    .line 1193
    if-ne p2, v0, :cond_2

    .line 1194
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v1, v4, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1185
    :cond_2
    move v1, v3

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1199
    :cond_4
    if-eqz v1, :cond_5

    .line 1200
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1202
    :cond_5
    return-void
.end method

.method resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 8

    .line 2894
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 2897
    return-void
.end method

.method resizePinnedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    .line 2987
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getPinnedStack()Lcom/android/server/am/PinnedActivityStack;

    move-result-object v0

    .line 2988
    if-nez v0, :cond_0

    .line 2989
    const-string p1, "ActivityManager"

    const-string/jumbo p2, "resizePinnedStackLocked: pinned stack not found"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    return-void

    .line 2997
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PinnedStackWindowController;

    .line 2998
    invoke-virtual {v1}, Lcom/android/server/wm/PinnedStackWindowController;->pinnedStackResizeDisallowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2999
    return-void

    .line 3002
    :cond_1
    const-string v1, "am.resizePinnedStack"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3003
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 3005
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/am/PinnedActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 3006
    const/4 v4, 0x0

    .line 3007
    const/4 v5, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/PinnedActivityStack;->isAnimatingBoundsToFullscreen()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3009
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    .line 3010
    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3011
    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3012
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 3013
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 3015
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 3019
    invoke-virtual {v0}, Lcom/android/server/am/PinnedActivityStack;->onPipAnimationEndResize()V

    .line 3021
    :cond_3
    invoke-virtual {v0, p1, p2, v4}, Lcom/android/server/am/PinnedActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3022
    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/PinnedActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3024
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3025
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3026
    nop

    .line 3027
    return-void

    .line 3024
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3025
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V
    .locals 9

    move-object v1, p0

    move-object v0, p1

    .line 2709
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2710
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 2712
    return-void

    .line 2715
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v2

    .line 2716
    if-nez p6, :cond_1

    .line 2717
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 2720
    return-void

    .line 2723
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "am.resizeStack_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2724
    iget-object v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2726
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2727
    if-nez p2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2729
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    goto :goto_0

    .line 2730
    :cond_2
    if-eqz v2, :cond_3

    .line 2733
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 2736
    :cond_3
    :goto_0
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2737
    if-nez p7, :cond_4

    .line 2738
    nop

    .line 2739
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2738
    move v3, p5

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2742
    :cond_4
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2743
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2744
    nop

    .line 2745
    return-void

    .line 2742
    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2743
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .locals 4

    .line 1322
    if-eqz p2, :cond_0

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1323
    :goto_0
    if-eqz p2, :cond_5

    .line 1328
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1332
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1333
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 1334
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1337
    :cond_1
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_2

    .line 1338
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setNativeDebuggingAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 1341
    :cond_2
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_3

    .line 1342
    iget-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/android/server/am/ActivityManagerService;->setTrackAllocationApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 1345
    :cond_3
    if-eqz p4, :cond_4

    .line 1346
    iget-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {p3, v0, v1, p4}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    .line 1349
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchToken()Ljava/lang/String;

    move-result-object p1

    .line 1350
    iget-object p3, p2, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-nez p3, :cond_5

    if-eqz p1, :cond_5

    .line 1351
    iput-object p1, p2, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 1354
    :cond_5
    return-object p2
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;
    .locals 6

    .line 1389
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    .line 1390
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I
    .locals 0

    .line 2414
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2415
    :goto_0
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 2416
    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result p1

    .line 2418
    :cond_1
    if-eqz p1, :cond_2

    .line 2419
    return p1

    .line 2421
    :cond_2
    if-eqz p2, :cond_3

    .line 2422
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result p1

    .line 2424
    :cond_3
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
    .locals 14

    move-object v0, p0

    .line 1359
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    const-wide/16 v2, 0x40

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1361
    const-string/jumbo v4, "resolveIntent"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1362
    const/high16 v4, 0x10000

    or-int v4, p4, v4

    or-int/lit16 v4, v4, 0x400

    .line 1364
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1365
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_1

    .line 1366
    :cond_0
    const/high16 v5, 0x800000

    or-int/2addr v4, v5

    .line 1374
    :cond_1
    move v8, v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1376
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    const/4 v10, 0x1

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p3

    move/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1379
    :try_start_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1382
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1376
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 1379
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1382
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1384
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;Z)Z
    .locals 3

    .line 3206
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object p2

    .line 3207
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3208
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3210
    if-ne v0, p2, :cond_0

    .line 3212
    return v1

    .line 3216
    :cond_0
    const-string/jumbo v2, "restoreRecentTaskLocked"

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    .line 3219
    :cond_1
    const-string/jumbo v0, "restoreRecentTask"

    invoke-virtual {p2, p1, p3, v0}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    .line 3221
    invoke-virtual {p1, p3, v1}, Lcom/android/server/am/TaskRecord;->createWindowContainer(ZZ)V

    .line 3224
    iget-object p1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3225
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_2

    .line 3226
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->createWindowContainer()V

    .line 3225
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 3228
    :cond_2
    return v1
.end method

.method resumeFocusedStackTopActivityLocked()Z
    .locals 1

    .line 2236
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 2

    .line 2242
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2243
    return v1

    .line 2246
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2247
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p1

    return p1

    .line 2250
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 2251
    if-eqz p1, :cond_3

    sget-object p2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 2253
    :cond_2
    sget-object p2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2255
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, p3}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    goto :goto_1

    .line 2252
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 2258
    :cond_4
    :goto_1
    return v1
.end method

.method resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v0, :cond_0

    .line 766
    const/4 p1, 0x0

    return p1

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop()V

    .line 770
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " resumeHomeStackTask"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 774
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v1, :cond_1

    .line 775
    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 776
    iget-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p1

    return p1

    .line 778
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 4

    .line 3845
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3846
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3847
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 3848
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3849
    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3847
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3845
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3852
    :cond_1
    return-void
.end method

.method final scheduleIdleLocked()V
    .locals 2

    .line 4321
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4322
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 3

    .line 4316
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4317
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4318
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .locals 2

    .line 3771
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3772
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .locals 2

    .line 4331
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4332
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4334
    :cond_0
    return-void
.end method

.method final scheduleSleepTimeout()V
    .locals 4

    .line 4341
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 4342
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4343
    return-void
.end method

.method scheduleUpdateMultiWindowMode(Lcom/android/server/am/TaskRecord;)V
    .locals 3

    .line 4647
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4648
    return-void

    .line 4651
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 4652
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4653
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1

    .line 4654
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4651
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4658
    :cond_2
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v0, 0x72

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 4659
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4661
    :cond_3
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 3

    .line 4674
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4675
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4676
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 4677
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4681
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4674
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4684
    :cond_1
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

    .line 4686
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 p2, 0x73

    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4687
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4689
    :cond_2
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V
    .locals 1

    .line 4664
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4665
    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    .line 4666
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4670
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    .line 4671
    return-void

    .line 4667
    :cond_1
    :goto_0
    return-void
.end method

.method sendPowerHintForLaunchEndIfNeeded()V
    .locals 3

    .line 1757
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerHintSent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1759
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerHintSent:Z

    .line 1761
    :cond_0
    return-void
.end method

.method sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V
    .locals 2

    .line 1738
    nop

    .line 1740
    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 1743
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 1744
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1746
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 1749
    :cond_1
    :goto_0
    move p1, v0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz p1, :cond_3

    .line 1750
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1751
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerHintSent:Z

    .line 1753
    :cond_3
    return-void
.end method

.method sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 9

    .line 1157
    nop

    .line 1158
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_1

    .line 1159
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    .line 1160
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->matches(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1161
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->getResult()Landroid/app/WaitResult;

    move-result-object v3

    .line 1162
    nop

    .line 1163
    iput-boolean v2, v3, Landroid/app/WaitResult;->timeout:Z

    .line 1164
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1165
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->getStartTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v3, Landroid/app/WaitResult;->totalTime:J

    .line 1166
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1158
    move v3, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1169
    :cond_1
    if-eqz v3, :cond_2

    .line 1170
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1172
    :cond_2
    return-void
.end method

.method setDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)V
    .locals 2

    .line 490
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityDisplay;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 496
    return-void

    .line 492
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No display found with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setDockedStackMinimized(Z)V
    .locals 1

    .line 4702
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    .line 4703
    iget-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    if-eqz p1, :cond_0

    .line 4704
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 4705
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4708
    const-string/jumbo v0, "setDockedStackMinimized"

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    .line 4711
    :cond_0
    return-void
.end method

.method setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V
    .locals 3

    .line 717
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextFocusableStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    move-result-object p2

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq p2, v0, :cond_3

    .line 723
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 724
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 726
    iget p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 727
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 728
    move v0, v1

    goto :goto_0

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    .line 728
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 726
    :goto_1
    invoke-static {p2, v0, v1, p1}, Lcom/android/server/am/EventLogTags;->writeAmFocusedStack(IIILjava/lang/String;)V

    .line 731
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 732
    iget-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p2, p2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p2, p2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez p2, :cond_5

    .line 733
    :cond_4
    if-eqz p1, :cond_5

    iget-boolean p1, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-eqz p1, :cond_5

    .line 734
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    .line 737
    :cond_5
    return-void
.end method

.method setLaunchSource(I)V
    .locals 2

    .line 1995
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1996
    return-void
.end method

.method setNextTaskIdForUserLocked(II)V
    .locals 2

    .line 928
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 929
    if-le p1, v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 932
    :cond_0
    return-void
.end method

.method setRecentTasks(Lcom/android/server/am/RecentTasks;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 652
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {p1, p0}, Lcom/android/server/am/RecentTasks;->registerCallback(Lcom/android/server/am/RecentTasks$Callbacks;)V

    .line 653
    return-void
.end method

.method setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V
    .locals 2

    .line 4852
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4853
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->setTaskDockedResizing(Z)V

    .line 4854
    return-void
.end method

.method setSplitScreenResizing(Z)V
    .locals 7

    .line 2870
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-ne p1, v0, :cond_0

    .line 2871
    return-void

    .line 2874
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDockedStackResizing:Z

    .line 2875
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setDockedStackResizing(Z)V

    .line 2877
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    if-eqz p1, :cond_1

    .line 2878
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 2882
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    .line 2883
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    .line 2884
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    .line 2885
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    .line 2886
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    .line 2887
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    .line 2889
    :cond_1
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 6

    .line 673
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 674
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 675
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/KeyguardController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 677
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    .line 678
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 679
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 680
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 682
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p1

    .line 683
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_0

    .line 684
    aget-object v3, p1, v1

    .line 685
    new-instance v4, Lcom/android/server/am/ActivityDisplay;

    invoke-direct {v4, p0, v3}, Lcom/android/server/am/ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/view/Display;)V

    .line 686
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 687
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityDisplay;)V

    .line 683
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 690
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v2, v1, v2}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 692
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 693
    return-void

    .line 692
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method shutdownLocked(I)Z
    .locals 8

    .line 3591
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 3593
    nop

    .line 3594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 3596
    :goto_0
    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->putStacksToSleepLocked(ZZ)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 3597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    .line 3598
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 3600
    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3601
    :catch_0
    move-exception p1

    .line 3602
    :goto_1
    nop

    .line 3608
    goto :goto_0

    .line 3604
    :cond_0
    const-string v0, "ActivityManager"

    const-string v1, "Activity manager shutdown timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    nop

    .line 3606
    goto :goto_2

    .line 3614
    :cond_1
    move p1, v3

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 3616
    return p1
.end method

.method startActivityFromRecents(IIILcom/android/server/am/SafeActivityOptions;)I
    .locals 25

    move-object/from16 v1, p0

    move/from16 v0, p3

    .line 4858
    move-object/from16 v13, p4

    .line 4862
    nop

    .line 4863
    nop

    .line 4864
    const/4 v2, 0x0

    if-eqz v13, :cond_0

    .line 4865
    invoke-virtual {v13, v1}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v3

    goto :goto_0

    .line 4866
    :cond_0
    nop

    .line 4867
    move-object v3, v2

    :goto_0
    const/4 v15, 0x0

    if-eqz v3, :cond_1

    .line 4868
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v4

    .line 4869
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v5

    .line 4871
    move v14, v5

    goto :goto_1

    :cond_1
    move v4, v15

    move v14, v4

    :goto_1
    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    const/4 v12, 0x3

    if-eq v4, v12, :cond_9

    .line 4876
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 4878
    const/4 v11, 0x4

    if-ne v14, v12, :cond_2

    .line 4879
    :try_start_0
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 4880
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getSplitScreenCreateMode()I

    move-result v6

    .line 4879
    invoke-virtual {v4, v6, v2}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    .line 4885
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->deferUpdateRecentsHomeStackBounds()V

    .line 4886
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v6, 0x13

    invoke-virtual {v4, v6, v15}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_3

    .line 4935
    :catchall_0
    move-exception v0

    :goto_2
    move v4, v11

    move v3, v12

    move v5, v15

    move v15, v14

    goto/16 :goto_5

    .line 4889
    :cond_2
    :goto_3
    const/4 v4, 0x1

    invoke-virtual {v1, v0, v5, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4891
    if-eqz v10, :cond_7

    .line 4898
    if-eq v14, v12, :cond_3

    .line 4902
    :try_start_1
    const-string/jumbo v0, "startActivityFromRecents"

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    goto :goto_4

    .line 4935
    :catchall_1
    move-exception v0

    move-object v2, v10

    goto :goto_2

    .line 4907
    :cond_3
    :goto_4
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v2, v10, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4908
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4909
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4911
    invoke-virtual {v1, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 4912
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4914
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v3, v15, v13, v4}, Lcom/android/server/am/ActivityManagerService;->moveTaskToFrontLocked(IILcom/android/server/am/SafeActivityOptions;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4917
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v0, v5, v2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    .line 4919
    nop

    .line 4921
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v0

    .line 4922
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4923
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4921
    invoke-virtual {v0, v2, v5, v3}, Lcom/android/server/am/ActivityStartController;->postStartActivityProcessingForLastStarter(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4924
    nop

    .line 4935
    if-ne v14, v12, :cond_4

    if-eqz v10, :cond_4

    .line 4939
    invoke-virtual {v1, v10}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    .line 4941
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 4942
    nop

    .line 4943
    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4944
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4950
    const-string/jumbo v0, "startActivityFromRecents: homeVisibleInSplitScreen"

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 4955
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 4958
    :cond_4
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 4924
    return v5

    .line 4917
    :catchall_2
    move-exception v0

    :try_start_4
    iget-object v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v3, v5, v2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    throw v0

    .line 4926
    :cond_5
    iget-object v6, v10, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 4927
    iget-object v7, v10, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 4928
    const/high16 v0, 0x100000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4929
    iget v0, v10, Lcom/android/server/am/TaskRecord;->userId:I

    .line 4930
    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v2

    iget v3, v10, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string/jumbo v19, "startActivityFromRecents"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v22, v10

    move-object/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v23, v14

    move v14, v0

    move-object/from16 v15, v22

    move-object/from16 v16, v19

    move/from16 v17, v20

    move-object/from16 v18, v21

    :try_start_5
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 4935
    move/from16 v15, v23

    const/4 v3, 0x3

    if-ne v15, v3, :cond_6

    move-object/from16 v2, v22

    if-eqz v2, :cond_6

    .line 4939
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    .line 4941
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    .line 4942
    nop

    .line 4943
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 4944
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4950
    const-string/jumbo v2, "startActivityFromRecents: homeVisibleInSplitScreen"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 4955
    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 4958
    :cond_6
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 4930
    return v0

    .line 4935
    :catchall_3
    move-exception v0

    move-object/from16 v2, v22

    move/from16 v15, v23

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    goto :goto_5

    .line 4892
    :cond_7
    move-object v2, v10

    move v4, v11

    move v3, v12

    move v5, v15

    move v15, v14

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateRecentsHomeStackBounds()V

    .line 4893
    iget-object v6, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 4894
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startActivityFromRecents: Task "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 4935
    :catchall_4
    move-exception v0

    :goto_5
    if-ne v15, v3, :cond_8

    if-eqz v2, :cond_8

    .line 4939
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    .line 4941
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    .line 4942
    nop

    .line 4943
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 4944
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4950
    const-string/jumbo v2, "startActivityFromRecents: homeVisibleInSplitScreen"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 4955
    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 4958
    :cond_8
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    .line 4872
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityFromRecents: Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " can\'t be launch in the home/recents stack."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 11

    .line 1704
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1707
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_3

    .line 1709
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    const-string v1, "android"

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1710
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1715
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v2, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1718
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v1, :cond_2

    .line 1719
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Already Exists in BG. So sending its PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v2, 0x1081

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v5, 0x65

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1722
    :cond_2
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1723
    return-void

    .line 1724
    :catch_0
    move-exception p2

    .line 1725
    const-string p3, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception when starting activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1726
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1725
    invoke-static {p3, v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1733
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object p2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "activity"

    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1734
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1733
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    .line 1735
    return-void
.end method

.method switchUserLocked(ILcom/android/server/am/UserState;)Z
    .locals 6

    .line 3914
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    .line 3916
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3917
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3918
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v4, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {p0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 3923
    :cond_1
    new-array v1, v3, [I

    const/4 v4, 0x2

    aput v4, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->removeStacksInWindowingModes([I)V

    .line 3925
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 3926
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3927
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 3929
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3930
    iget-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v3

    :goto_1
    if-ltz p2, :cond_4

    .line 3931
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3932
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_2
    if-ltz v2, :cond_3

    .line 3933
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 3934
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->switchUserLocked(I)V

    .line 3935
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 3936
    if-eqz v5, :cond_2

    .line 3937
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 3932
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 3930
    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 3942
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 3943
    if-nez p1, :cond_5

    .line 3944
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 3946
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result p2

    .line 3947
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3948
    const-string/jumbo v0, "switchUserOnHomeDisplay"

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_3

    .line 3951
    :cond_6
    const/4 p1, 0x0

    const-string/jumbo v0, "switchUserOnOtherDisplay"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 3953
    :goto_3
    return p2
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .line 1234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;
    .locals 4

    .line 1246
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1247
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1248
    if-eqz v1, :cond_0

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isValidTopRunningActivity(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1249
    return-object v1

    .line 1253
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    .line 1255
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    .line 1256
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1257
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1261
    if-nez v2, :cond_1

    .line 1262
    goto :goto_1

    .line 1267
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1270
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne v2, v0, :cond_2

    .line 1271
    goto :goto_1

    .line 1274
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1277
    if-nez v2, :cond_3

    .line 1278
    goto :goto_1

    .line 1285
    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isValidTopRunningActivity(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1286
    return-object v2

    .line 1255
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1290
    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 4

    .line 2262
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2263
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 2264
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 2265
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2266
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2264
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2262
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2269
    :cond_1
    return-void
.end method

.method updatePictureInPictureMode(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;Z)V
    .locals 3

    .line 4692
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 4693
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4694
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4695
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 4696
    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    .line 4693
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4699
    :cond_1
    return-void
.end method

.method updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 6

    .line 2208
    nop

    .line 2209
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_3

    .line 2210
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 2211
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    .line 2212
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2213
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2214
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2215
    if-eqz v2, :cond_0

    .line 2216
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_2

    .line 2217
    :cond_0
    iget-object v2, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_2

    .line 2218
    iget-object v1, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_2

    .line 2211
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2209
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2227
    :cond_3
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v1, :cond_4

    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v1, :cond_4

    .line 2230
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 2231
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v1, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v1, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .line 2233
    :cond_4
    return-void
.end method

.method updateUIDsPresentOnDisplay()V
    .locals 4

    .line 1904
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1905
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1906
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 1908
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1909
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    .line 1910
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getPresentUIDs()Landroid/util/IntArray;

    move-result-object v1

    .line 1909
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1905
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1914
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayAccessUIDs(Landroid/util/SparseArray;)V

    .line 1915
    return-void
.end method

.method updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V
    .locals 1

    .line 2176
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-eq p1, v0, :cond_1

    .line 2177
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget p2, p2, Lcom/android/server/am/ActivityStack;->mStackId:I

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2179
    :cond_1
    return-void
.end method

.method validateTopActivitiesLocked()V
    .locals 8

    .line 4034
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_9

    .line 4035
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4036
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_8

    .line 4037
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4038
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4039
    if-nez v4, :cond_0

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v5

    .line 4040
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4041
    if-nez v4, :cond_1

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "validateTop...: null top activity, stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4044
    :cond_1
    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 4045
    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_2

    const-string v3, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateTop...: top stack has pausing activity r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4048
    :cond_2
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v3, :cond_3

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v3, :cond_3

    const-string v3, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateTop...: activity in front not resumed r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    :cond_3
    goto :goto_3

    .line 4053
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4054
    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_5

    const-string v3, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateTop...: back stack has resumed activity r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
    :cond_5
    if-eqz v4, :cond_7

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v3, :cond_6

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v3, :cond_7

    :cond_6
    const-string v3, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateTop...: activity in back resumed r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 4034
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 4062
    :cond_9
    return-void
.end method

.method waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V
    .locals 1

    .line 1134
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;-><init>(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V

    .line 1135
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    return-void
.end method

.method wakeUp(Ljava/lang/String;)V
    .locals 5

    .line 4714
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.server.am:TURN_ON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 4715
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 4

    .line 4097
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 4098
    const/4 v0, 0x0

    const-wide v1, 0x10b00000001L

    invoke-super {p0, p1, v1, v2, v0}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 4099
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4100
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4101
    const-wide v2, 0x20b00000002L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/am/ActivityDisplay;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4099
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4103
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/KeyguardController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4104
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    const-wide v1, 0x10500000004L

    if-eqz v0, :cond_2

    .line 4105
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4106
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4107
    if-eqz v0, :cond_1

    .line 4108
    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4110
    :cond_1
    goto :goto_1

    .line 4111
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4113
    :goto_1
    const-wide v0, 0x10800000006L

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 4114
    invoke-virtual {v2, v3}, Lcom/android/server/am/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v2

    .line 4113
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4115
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4116
    return-void
.end method
