.class Lcom/android/server/am/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStarter$Request;,
        Lcom/android/server/am/ActivityStarter$DefaultFactory;,
        Lcom/android/server/am/ActivityStarter$Factory;
    }
.end annotation


# static fields
.field private static final INVALID_LAUNCH_MODE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAddingToTask:Z

.field private mAvoidMoveToFront:Z

.field private mCallingUid:I

.field private final mController:Lcom/android/server/am/ActivityStartController;

.field private mDoResume:Z

.field private mInTask:Lcom/android/server/am/TaskRecord;

.field private mIntent:Landroid/content/Intent;

.field private mIntentDelivered:Z

.field private final mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

.field private mKeepCurTransition:Z

.field private final mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

.field private mLastStartActivityResult:I

.field private mLastStartActivityTimeMs:J

.field private mLastStartReason:Ljava/lang/String;

.field private mLaunchFlags:I

.field private mLaunchMode:I

.field private mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

.field private mLaunchTaskBehind:Z

.field private mMovedToFront:Z

.field private mNewTaskInfo:Landroid/content/pm/ActivityInfo;

.field private mNewTaskIntent:Landroid/content/Intent;

.field private mNoAnimation:Z

.field private mNotTop:Lcom/android/server/am/ActivityRecord;

.field private mOptions:Landroid/app/ActivityOptions;

.field public mPerf:Landroid/util/BoostFramework;

.field private mPreferredDisplayId:I

.field private mRequest:Lcom/android/server/am/ActivityStarter$Request;

.field private mReuseTask:Lcom/android/server/am/TaskRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSourceRecord:Lcom/android/server/am/ActivityRecord;

.field private mSourceStack:Lcom/android/server/am/ActivityStack;

.field private mStartActivity:Lcom/android/server/am/ActivityRecord;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTargetStack:Lcom/android/server/am/ActivityStack;

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStartController;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStartInterceptor;)V
    .locals 2

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 187
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    .line 200
    new-instance v1, Lcom/android/server/am/ActivityStarter$Request;

    invoke-direct {v1}, Lcom/android/server/am/ActivityStarter$Request;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    .line 424
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    .line 425
    iput-object p2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 426
    iput-object p3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 427
    iput-object p4, p0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    .line 428
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStarter;->reset(Z)V

    .line 429
    new-instance p1, Landroid/util/BoostFramework;

    invoke-direct {p1}, Landroid/util/BoostFramework;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 430
    return-void
.end method

.method private addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 2

    .line 2357
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2360
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    goto :goto_1

    .line 2358
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 2362
    :goto_1
    return-void
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I
    .locals 2

    .line 2366
    const/high16 v0, 0x80000

    and-int v1, p4, v0

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 2369
    :cond_0
    const-string p1, "ActivityManager"

    const-string p2, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    const p1, -0x8080001

    and-int/2addr p4, p1

    goto :goto_0

    .line 2374
    :cond_1
    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2384
    :pswitch_0
    const p1, -0x8000001

    and-int/2addr p4, p1

    goto :goto_0

    .line 2381
    :pswitch_1
    or-int/2addr p4, v0

    .line 2382
    goto :goto_0

    .line 2378
    :pswitch_2
    or-int/2addr p4, v0

    .line 2379
    goto :goto_0

    .line 2376
    :pswitch_3
    nop

    .line 2388
    :goto_0
    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private canLaunchIntoFocusedStack(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 4

    .line 2452
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 2454
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2455
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeAssistant()Z

    move-result p1

    goto :goto_1

    .line 2457
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    .line 2476
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 2477
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 2480
    :cond_1
    move p1, v2

    goto :goto_1

    .line 2471
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result p1

    .line 2472
    goto :goto_1

    .line 2467
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result p1

    .line 2468
    goto :goto_1

    .line 2462
    :cond_2
    nop

    .line 2463
    nop

    .line 2480
    :goto_0
    move p1, v3

    :goto_1
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    iget p1, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    iget p2, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne p1, p2, :cond_3

    move v2, v3

    nop

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private computeLaunchingTaskFlags()V
    .locals 8

    .line 1731
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/high16 v4, 0x10000000

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1732
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1733
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1734
    if-eqz v0, :cond_5

    .line 1742
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1743
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1748
    if-nez v5, :cond_0

    goto :goto_0

    .line 1749
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1750
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller with mInTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has root "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but target is singleInstance/Task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1744
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1745
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to launch singleInstance/Task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " into different task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1757
    :cond_2
    :goto_0
    if-nez v5, :cond_3

    .line 1760
    iget v5, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v6, -0x18082001

    and-int/2addr v5, v6

    .line 1761
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v6, 0x18082000

    and-int/2addr v0, v6

    or-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1762
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v5, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1763
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v5}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1764
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_1

    .line 1769
    :cond_3
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_4

    .line 1770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_1

    .line 1773
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1776
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 1777
    goto :goto_2

    .line 1735
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1736
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching into task without base intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1778
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1784
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1785
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1786
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1790
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_b

    .line 1791
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_9

    .line 1794
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v4

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_b

    .line 1795
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_3

    .line 1799
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-ne v0, v3, :cond_a

    .line 1803
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_3

    .line 1804
    :cond_a
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1807
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1810
    :cond_b
    :goto_3
    return-void
.end method

.method static computeResolveFilterUid(III)I
    .locals 1

    .line 1257
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_0

    .line 1258
    nop

    .line 1257
    move p0, p2

    goto :goto_0

    .line 1259
    :cond_0
    if-ltz p0, :cond_1

    goto :goto_0

    .line 1257
    :cond_1
    move p0, p1

    :goto_0
    return p0
.end method

.method private computeSourceStack()V
    .locals 5

    .line 1813
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1814
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1815
    return-void

    .line 1817
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 1818
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1819
    return-void

    .line 1826
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 1827
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity called from finishing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1830
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 1836
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1837
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 1839
    :cond_3
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1840
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1841
    return-void
.end method

.method private computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .locals 4

    .line 2393
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2394
    invoke-direct {p0, p1, p3, v0, p4}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object p3

    .line 2395
    if-eqz p3, :cond_0

    .line 2396
    return-object p3

    .line 2399
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2400
    :goto_0
    if-eqz v1, :cond_2

    .line 2401
    iget-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 2410
    return-object v1

    .line 2413
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStarter;->canLaunchIntoFocusedStack(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2416
    iget-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object p1

    .line 2419
    :cond_3
    iget p2, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz p2, :cond_4

    .line 2421
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget p3, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {p2, p3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object p3

    .line 2422
    if-nez p3, :cond_4

    .line 2427
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget p3, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {p2, p1, p3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;

    move-result-object p3

    .line 2430
    :cond_4
    if-nez p3, :cond_7

    .line 2432
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p2

    .line 2433
    invoke-virtual {p2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result p3

    const/4 v1, 0x1

    sub-int/2addr p3, v1

    :goto_1
    if-ltz p3, :cond_6

    .line 2434
    invoke-virtual {p2, p3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2435
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2438
    return-object v2

    .line 2433
    :cond_5
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 2442
    :cond_6
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p2, p1, p4, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object p3

    .line 2446
    :cond_7
    return-object p3
.end method

.method private createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 12

    move-object v7, p1

    .line 942
    if-eqz v7, :cond_0

    iget-boolean v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_0

    .line 944
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    move-object v1, v7

    move-object v2, p2

    move-object/from16 v3, p5

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 948
    :cond_0
    nop

    .line 950
    invoke-static {p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 951
    const/4 v0, 0x0

    if-nez v7, :cond_1

    .line 956
    move-object v3, v0

    goto :goto_0

    .line 951
    :cond_1
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 956
    move-object v3, v1

    :goto_0
    if-nez v7, :cond_2

    .line 957
    move-object v8, v0

    goto :goto_1

    .line 956
    :cond_2
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    .line 957
    move-object v8, v1

    :goto_1
    if-nez v7, :cond_3

    move-object v9, v0

    goto :goto_2

    :cond_3
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object v9, v1

    :goto_2
    if-eqz v7, :cond_4

    iget-boolean v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 959
    :goto_3
    move v10, v1

    if-nez v7, :cond_5

    .line 948
    :goto_4
    move-object v11, v0

    goto :goto_5

    .line 959
    :cond_5
    iget-object v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    goto :goto_4

    .line 948
    :goto_5
    move-object v1, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v11}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V
    .locals 3

    .line 2159
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_0

    .line 2160
    return-void

    .line 2163
    :cond_0
    const/16 v0, 0x7533

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2164
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2166
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 2167
    return-void
.end method

.method static getExternalResult(I)I
    .locals 1

    .line 574
    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .locals 6

    .line 2488
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    .line 2489
    iget-object p1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    return-object p1

    .line 2492
    :cond_0
    and-int/lit16 p2, p2, 0x1000

    if-eqz p2, :cond_7

    iget p2, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz p2, :cond_1

    goto :goto_1

    .line 2504
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 2506
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq p2, v0, :cond_3

    .line 2508
    return-object p2

    .line 2510
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne p3, v0, :cond_4

    .line 2513
    iget-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object p1

    .line 2516
    :cond_4
    const/4 v0, 0x1

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2519
    iget-object p4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p4, p1, v1, p3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    move-result p1

    .line 2520
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p2, p3, p1, v0}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object p1

    return-object p1

    .line 2526
    :cond_5
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2527
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object p2

    .line 2528
    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2530
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p2, p1, p4, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object p1

    return-object p1

    .line 2532
    :cond_6
    return-object p2

    .line 2497
    :cond_7
    :goto_1
    iget p2, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    .line 2498
    :goto_2
    move v5, p2

    goto :goto_3

    .line 2497
    :cond_8
    const/4 p2, -0x1

    goto :goto_2

    .line 2498
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;

    move-result-object p1

    return-object p1
.end method

.method private getPreferedDisplayId(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)I
    .locals 2

    .line 1893
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz p2, :cond_0

    .line 1894
    return v0

    .line 1898
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget p2, p2, Lcom/android/server/am/ActivityManagerService;->mVr2dDisplayId:I

    .line 1899
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 1903
    return p2

    .line 1908
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result p2

    goto :goto_0

    .line 1909
    :cond_2
    move p2, v1

    :goto_0
    if-eq p2, v1, :cond_3

    .line 1910
    return p2

    .line 1913
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result p1

    goto :goto_1

    .line 1915
    :cond_4
    move p1, v1

    :goto_1
    if-eq p1, v1, :cond_5

    .line 1916
    return p1

    .line 1918
    :cond_5
    return v0
.end method

.method private getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;
    .locals 8

    .line 1853
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x8000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_1

    .line 1855
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1859
    :cond_1
    move v0, v4

    goto :goto_0

    .line 1855
    :cond_2
    nop

    .line 1859
    move v0, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    and-int/2addr v0, v5

    .line 1860
    nop

    .line 1861
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_5

    .line 1862
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1863
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1864
    move-object v6, v0

    goto :goto_2

    .line 1863
    :cond_4
    nop

    .line 1864
    :goto_2
    goto :goto_3

    :cond_5
    if-eqz v0, :cond_9

    .line 1865
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v2, v0, :cond_6

    .line 1868
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1869
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    .line 1868
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    goto :goto_3

    .line 1870
    :cond_6
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    .line 1873
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-eq v1, v6, :cond_7

    move v3, v4

    nop

    :cond_7
    invoke-virtual {v0, v2, v5, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    goto :goto_3

    .line 1877
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 1880
    :cond_9
    :goto_3
    return-object v6
.end method

.method static isDocumentLaunchesIntoExisting(I)Z
    .locals 1

    .line 2543
    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLaunchModeOneOf(II)Z
    .locals 1

    .line 2539
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne p2, p1, :cond_0

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

.method private maybeLogActivityStart(ILjava/lang/String;ILandroid/content/Intent;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/PendingIntentRecord;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v4, p1

    move/from16 v8, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 893
    const/4 v1, 0x0

    if-eqz v2, :cond_0

    .line 894
    iget-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    goto :goto_0

    .line 895
    :cond_0
    nop

    .line 896
    move v5, v1

    :goto_0
    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isActivityStartsLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v5, :cond_8

    if-nez v3, :cond_1

    goto/16 :goto_9

    .line 903
    :cond_1
    const-wide/16 v14, 0x40

    :try_start_0
    const-string v5, "logActivityStart"

    invoke-static {v14, v15, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 904
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v6

    .line 905
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 906
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowManagerService;->isAnyWindowVisibleForUid(I)Z

    move-result v7

    .line 907
    if-ne v4, v8, :cond_2

    .line 908
    nop

    .line 910
    move v9, v6

    goto :goto_1

    .line 909
    :cond_2
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v5

    .line 910
    move v9, v5

    :goto_1
    if-ne v4, v8, :cond_3

    .line 911
    nop

    .line 913
    move v10, v7

    goto :goto_2

    .line 912
    :cond_3
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService;->isAnyWindowVisibleForUid(I)Z

    move-result v5

    .line 913
    move v10, v5

    :goto_2
    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 914
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v11, -0x1

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 915
    move v13, v5

    goto :goto_3

    .line 914
    :cond_4
    nop

    .line 915
    move v13, v11

    :goto_3
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v13}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v16

    .line 916
    if-eq v13, v11, :cond_5

    .line 917
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v13}, Lcom/android/server/wm/WindowManagerService;->isAnyWindowVisibleForUid(I)Z

    move-result v5

    .line 919
    move/from16 v17, v5

    goto :goto_4

    .line 918
    :cond_5
    nop

    .line 919
    move/from16 v17, v1

    :goto_4
    if-eq v13, v11, :cond_6

    .line 920
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v13}, Lcom/android/server/am/ActivityManagerService;->getPendingTempWhitelistTagForUidLocked(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 921
    :cond_6
    const/4 v5, 0x0

    .line 923
    :goto_5
    move-object/from16 v18, v5

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p7, :cond_7

    const/4 v1, 0x1

    :goto_6
    move/from16 v19, v1

    goto :goto_7

    :cond_7
    goto :goto_6

    :goto_7
    move-object/from16 v1, p4

    move-object/from16 v5, p2

    move v11, v13

    move/from16 v13, v16

    move/from16 v14, v17

    move-object/from16 v15, v18

    move/from16 v16, v19

    :try_start_1
    invoke-virtual/range {v0 .. v16}, Lcom/android/server/am/ActivityMetricsLogger;->logActivityStart(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;ILjava/lang/String;IZIIZILjava/lang/String;IZLjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 932
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 933
    nop

    .line 934
    return-void

    .line 932
    :catchall_0
    move-exception v0

    const-wide/16 v1, 0x40

    goto :goto_8

    :catchall_1
    move-exception v0

    move-wide v1, v14

    :goto_8
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 899
    :cond_8
    :goto_9
    return-void
.end method

.method private onExecutionComplete()V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStartController;->onExecutionComplete(Lcom/android/server/am/ActivityStarter;)V

    .line 583
    return-void
.end method

.method private resumeTargetStackIfNeeded()V
    .locals 4

    .line 2112
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_0

    .line 2115
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2117
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    .line 2118
    return-void
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .locals 9

    .line 1713
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1715
    move-object v2, v0

    goto :goto_0

    .line 1714
    :cond_0
    nop

    .line 1715
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    .line 1720
    const-string v0, "ActivityManager"

    const-string v3, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1724
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1726
    :cond_1
    return-void
.end method

.method private setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 14

    move-object v0, p0

    move-object v8, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    .line 1604
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStarter;->reset(Z)V

    .line 1606
    iput-object v8, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1607
    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1608
    iput-object v6, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1609
    iget v1, v8, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1610
    iput-object v12, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1611
    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1612
    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1614
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {v0, v1, v2, v6}, Lcom/android/server/am/ActivityStarter;->getPreferedDisplayId(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    .line 1616
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    .line 1618
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v1

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    const/4 v3, 0x0

    move-object v2, v9

    move-object v4, v8

    move-object v5, v12

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/LaunchParamsController;->calculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .line 1621
    iget v1, v8, Lcom/android/server/am/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    .line 1623
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v13

    :goto_0
    iget v4, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v5, 0x2

    if-ne v5, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v13

    :goto_1
    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1625
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 1623
    invoke-direct {v0, v8, v1, v4, v6}, Lcom/android/server/am/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1626
    iget-boolean v1, v8, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    const/high16 v4, 0x80000

    if-eqz v1, :cond_2

    .line 1627
    invoke-direct {v0, v5, v2}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v13

    :goto_2
    iput-boolean v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1630
    invoke-direct {v0}, Lcom/android/server/am/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 1632
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_3

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_3

    .line 1633
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1638
    :cond_3
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 1639
    iget-boolean v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_4

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v1, v5, :cond_5

    .line 1641
    :cond_4
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1647
    :cond_5
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x40000

    and-int/2addr v2, v4

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_3

    :cond_6
    move v2, v13

    :goto_3
    iput-boolean v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1654
    iput-boolean v10, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1655
    if-eqz v10, :cond_7

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1656
    :cond_7
    iput-boolean v3, v8, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1657
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1660
    :cond_8
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 1661
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_b

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1662
    iput-boolean v3, v8, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    .line 1663
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1664
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1665
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    .line 1664
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1666
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_4

    .line 1667
    :cond_9
    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_a

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1671
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1672
    iput-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1674
    :cond_a
    goto :goto_5

    .line 1675
    :cond_b
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1676
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1677
    iput-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1681
    :cond_c
    :goto_5
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_d

    move-object v1, v8

    goto :goto_6

    :cond_d
    move-object v1, v2

    :goto_6
    iput-object v1, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 1683
    iput-object v9, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1688
    if-eqz v9, :cond_e

    iget-boolean v1, v9, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v1, :cond_e

    .line 1689
    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting activity in task not in recents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1693
    :cond_e
    iput v11, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1697
    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_10

    .line 1698
    nop

    .line 1699
    if-nez v12, :cond_f

    .line 1700
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1703
    move-object v12, v1

    :cond_f
    iget-object v1, v12, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, v8, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1705
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1709
    :cond_10
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    move v13, v3

    nop

    :cond_11
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 1710
    return-void
.end method

.method private setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 14

    .line 1928
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1929
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1934
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1935
    if-nez v0, :cond_0

    .line 1936
    nop

    .line 1938
    move-object v2, v1

    goto :goto_0

    .line 1936
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1938
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    goto :goto_1

    .line 1939
    :cond_1
    move-object v2, v1

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_d

    .line 1940
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-ne v2, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eq v2, v0, :cond_d

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v0, :cond_d

    .line 1942
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v2, 0x400000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1943
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1944
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-ne v0, v2, :cond_d

    .line 1946
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_4

    .line 1947
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 1956
    :cond_4
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v2, 0x10008000

    and-int/2addr v0, v2

    const/4 v4, 0x1

    if-ne v0, v2, :cond_5

    .line 1959
    move v0, v4

    goto :goto_2

    .line 1956
    :cond_5
    nop

    .line 1959
    move v0, v3

    :goto_2
    if-nez v0, :cond_d

    .line 1960
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1961
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1960
    invoke-direct {p0, v0, v2, v5, v6}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1962
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 1963
    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-ne v0, v2, :cond_6

    goto/16 :goto_5

    .line 1970
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1971
    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_7

    .line 1974
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-string v13, "launchToSide"

    move-object v7, v6

    move-object v8, v0

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    goto :goto_3

    .line 1982
    :cond_7
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v10, "bringToFrontInsteadOfAdjacentLaunch"

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 1986
    :goto_3
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    .line 1987
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eq v0, v2, :cond_8

    move v0, v4

    goto :goto_4

    :cond_8
    move v0, v3

    :goto_4
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_6

    .line 1988
    :cond_9
    iget v2, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v5, v5, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v2, v5, :cond_a

    .line 1992
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-string/jumbo v13, "reparentToDisplay"

    move-object v8, v0

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 1995
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_6

    .line 1996
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1997
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2002
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-string/jumbo v13, "reparentingHome"

    move-object v8, v0

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2005
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_6

    .line 1967
    :cond_b
    :goto_5
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v10, "bringingFoundTaskToFront"

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 1969
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 2007
    :cond_c
    :goto_6
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2011
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2018
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2019
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_e

    .line 2022
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string v1, "intentActivityFound"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2025
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 2029
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 2030
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    return-object p1

    .line 2032
    :cond_f
    return-object p1
.end method

.method private setTaskFromInTask()I
    .locals 11

    .line 2270
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2271
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    const/16 v0, 0x65

    return v0

    .line 2275
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2279
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2280
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v4, :cond_3

    .line 2282
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    .line 2283
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2284
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v9, "inTaskToFront"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2286
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 2289
    return v2

    .line 2291
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2292
    const/4 v0, 0x3

    return v0

    .line 2296
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v0, :cond_4

    .line 2297
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v8, "inTaskToFront"

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2301
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2302
    return v1

    .line 2305
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2307
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 2308
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eq v5, v0, :cond_5

    .line 2309
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v10, "inTaskToFront"

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2311
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2314
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v1, v1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityStarter;->updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    .line 2317
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v7, "inTaskToFront"

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v1, "setTaskFromInTask"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2324
    const/4 v0, 0x0

    return v0
.end method

.method private setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 5

    .line 2036
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v1, 0x10008000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2047
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p1

    .line 2048
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 2049
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 2050
    iget-object p1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2051
    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_7

    const/4 v0, 0x3

    const/4 v2, 0x2

    .line 2052
    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2076
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2081
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v1, v0, :cond_4

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 2083
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2084
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_3

    .line 2085
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2087
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_1

    .line 2088
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2091
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2092
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    .line 2094
    :cond_5
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_6

    .line 2099
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2100
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    .line 2101
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_9

    .line 2107
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_1

    .line 2053
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2055
    if-nez v0, :cond_8

    .line 2059
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2062
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 2065
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 2066
    iget-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p1

    .line 2067
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2070
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2072
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/2addr v1, v2

    const-string/jumbo v2, "startActivityUnchecked"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    .line 2076
    :cond_8
    nop

    .line 2109
    :cond_9
    :goto_1
    return-void
.end method

.method private setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)I
    .locals 13

    .line 2122
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x1

    invoke-direct {p0, p2, v2, v0, v1}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2127
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez p2, :cond_2

    .line 2128
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2129
    invoke-virtual {p2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v4

    .line 2130
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2131
    :goto_0
    move-object v5, p2

    goto :goto_1

    .line 2130
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object p2, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 2131
    :goto_1
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    :goto_2
    move-object v6, p2

    goto :goto_3

    :cond_1
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    goto :goto_2

    :goto_3
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-boolean p2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/lit8 v9, p2, 0x1

    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v12, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2128
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;

    move-result-object p2

    .line 2134
    const-string/jumbo v0, "setTaskFromReuseOrCreateNewTask - mReuseTask"

    invoke-direct {p0, p2, v0}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2135
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityStarter;->updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    .line 2139
    goto :goto_4

    .line 2140
    :cond_2
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v0, "setTaskFromReuseOrCreateNewTask"

    invoke-direct {p0, p2, v0}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2143
    :goto_4
    if-eqz p1, :cond_3

    .line 2144
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p2, p1}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 2147
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2148
    const-string p1, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    const/16 p1, 0x65

    return p1

    .line 2152
    :cond_4
    iget-boolean p1, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz p1, :cond_5

    .line 2153
    iget-object p1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo p2, "reuseOrNewTask"

    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2155
    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private setTaskFromSourceRecord()I
    .locals 12

    .line 2170
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2171
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    const/16 v0, 0x65

    return v0

    .line 2174
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2175
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2176
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/16 v5, 0x1081

    .line 2177
    invoke-virtual {v4, v5, v0, v2, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    .line 2181
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2182
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2187
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_0

    .line 2188
    :cond_2
    iget v4, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 2189
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    const/4 v11, 0x0

    if-ne v5, v0, :cond_4

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2190
    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 2191
    :cond_3
    move v5, v11

    goto :goto_2

    .line 2190
    :cond_4
    :goto_1
    nop

    .line 2191
    move v5, v3

    :goto_2
    if-eqz v5, :cond_6

    .line 2192
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2196
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v5, :cond_5

    iget v5, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v4, v5, :cond_5

    .line 2198
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2201
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v4, :cond_6

    .line 2204
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2209
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_7

    .line 2210
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    goto :goto_3

    .line 2211
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eq v2, v1, :cond_8

    .line 2212
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v10, "launchToSide"

    move-object v4, v0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2216
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 2217
    if-eq v1, v0, :cond_9

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v1, :cond_9

    .line 2218
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v9, "sourceTaskToFront"

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_4

    .line 2220
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_a

    .line 2221
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v2, "sourceStackToFront"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2224
    :cond_a
    :goto_4
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x7533

    if-nez v1, :cond_d

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x4000000

    and-int/2addr v1, v6

    if-eqz v1, :cond_d

    .line 2227
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2228
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 2229
    if-eqz v1, :cond_c

    .line 2230
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-static {v5, v0, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2231
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2233
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2234
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_b

    .line 2235
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2237
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2238
    return v2

    .line 2240
    :cond_c
    goto :goto_5

    :cond_d
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v1, :cond_f

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-eqz v1, :cond_f

    .line 2244
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2245
    if-eqz v1, :cond_f

    .line 2246
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2247
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2248
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2249
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-static {v5, v3, v0}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2250
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2251
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2252
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_e

    .line 2253
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2255
    :cond_e
    return v2

    .line 2261
    :cond_f
    :goto_5
    const-string/jumbo v1, "setTaskFromSourceRecord"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2264
    return v11
.end method

.method private setTaskToCurrentTopOrCreateNewTask()V
    .locals 11

    .line 2342
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2343
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_0

    .line 2344
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string v1, "addingToTopTask"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2346
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2347
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v2, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2348
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v2

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v9, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2347
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2350
    :goto_0
    const-string/jumbo v1, "setTaskToCurrentTopOrCreateNewTask"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2351
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 2354
    return-void
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;)I
    .locals 27

    move-object/from16 v15, p0

    .line 551
    invoke-static/range {p23 .. p23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    move-object/from16 v0, p23

    iput-object v0, v15, Lcom/android/server/am/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 556
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    const/16 v25, 0x0

    aput-object v1, v0, v25

    .line 558
    iget-object v14, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v21, v14

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v22, p22

    move/from16 v23, p24

    move-object/from16 v24, p25

    invoke-direct/range {v0 .. v24}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;ZLcom/android/server/am/PendingIntentRecord;)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    .line 564
    if-eqz p21, :cond_0

    .line 566
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v0, v25

    aput-object v0, p21, v25

    .line 569
    :cond_0
    iget v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    invoke-static {v0}, Lcom/android/server/am/ActivityStarter;->getExternalResult(I)I

    move-result v0

    return v0

    .line 552
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need to specify a reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;ZLcom/android/server/am/PendingIntentRecord;)I
    .locals 49

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v7, p4

    move-object/from16 v6, p5

    move-object/from16 v1, p9

    move/from16 v5, p16

    move/from16 v4, p17

    move-object/from16 v3, p18

    .line 594
    nop

    .line 597
    if-eqz v3, :cond_0

    invoke-virtual/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v10

    .line 599
    move-object/from16 v23, v10

    goto :goto_0

    .line 597
    :cond_0
    nop

    .line 599
    const/16 v23, 0x0

    .line 600
    :goto_0
    if-eqz v0, :cond_2

    .line 601
    iget-object v10, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    .line 602
    if-eqz v10, :cond_1

    .line 603
    iget v0, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 604
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 613
    move/from16 v24, v0

    move-object v12, v10

    move v13, v11

    const/4 v11, 0x0

    goto :goto_1

    .line 606
    :cond_1
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to find app for caller "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") when starting: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 606
    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/16 v11, -0x5e

    .line 613
    move/from16 v13, p13

    move/from16 v24, v0

    move-object v12, v10

    goto :goto_1

    :cond_2
    move/from16 v0, p12

    move/from16 v13, p13

    move/from16 v24, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-eqz v6, :cond_3

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    .line 614
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 616
    move v10, v0

    goto :goto_2

    .line 614
    :cond_3
    nop

    .line 616
    const/4 v10, 0x0

    :goto_2
    if-nez v11, :cond_4

    .line 617
    const-string v0, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "START u"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " {"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v15, 0x1

    invoke-virtual {v8, v15, v15, v15, v4}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "} from uid "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 621
    :cond_4
    const/4 v4, 0x0

    const/4 v15, 0x1

    .line 622
    :goto_3
    nop

    .line 623
    if-eqz v1, :cond_6

    .line 624
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 627
    if-eqz v0, :cond_5

    .line 628
    if-ltz p11, :cond_5

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v1, :cond_5

    .line 629
    nop

    .line 634
    move-object v5, v0

    goto :goto_4

    :cond_5
    move-object v5, v0

    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 636
    const/high16 v14, 0x2000000

    and-int/2addr v14, v1

    if-eqz v14, :cond_b

    if-eqz v5, :cond_b

    .line 639
    if-ltz p11, :cond_7

    .line 640
    invoke-static/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    .line 641
    const/16 v0, -0x5d

    return v0

    .line 643
    :cond_7
    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 644
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked()Z

    move-result v2

    if-nez v2, :cond_8

    .line 645
    nop

    .line 647
    const/4 v0, 0x0

    :cond_8
    iget-object v2, v5, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 648
    iget v14, v5, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 649
    const/4 v4, 0x0

    iput-object v4, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 650
    if-eqz v0, :cond_9

    .line 651
    invoke-virtual {v0, v5, v2, v14}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 653
    :cond_9
    iget v4, v5, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    if-ne v4, v13, :cond_a

    .line 664
    iget-object v4, v5, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    goto :goto_5

    .line 668
    :cond_a
    move-object/from16 v4, p14

    :goto_5
    move-object/from16 v37, v2

    move/from16 v38, v14

    goto :goto_6

    :cond_b
    move-object/from16 v37, p10

    move/from16 v38, p11

    move-object/from16 v4, p14

    :goto_6
    move-object v2, v0

    if-nez v11, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_c

    .line 671
    const/16 v11, -0x5b

    .line 674
    :cond_c
    if-nez v11, :cond_d

    if-nez v6, :cond_d

    .line 677
    const/16 v11, -0x5c

    .line 680
    :cond_d
    const/16 v14, -0x61

    if-nez v11, :cond_f

    if-eqz v5, :cond_f

    .line 681
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_f

    .line 686
    const/high16 v0, 0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_f

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_f

    .line 689
    :try_start_0
    const-string v0, "android.intent.category.VOICE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 690
    invoke-interface {v0, v1, v8, v7}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 692
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    nop

    .line 700
    move v11, v14

    :cond_e
    goto :goto_7

    .line 697
    :catch_0
    move-exception v0

    .line 698
    const-string v1, "ActivityManager"

    const-string v11, "Failure checking voice capabilities"

    invoke-static {v1, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    nop

    .line 704
    move v11, v14

    :cond_f
    :goto_7
    if-nez v11, :cond_11

    if-eqz p7, :cond_11

    .line 708
    :try_start_1
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1, v8, v7}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 710
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Activity being started in new voice task does not support: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 713
    goto :goto_8

    .line 718
    :cond_10
    move v14, v11

    :goto_8
    goto :goto_9

    .line 715
    :catch_1
    move-exception v0

    .line 716
    const-string v1, "ActivityManager"

    const-string v11, "Failure checking voice capabilities"

    invoke-static {v1, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    goto :goto_9

    .line 721
    :cond_11
    move v14, v11

    :goto_9
    if-nez v2, :cond_12

    .line 723
    const/16 v25, 0x0

    goto :goto_a

    .line 721
    :cond_12
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 723
    move-object/from16 v25, v0

    :goto_a
    if-eqz v14, :cond_14

    .line 724
    if-eqz v2, :cond_13

    .line 725
    const/16 v17, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v25

    move-object/from16 v18, v2

    move-object/from16 v19, v37

    move/from16 v20, v38

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 728
    :cond_13
    invoke-static/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    .line 729
    return v14

    .line 732
    :cond_14
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p22, :cond_15

    move/from16 v19, v15

    goto :goto_b

    :cond_15
    const/16 v19, 0x0

    :goto_b
    move v1, v10

    move-object v10, v0

    move-object v11, v8

    move-object v14, v12

    move-object v12, v6

    move/from16 v27, v13

    move-object/from16 v13, v37

    move-object/from16 v44, v14

    move/from16 v14, v38

    move-object/from16 v45, v5

    move v5, v15

    move/from16 v15, v24

    move/from16 v16, v27

    move-object/from16 v17, v4

    move/from16 v18, p19

    move-object/from16 v20, v44

    move-object/from16 v21, v2

    move-object/from16 v22, v25

    invoke-virtual/range {v10 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    .line 735
    xor-int/lit8 v10, v0, 0x1

    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v11, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move v14, v1

    move-object v1, v8

    move-object v12, v2

    move/from16 v2, v27

    move-object v13, v3

    move/from16 v3, v24

    move-object/from16 v46, v12

    move/from16 v15, p17

    move-object v12, v4

    move-object v4, v7

    move v7, v5

    move-object/from16 v47, v45

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    xor-int/2addr v0, v7

    or-int v1, v10, v0

    .line 739
    if-eqz v13, :cond_16

    .line 740
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v10, v44

    invoke-virtual {v13, v8, v6, v10, v0}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_c

    .line 741
    :cond_16
    move-object/from16 v10, v44

    .line 742
    const/4 v0, 0x0

    :goto_c
    if-eqz p23, :cond_17

    .line 743
    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v2

    .line 744
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStartController;->getPendingRemoteAnimationRegistry()Lcom/android/server/am/PendingRemoteAnimationRegistry;

    move-result-object v2

    .line 745
    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/PendingRemoteAnimationRegistry;->overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 747
    :cond_17
    move-object v11, v0

    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_18

    .line 751
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 752
    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    xor-int/2addr v0, v7

    or-int/2addr v1, v0

    .line 756
    nop

    .line 759
    move/from16 v16, v1

    const/4 v13, 0x0

    goto :goto_e

    .line 754
    :catch_2
    move-exception v0

    .line 755
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    iput-object v13, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_d

    .line 759
    :cond_18
    const/4 v13, 0x0

    :goto_d
    move/from16 v16, v1

    :goto_e
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move v1, v14

    move/from16 v2, p15

    move/from16 v3, p16

    move v4, v15

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;)V

    .line 760
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move-object v1, v8

    move-object/from16 v2, p6

    move-object v3, v6

    move-object/from16 v4, p4

    move-object/from16 v5, p22

    move/from16 v6, v24

    move v13, v7

    move/from16 v7, v27

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 764
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 765
    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 766
    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 767
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 768
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 769
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v5, v5, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 770
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v6, v6, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 771
    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 774
    move-object/from16 v17, v4

    move/from16 v28, v6

    move-object v11, v7

    goto :goto_f

    :cond_19
    move-object/from16 v0, p2

    move-object/from16 v3, p4

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    move-object/from16 v17, p22

    move/from16 v5, v24

    move/from16 v28, v27

    :goto_f
    if-eqz v16, :cond_1b

    .line 775
    if-eqz v46, :cond_1a

    .line 776
    const/16 v17, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v25

    move-object/from16 v18, v46

    move-object/from16 v19, v37

    move/from16 v20, v38

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 781
    :cond_1a
    invoke-static {v11}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 782
    const/16 v0, 0x66

    return v0

    .line 788
    :cond_1b
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mPermissionReviewRequired:Z

    if-eqz v4, :cond_1d

    if-eqz v2, :cond_1d

    .line 789
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6, v14}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 791
    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v26, 0x2

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    new-array v4, v13, [Landroid/content/Intent;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    new-array v5, v13, [Ljava/lang/String;

    aput-object v3, v5, v8

    const/high16 v35, 0x50000000

    const/16 v36, 0x0

    move-object/from16 v25, v1

    move-object/from16 v27, v12

    move/from16 v29, v14

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    invoke-virtual/range {v25 .. v36}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 797
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 798
    new-instance v7, Landroid/content/Intent;

    const-string v3, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 799
    const/high16 v3, 0x800000

    or-int/2addr v0, v3

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 801
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    const-string v0, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 803
    if-eqz v46, :cond_1c

    .line 804
    const-string v0, "android.intent.extra.RESULT_NEEDED"

    invoke-virtual {v7, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 806
    :cond_1c
    nop

    .line 808
    const/4 v0, 0x0

    .line 809
    nop

    .line 810
    nop

    .line 812
    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v2, v2, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 813
    move/from16 v6, p16

    invoke-static {v6, v6, v2}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v16

    .line 812
    move-object v2, v7

    move-object v3, v0

    move v4, v14

    move v13, v6

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 815
    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    invoke-virtual {v2, v7, v1, v15, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 831
    move/from16 v5, p15

    move-object v6, v0

    move-object v0, v1

    move/from16 v28, v13

    goto :goto_10

    :cond_1d
    move/from16 v13, p16

    const/4 v8, 0x0

    move-object v7, v0

    move-object v0, v1

    move-object v6, v3

    :goto_10
    if-eqz v0, :cond_1e

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v1, :cond_1e

    .line 832
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    move-object v1, v9

    move-object/from16 v3, p3

    move-object v4, v12

    move-object/from16 v5, v23

    move v7, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 834
    nop

    .line 835
    nop

    .line 836
    nop

    .line 838
    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v15, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 841
    move/from16 v5, p15

    move-object/from16 v33, v0

    move-object v7, v1

    move-object/from16 v32, v3

    move v6, v13

    goto :goto_11

    :cond_1e
    move-object/from16 v33, v2

    move-object/from16 v32, v6

    move/from16 v6, v28

    :goto_11
    new-instance v14, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 842
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v34

    if-eqz p7, :cond_1f

    const/16 v39, 0x1

    goto :goto_12

    :cond_1f
    move/from16 v39, v8

    :goto_12
    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v25, v14

    move-object/from16 v26, v0

    move-object/from16 v27, v10

    move/from16 v28, v5

    move/from16 v29, v6

    move-object/from16 v30, v12

    move-object/from16 v31, v7

    move-object/from16 v35, v46

    move-object/from16 v36, v37

    move/from16 v37, v38

    move/from16 v38, p20

    move-object/from16 v40, v1

    move-object/from16 v41, v11

    move-object/from16 v42, v47

    invoke-direct/range {v25 .. v42}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    .line 845
    if-eqz p21, :cond_20

    .line 846
    aput-object v14, p21, v8

    .line 849
    :cond_20
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v0, :cond_21

    move-object/from16 v4, v47

    if-eqz v4, :cond_22

    .line 852
    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v0, v14, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_13

    .line 855
    :cond_21
    move-object/from16 v4, v47

    :cond_22
    :goto_13
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 859
    if-nez p7, :cond_24

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 860
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v13, :cond_24

    .line 861
    :cond_23
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v16, "Activity start"

    move v1, v5

    move v2, v6

    move-object/from16 v18, v3

    move/from16 v3, p15

    move-object/from16 v43, v4

    move v4, v13

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 863
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    new-instance v7, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    move-object v0, v7

    move-object v1, v14

    move-object/from16 v2, v43

    move v3, v15

    move-object/from16 v4, v18

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStartController;->addPendingActivityLaunch(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;)V

    .line 865
    invoke-static {v11}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 866
    const/16 v0, 0x64

    return v0

    .line 870
    :cond_24
    move-object/from16 v43, v4

    :cond_25
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v0, :cond_26

    .line 876
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    goto :goto_14

    .line 878
    :cond_26
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    .line 881
    :goto_14
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStartController;->doPendingActivityLaunches(Z)V

    .line 883
    move-object v1, v9

    move v2, v6

    move-object v3, v12

    move v4, v13

    move-object v5, v7

    move-object v6, v10

    move-object v7, v14

    move-object/from16 v8, p24

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ActivityStarter;->maybeLogActivityStart(ILjava/lang/String;ILandroid/content/Intent;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/PendingIntentRecord;)V

    .line 886
    const/4 v7, 0x1

    move-object v2, v14

    move-object/from16 v3, v43

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move v6, v15

    move-object v8, v11

    move-object/from16 v9, v17

    move-object/from16 v10, p21

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/ActivityStarter;->startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    return v0
.end method

.method private startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .locals 1

    .line 1266
    nop

    .line 1268
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1269
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/ActivityStarter;->startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1275
    iget-object p3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p4

    .line 1276
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result p3

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    .line 1277
    iget-object p5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 p6, 0x0

    const/4 p7, 0x0

    const-string/jumbo p8, "startActivity"

    const/4 p9, 0x1

    invoke-virtual/range {p4 .. p9}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1280
    :cond_0
    iget-object p3, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1281
    nop

    .line 1283
    iget-object p3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 1285
    return p2

    .line 1275
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p3

    .line 1276
    const/16 p2, -0x60

    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 1277
    iget-object p4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 p5, 0x0

    const/4 p6, 0x0

    const/4 p8, 0x1

    const-string/jumbo p7, "startActivity"

    invoke-virtual/range {p3 .. p8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1280
    :cond_1
    iget-object p2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1281
    throw p1
.end method

.method private startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ZILcom/android/server/am/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;)I
    .locals 40

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move-object/from16 v14, p15

    move-object/from16 v13, p16

    move/from16 v12, p19

    .line 1019
    if-eqz v1, :cond_1

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1020
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1022
    :cond_1
    :goto_0
    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    .line 1023
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1025
    const/4 v2, 0x1

    goto :goto_1

    .line 1023
    :cond_2
    nop

    .line 1025
    const/4 v2, 0x0

    :goto_1
    if-eqz p4, :cond_3

    .line 1026
    nop

    .line 1028
    move/from16 v16, p4

    goto :goto_2

    .line 1027
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1028
    move/from16 v16, v3

    :goto_2
    const/16 v3, -0x2710

    move/from16 v4, p5

    if-eq v4, v3, :cond_4

    .line 1029
    nop

    .line 1033
    move v9, v4

    goto :goto_3

    .line 1030
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1033
    move v9, v3

    :goto_3
    const/4 v3, -0x1

    if-ltz p2, :cond_5

    .line 1034
    nop

    .line 1043
    move/from16 v7, p2

    move v8, v3

    goto :goto_4

    .line 1035
    :cond_5
    if-nez v0, :cond_6

    .line 1036
    nop

    .line 1037
    nop

    .line 1043
    move v7, v9

    move/from16 v8, v16

    goto :goto_4

    .line 1039
    :cond_6
    nop

    .line 1043
    move v7, v3

    move v8, v7

    :goto_4
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1045
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1046
    const/4 v4, 0x0

    if-eqz v2, :cond_8

    const-string v1, "android.intent.action.VIEW"

    .line 1047
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_8

    :cond_7
    const-string v1, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    .line 1048
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    .line 1049
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1050
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 1051
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManagerInternal;->isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1055
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1056
    nop

    .line 1059
    const/16 v17, 0x0

    goto :goto_5

    :cond_8
    move/from16 v17, v2

    :goto_5
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v18, 0x0

    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v2, v2, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 1061
    invoke-static {v7, v9, v2}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v19

    .line 1059
    move-object v2, v5

    move-object/from16 v3, p7

    move v4, v12

    move-object/from16 v27, v5

    move/from16 v5, v18

    move-object/from16 v18, v6

    move/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1063
    if-nez v1, :cond_a

    .line 1064
    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1065
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1069
    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 1070
    nop

    .line 1071
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1073
    :try_start_0
    invoke-virtual {v2, v12}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 1074
    if-eqz v5, :cond_9

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 1075
    invoke-virtual {v2, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1076
    invoke-virtual {v2, v12}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_9

    .line 1078
    const/4 v2, 0x1

    goto :goto_6

    .line 1076
    :cond_9
    nop

    .line 1078
    const/4 v2, 0x0

    :goto_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1079
    nop

    .line 1080
    if-eqz v2, :cond_a

    .line 1081
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/high16 v5, 0xc0000

    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v2, v2, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 1084
    invoke-static {v7, v9, v2}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v6

    .line 1081
    move-object/from16 v2, v27

    move-object/from16 v3, p7

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    goto :goto_7

    .line 1078
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1090
    :cond_a
    :goto_7
    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v6, p13

    move-object/from16 v3, p14

    move-object/from16 v5, v27

    invoke-virtual {v2, v5, v1, v6, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 1092
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1093
    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1094
    if-eqz v13, :cond_b

    iget-object v10, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1095
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    goto :goto_8

    :cond_b
    const/4 v10, 0x0

    :goto_8
    iput-boolean v10, v2, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1099
    move/from16 v28, v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1101
    const/4 v10, 0x2

    if-eqz v4, :cond_13

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/2addr v11, v10

    if-eqz v11, :cond_13

    iget-object v11, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v11, v11, Lcom/android/server/am/ActivityManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v11, :cond_13

    .line 1107
    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1108
    iget-object v10, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 1109
    if-eqz v11, :cond_13

    iget-object v10, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v29, v1

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v10, v1, :cond_c

    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1110
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1111
    :cond_c
    nop

    .line 1112
    if-eqz v0, :cond_e

    .line 1113
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 1114
    if-eqz v1, :cond_d

    .line 1115
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1125
    move/from16 v28, v0

    goto :goto_9

    .line 1117
    :cond_d
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find app for caller "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when starting: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1117
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    invoke-static/range {p17 .. p17}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    .line 1121
    const/16 v0, -0x5e

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1125
    :cond_e
    :goto_9
    :try_start_2
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x2

    const-string v8, "android"

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-wide/from16 v30, v6

    const/4 v7, 0x1

    new-array v6, v7, [Landroid/content/Intent;

    const/16 v20, 0x0

    aput-object v5, v6, v20

    move-object/from16 v32, v6

    new-array v6, v7, [Ljava/lang/String;

    aput-object p7, v6, v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/high16 v21, 0x50000000

    const/16 v22, 0x0

    move-object/from16 v33, v2

    move-object v2, v8

    move-object/from16 v27, v3

    move/from16 v3, v28

    move-object v8, v4

    move v4, v12

    move-object/from16 v34, v5

    move-object v5, v10

    move-object/from16 v23, v6

    move-wide/from16 v35, v30

    move-object/from16 v10, v32

    move-object/from16 v6, v17

    move/from16 v17, v7

    move/from16 v7, v19

    move-object/from16 v37, v8

    move-object v8, v10

    move v10, v9

    move-object/from16 v9, v23

    move/from16 v38, v10

    move/from16 v10, v21

    move-object v13, v11

    move/from16 v14, v17

    move-object/from16 v11, v22

    :try_start_3
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 1131
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1132
    if-ltz p12, :cond_f

    .line 1134
    const-string v1, "has_result"

    invoke-virtual {v6, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1136
    :cond_f
    const-string v1, "intent"

    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1138
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 1139
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 1140
    const-string v1, "cur_app"

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1142
    const-string v1, "cur_task"

    .line 1143
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1142
    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_a

    .line 1145
    :cond_10
    const/4 v13, 0x0

    :goto_a
    const-string v0, "new_app"

    move-object/from16 v1, v37

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    move-object/from16 v2, v34

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1148
    const-string v0, "android"

    const-class v1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 1149
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1148
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1150
    nop

    .line 1151
    nop

    .line 1152
    nop

    .line 1153
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1154
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1155
    nop

    .line 1156
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 1157
    move/from16 v11, v38

    invoke-static {v7, v11, v1}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v5

    .line 1156
    move-object v1, v6

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1159
    if-eqz v0, :cond_11

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_b

    .line 1160
    :cond_11
    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_12

    .line 1161
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v4, v12}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1167
    move-object v3, v6

    move/from16 v28, v7

    move/from16 v21, v14

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v7, v0

    move-object v6, v1

    goto :goto_c

    :cond_12
    move-object v3, v6

    move/from16 v28, v7

    move/from16 v21, v14

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v7, v0

    move-object v6, v4

    goto :goto_c

    :cond_13
    move-object/from16 v29, v1

    :cond_14
    move-object/from16 v33, v2

    move-object/from16 v27, v3

    move-object v1, v4

    move-object v2, v5

    move-wide/from16 v35, v6

    move v11, v9

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p7

    move-object v6, v1

    move-object v3, v2

    move/from16 v21, v17

    move-object/from16 v7, v29

    move-object v2, v0

    :goto_c
    move v0, v8

    new-array v14, v14, [Lcom/android/server/am/ActivityRecord;

    .line 1168
    move-object v1, v15

    move-object/from16 v4, v18

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v17, v11

    move-object/from16 v11, p11

    move/from16 v12, p12

    move v13, v0

    move-object v0, v14

    move/from16 v14, v28

    move-object/from16 v15, p3

    move/from16 v18, p13

    move-object/from16 v19, p17

    move/from16 v20, p18

    move-object/from16 v22, v0

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    move/from16 v25, p22

    move-object/from16 v26, p23

    invoke-direct/range {v1 .. v26}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;)I

    move-result v10

    .line 1174
    move-wide/from16 v1, v35

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1176
    move-object/from16 v1, v33

    iget-boolean v2, v1, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_15

    .line 1181
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v5, "updateConfiguration()"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1186
    iget-object v1, v2, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v4, p16

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Z)Z

    goto :goto_d

    .line 1191
    :cond_15
    move-object/from16 v2, p0

    const/4 v3, 0x0

    :goto_d
    iget-object v1, v2, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v1

    aget-object v4, v0, v3

    invoke-virtual {v1, v10, v4}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    .line 1192
    move-object/from16 v1, p15

    if-eqz v1, :cond_1b

    .line 1193
    iput v10, v1, Landroid/app/WaitResult;->result:I

    .line 1195
    aget-object v0, v0, v3

    .line 1197
    if-eqz v10, :cond_18

    const-wide/16 v4, 0x0

    packed-switch v10, :pswitch_data_0

    goto :goto_10

    .line 1213
    :pswitch_0
    iput-boolean v3, v1, Landroid/app/WaitResult;->timeout:Z

    .line 1214
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v0, v1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1215
    iput-wide v4, v1, Landroid/app/WaitResult;->totalTime:J

    .line 1216
    goto :goto_10

    .line 1221
    :pswitch_1
    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v6, :cond_16

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1222
    iput-boolean v3, v1, Landroid/app/WaitResult;->timeout:Z

    .line 1223
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v0, v1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1224
    iput-wide v4, v1, Landroid/app/WaitResult;->totalTime:J

    goto :goto_10

    .line 1226
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1227
    iget-object v5, v2, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v0, v1, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1231
    :cond_17
    :try_start_4
    iget-object v0, v2, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1233
    goto :goto_e

    .line 1232
    :catch_0
    move-exception v0

    .line 1234
    :goto_e
    :try_start_5
    iget-boolean v0, v1, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_1b

    iget-object v0, v1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_17

    goto :goto_10

    .line 1199
    :cond_18
    iget-object v0, v2, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1202
    :cond_19
    :try_start_6
    iget-object v0, v2, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1204
    goto :goto_f

    .line 1203
    :catch_1
    move-exception v0

    .line 1205
    :goto_f
    :try_start_7
    iget v0, v1, Landroid/app/WaitResult;->result:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1a

    iget-boolean v0, v1, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_1a

    iget-object v0, v1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_19

    .line 1207
    :cond_1a
    iget v0, v1, Landroid/app/WaitResult;->result:I

    if-ne v0, v3, :cond_1b

    .line 1208
    nop

    .line 1241
    move v10, v3

    :cond_1b
    :goto_10
    monitor-exit v27
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 1242
    :catchall_1
    move-exception v0

    move-object/from16 v27, v3

    :goto_11
    :try_start_8
    monitor-exit v27
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_11

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .locals 20

    move-object/from16 v9, p0

    .line 1294
    move-object/from16 v10, p9

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p6

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ActivityStarter;->setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 1297
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 1299
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeSourceStack()V

    .line 1301
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v1, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1303
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1305
    nop

    .line 1306
    nop

    .line 1307
    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1308
    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    .line 1309
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v3

    goto :goto_0

    .line 1314
    :cond_0
    move v1, v2

    move v3, v1

    :goto_0
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v4}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1315
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v4}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1316
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v3, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 1319
    :cond_1
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v4}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1320
    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 1324
    :cond_2
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_12

    .line 1328
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget v12, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v13, 0x10008000

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_3

    move v12, v7

    goto :goto_1

    :cond_3
    move v12, v2

    :goto_1
    invoke-virtual {v8, v11, v12}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1331
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const/16 v0, 0x65

    return v0

    .line 1337
    :cond_4
    iget v8, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v11, 0x4200000

    and-int/2addr v8, v11

    if-ne v8, v11, :cond_5

    iget v8, v9, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-nez v8, :cond_5

    .line 1345
    move v8, v7

    goto :goto_2

    .line 1337
    :cond_5
    nop

    .line 1345
    move v8, v2

    :goto_2
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    if-nez v11, :cond_6

    if-nez v8, :cond_6

    .line 1346
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 1349
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v8, :cond_7

    .line 1352
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8, v11}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1358
    :cond_7
    iget v8, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v11, 0x4000000

    and-int/2addr v8, v11

    if-nez v8, :cond_8

    iget v8, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1359
    invoke-static {v8}, Lcom/android/server/am/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1360
    invoke-direct {v9, v4, v5}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1361
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 1366
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v12, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v8, v11, v12}, Lcom/android/server/am/TaskRecord;->performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 1373
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v12

    if-nez v12, :cond_9

    .line 1374
    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 1377
    :cond_9
    if-eqz v11, :cond_b

    .line 1378
    iget-boolean v8, v11, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v8, :cond_a

    .line 1381
    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8, v12}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1383
    :cond_a
    invoke-direct {v9, v11}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1387
    :cond_b
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 1389
    invoke-direct {v9, v0}, Lcom/android/server/am/ActivityStarter;->setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1392
    if-eqz v10, :cond_c

    array-length v8, v10

    if-lez v8, :cond_c

    aget-object v8, v10, v2

    goto :goto_3

    .line 1396
    :cond_c
    move-object v8, v6

    :goto_3
    if-eqz v8, :cond_e

    iget-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v11, :cond_d

    iget-boolean v8, v8, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v8, :cond_e

    .line 1397
    :cond_d
    aput-object v0, v10, v2

    .line 1400
    :cond_e
    iget v8, v9, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v8, v7

    if-eqz v8, :cond_f

    .line 1404
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1405
    return v7

    .line 1408
    :cond_f
    if-eqz v0, :cond_12

    .line 1409
    invoke-direct {v9, v0}, Lcom/android/server/am/ActivityStarter;->setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1411
    iget-boolean v8, v9, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v8, :cond_12

    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v8, :cond_12

    .line 1415
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1416
    if-eqz v10, :cond_10

    array-length v1, v10

    if-lez v1, :cond_10

    .line 1417
    aput-object v0, v10, v2

    .line 1420
    :cond_10
    iget-boolean v0, v9, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-eqz v0, :cond_11

    move v4, v5

    nop

    :cond_11
    return v4

    .line 1425
    :cond_12
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 1426
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_13

    .line 1427
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 1428
    :goto_4
    move-object v10, v6

    goto :goto_5

    .line 1427
    :cond_13
    goto :goto_4

    .line 1428
    :goto_5
    if-eqz v10, :cond_14

    .line 1429
    const/4 v11, -0x1

    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1433
    :cond_14
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1434
    const/16 v0, -0x5c

    return v0

    .line 1439
    :cond_15
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1440
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 1441
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 1442
    if-eqz v8, :cond_17

    iget-object v10, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v10, v10, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v10, :cond_17

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1443
    invoke-virtual {v10, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    iget v10, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v11, v11, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v10, v11, :cond_17

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_17

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_17

    iget v10, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v11, 0x20000000

    and-int/2addr v10, v11

    if-nez v10, :cond_16

    .line 1447
    invoke-direct {v9, v7, v5}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 1448
    :cond_16
    move v10, v7

    goto :goto_6

    .line 1447
    :cond_17
    nop

    .line 1448
    move v10, v2

    :goto_6
    if-eqz v10, :cond_1a

    .line 1450
    iput-object v6, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1451
    iget-boolean v2, v9, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_18

    .line 1452
    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1454
    :cond_18
    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1455
    iget v2, v9, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_19

    .line 1458
    return v7

    .line 1461
    :cond_19
    invoke-direct {v9, v8}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1465
    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v2, v5, v1, v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 1468
    return v4

    .line 1471
    :cond_1a
    nop

    .line 1472
    iget-boolean v4, v9, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v4, :cond_1b

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_1b

    .line 1473
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    goto :goto_7

    .line 1476
    :cond_1b
    move-object v4, v6

    .line 1477
    :goto_7
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v8, :cond_1d

    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v8, :cond_1d

    iget-boolean v8, v9, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v8, :cond_1d

    iget v8, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v10, 0x10000000

    and-int/2addr v8, v10

    if-eqz v8, :cond_1d

    .line 1479
    nop

    .line 1480
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1481
    iget-object v10, v9, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    if-eqz v10, :cond_1c

    .line 1482
    iget-object v10, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/16 v13, 0x1081

    const/4 v14, -0x1

    .line 1483
    invoke-virtual {v11, v13, v8, v14, v7}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v8

    iput v8, v10, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    .line 1486
    :cond_1c
    invoke-direct {v9, v4, v0}, Lcom/android/server/am/ActivityStarter;->setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)I

    move-result v0

    .line 1487
    nop

    .line 1496
    move v13, v7

    goto :goto_9

    .line 1487
    :cond_1d
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1e

    .line 1488
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromSourceRecord()I

    move-result v0

    .line 1496
    :goto_8
    move v13, v2

    goto :goto_9

    .line 1489
    :cond_1e
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1f

    .line 1490
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromInTask()I

    move-result v0

    goto :goto_8

    .line 1494
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskToCurrentTopOrCreateNewTask()V

    .line 1496
    move v0, v2

    move v13, v0

    :goto_9
    if-eqz v0, :cond_20

    .line 1497
    return v0

    .line 1500
    :cond_20
    iget-object v14, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v15, v9, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1501
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v18

    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v8, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1500
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    move/from16 v19, v8

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 1502
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v10, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v10, v10, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v11, v9, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1503
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 1502
    invoke-virtual {v0, v4, v8, v10, v11}, Lcom/android/server/am/ActivityManagerService;->grantEphemeralAccessLocked(ILandroid/content/Intent;II)V

    .line 1504
    if-eqz v13, :cond_21

    .line 1505
    const/16 v0, 0x7534

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v5, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1506
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 1505
    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1508
    :cond_21
    const/16 v0, 0x7535

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1509
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 1508
    invoke-static {v0, v4, v5}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1510
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v6, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1512
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 1514
    iget-object v10, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v14, v9, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    iget-object v15, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    .line 1516
    iget-boolean v0, v9, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_25

    .line 1517
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1518
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1519
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_24

    if-eqz v0, :cond_22

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v4, :cond_22

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v4, v0, :cond_22

    goto :goto_a

    .line 1538
    :cond_22
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1539
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v4, "startActivityUnchecked"

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1541
    :cond_23
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_b

    .line 1528
    :cond_24
    :goto_a
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v6, v2, v2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1531
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1544
    :goto_b
    goto :goto_c

    :cond_25
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_26

    .line 1545
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 1547
    :cond_26
    :goto_c
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    .line 1549
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v4, v1, v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 1552
    return v2
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 2715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2716
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2717
    const-string v0, "mCurrentUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2718
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2719
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2720
    const-string v0, "mLastStartReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2721
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2722
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2723
    const-string v0, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2724
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2725
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2726
    const-string v0, "mLastStartActivityResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2727
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2728
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2729
    if-eqz v0, :cond_0

    .line 2730
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2731
    const-string v2, "mLastStartActivityRecord:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2734
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    .line 2735
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2736
    const-string v0, "mStartActivity:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2737
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2739
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 2740
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2741
    const-string v0, "mIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2742
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2744
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_3

    .line 2745
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2746
    const-string v0, "mOptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2747
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2749
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2750
    const-string v0, "mLaunchSingleTop="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2751
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v2, 0x1

    if-ne v2, v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2752
    const-string v0, " mLaunchSingleInstance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2753
    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v0, v3, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2754
    const-string v0, " mLaunchSingleTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2755
    const/4 v0, 0x2

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v0, v3, :cond_6

    move v1, v2

    nop

    :cond_6
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2756
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2757
    const-string p2, "mLaunchFlags=0x"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2758
    iget p2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2759
    const-string p2, " mDoResume="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2760
    iget-boolean p2, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2761
    const-string p2, " mAddingToTask="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2762
    iget-boolean p2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 2763
    return-void
.end method

.method execute()I
    .locals 45

    .line 495
    move-object/from16 v15, p0

    :try_start_0
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v3, v0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v5, v0, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v6, v0, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v12, v0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v13, v0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v14, v0, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    move-object/from16 v27, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    move-object/from16 v28, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    move-object/from16 v29, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move/from16 v30, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    move/from16 v31, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    move-object/from16 v33, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move/from16 v34, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v24, v1

    move-object/from16 v16, v27

    move-object/from16 v17, v28

    move-object/from16 v18, v29

    move/from16 v19, v30

    move/from16 v20, v31

    move-object/from16 v21, v32

    move-object/from16 v22, v33

    move/from16 v23, v34

    move-object v1, v15

    move-object v15, v0

    invoke-direct/range {v1 .. v24}, Lcom/android/server/am/ActivityStarter;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ZILcom/android/server/am/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    .line 496
    return v0

    .line 507
    :cond_0
    move-object/from16 v15, p0

    :try_start_1
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v12, v0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v13, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v14, v0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    move/from16 v35, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    move/from16 v36, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    move/from16 v37, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    move-object/from16 v38, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move/from16 v39, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    move/from16 v40, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    move-object/from16 v41, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v42, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    move-object/from16 v43, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move/from16 v44, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v26, v1

    move/from16 v16, v35

    move/from16 v17, v36

    move/from16 v18, v37

    move-object/from16 v19, v38

    move/from16 v20, v39

    move/from16 v21, v40

    move-object/from16 v22, v41

    move-object/from16 v23, v42

    move-object/from16 v24, v43

    move/from16 v25, v44

    move-object v1, v15

    move-object v15, v0

    invoke-direct/range {v1 .. v26}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    .line 507
    return v0

    .line 519
    :catchall_0
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2554
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method getStartActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    .locals 2

    .line 963
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    return-void

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/am/ActivityRecord;I)V

    .line 974
    nop

    .line 975
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 976
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 977
    goto :goto_0

    .line 978
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz p1, :cond_2

    .line 979
    nop

    .line 982
    move-object p1, p3

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_3

    .line 983
    return-void

    .line 987
    :cond_3
    iget p3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v1, 0x10008000

    and-int/2addr p3, v1

    if-ne p3, v1, :cond_4

    iget-object p3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    .line 989
    :goto_1
    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    const/4 v1, 0x3

    if-eq p2, v1, :cond_5

    if-eqz p3, :cond_6

    .line 993
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 999
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 1000
    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1001
    iget-object p1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    goto :goto_2

    .line 995
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {p1, p3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyPinnedActivityRestartAttempt(Z)V

    .line 997
    nop

    .line 1006
    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method relatedToPackage(Ljava/lang/String;)Z
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 483
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 484
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    nop

    .line 482
    :cond_2
    return v1
.end method

.method reset(Z)V
    .locals 4

    .line 1560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1561
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1562
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1563
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1565
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1566
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1567
    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    .line 1569
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    .line 1571
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 1572
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1573
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1574
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1575
    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    .line 1577
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1578
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1579
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 1581
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 1582
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 1583
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1585
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1586
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 1587
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 1588
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 1589
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1591
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1592
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1594
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 1596
    if-eqz p1, :cond_0

    .line 1597
    iget-object p1, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStarter$Request;->reset()V

    .line 1599
    :cond_0
    return-void
.end method

.method set(Lcom/android/server/am/ActivityStarter;)V
    .locals 2

    .line 438
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 439
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 440
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 441
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 443
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 444
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 445
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    .line 447
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v1, p1, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .line 449
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 450
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 451
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 452
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 453
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    .line 455
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 456
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 457
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 459
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 460
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 461
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 463
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 464
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 465
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 466
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 467
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 469
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 470
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 472
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 474
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object p1, p1, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStarter$Request;->set(Lcom/android/server/am/ActivityStarter$Request;)V

    .line 475
    return-void
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2579
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2580
    return-object p0
.end method

.method setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/am/ActivityStarter;
    .locals 0

    .line 2649
    invoke-static {p1}, Lcom/android/server/am/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/am/SafeActivityOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object p1

    return-object p1
.end method

.method setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2644
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    .line 2645
    return-object p0
.end method

.method setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2705
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 2706
    return-object p0
.end method

.method setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2563
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 2564
    return-object p0
.end method

.method setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2624
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 2625
    return-object p0
.end method

.method setCallingPid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2614
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    .line 2615
    return-object p0
.end method

.method setCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2619
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    .line 2620
    return-object p0
.end method

.method setComponentSpecified(Z)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2663
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    .line 2664
    return-object p0
.end method

.method setEphemeralIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2568
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 2569
    return-object p0
.end method

.method setFilterCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2658
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 2659
    return-object p0
.end method

.method setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2688
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 2689
    return-object p0
.end method

.method setIgnoreTargetSecurity(Z)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2653
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 2654
    return-object p0
.end method

.method setInTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2673
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    .line 2674
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2548
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 2549
    return-object p0
.end method

.method setMayWait(I)Lcom/android/server/am/ActivityStarter;
    .locals 2

    .line 2698
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    .line 2699
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    .line 2701
    return-object p0
.end method

.method setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2710
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 2711
    return-object p0
.end method

.method setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2668
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    .line 2669
    return-object p0
.end method

.method setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2683
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 2684
    return-object p0
.end method

.method setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2629
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    .line 2630
    return-object p0
.end method

.method setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2634
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    .line 2635
    return-object p0
.end method

.method setReason(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2558
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 2559
    return-object p0
.end method

.method setRequestCode(I)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2609
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    .line 2610
    return-object p0
.end method

.method setResolveInfo(Landroid/content/pm/ResolveInfo;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2584
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 2585
    return-object p0
.end method

.method setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2574
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 2575
    return-object p0
.end method

.method setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2599
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 2600
    return-object p0
.end method

.method setResultWho(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2604
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 2605
    return-object p0
.end method

.method setStartFlags(I)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2639
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    .line 2640
    return-object p0
.end method

.method setUserId(I)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2693
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    .line 2694
    return-object p0
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2594
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2595
    return-object p0
.end method

.method setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2589
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2590
    return-object p0
.end method

.method setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 2678
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 2679
    return-object p0
.end method

.method startResolvedActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .locals 0

    .line 534
    :try_start_0
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/ActivityStarter;->startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    .line 534
    return p1

    .line 537
    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    throw p1
.end method

.method updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2329
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2330
    return-void

    .line 2333
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2334
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2335
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    goto :goto_0

    .line 2337
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2339
    :goto_0
    return-void
.end method
