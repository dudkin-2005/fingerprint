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

.field mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

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
    .registers 7
    .param p1, "controller"    # Lcom/android/server/am/ActivityStartController;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p4, "interceptor"    # Lcom/android/server/am/ActivityStartInterceptor;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 213
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    .line 226
    new-instance v1, Lcom/android/server/am/ActivityStarter$Request;

    invoke-direct {v1}, Lcom/android/server/am/ActivityStarter$Request;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    .line 449
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    .line 450
    iput-object p2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 451
    iput-object p3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 452
    iput-object p4, p0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    .line 453
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStarter;->reset(Z)V

    .line 454
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 455
    return-void
.end method

.method private addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .registers 5
    .param p1, "parent"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2492
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p1, :cond_11

    goto :goto_1d

    .line 2495
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    goto :goto_22

    .line 2493
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 2497
    :goto_22
    return-void
.end method

.method private addUserIdtoClipData(Landroid/content/Intent;I)Landroid/content/Intent;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 2929
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 2930
    .local v0, "clipData":Landroid/content/ClipData;
    if-eqz v0, :cond_33

    .line 2931
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 2932
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 2933
    .local v2, "item":Landroid/content/ClipData$Item;
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2934
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 2935
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/android/server/am/ActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 2936
    .local v3, "newItem":Landroid/content/ClipData$Item;
    invoke-virtual {v0, v1, v3}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    .line 2931
    .end local v2    # "item":Landroid/content/ClipData$Item;
    .end local v3    # "newItem":Landroid/content/ClipData$Item;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2938
    .end local v1    # "i":I
    :cond_30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 2940
    :cond_33
    return-object p1
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchSingleInstance"    # Z
    .param p3, "launchSingleTask"    # Z
    .param p4, "launchFlags"    # I

    .line 2501
    const/high16 v0, 0x80000

    and-int v1, p4, v0

    if-eqz v1, :cond_16

    if-nez p2, :cond_a

    if-eqz p3, :cond_16

    .line 2504
    :cond_a
    const-string v0, "ActivityManager"

    const-string v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    const v0, -0x8080001

    and-int/2addr p4, v0

    goto :goto_28

    .line 2509
    :cond_16
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v1, :pswitch_data_2a

    goto :goto_28

    .line 2519
    :pswitch_1e
    const v0, -0x8000001

    and-int/2addr p4, v0

    goto :goto_28

    .line 2516
    :pswitch_23
    or-int/2addr p4, v0

    .line 2517
    goto :goto_28

    .line 2513
    :pswitch_25
    or-int/2addr p4, v0

    .line 2514
    goto :goto_28

    .line 2511
    :pswitch_27
    nop

    .line 2523
    :goto_28
    return p4

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_25
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method

.method private canLaunchIntoFocusedStack(Lcom/android/server/am/ActivityRecord;Z)Z
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z

    .line 2587
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 2589
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    .line 2590
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v1

    .local v1, "canUseFocusedStack":Z
    goto :goto_38

    .line 2592
    .end local v1    # "canUseFocusedStack":Z
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eq v1, v3, :cond_36

    packed-switch v1, :pswitch_data_46

    .line 2611
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v1

    if-nez v1, :cond_2a

    iget v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 2612
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    move v1, v3

    goto :goto_38

    :cond_2a
    move v1, v2

    goto :goto_38

    .line 2606
    :pswitch_2c
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result v1

    .line 2607
    .restart local v1    # "canUseFocusedStack":Z
    goto :goto_38

    .line 2602
    .end local v1    # "canUseFocusedStack":Z
    :pswitch_31
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    .line 2603
    .restart local v1    # "canUseFocusedStack":Z
    goto :goto_38

    .line 2597
    .end local v1    # "canUseFocusedStack":Z
    :cond_36
    const/4 v1, 0x1

    .line 2598
    .restart local v1    # "canUseFocusedStack":Z
    nop

    .line 2612
    :goto_38
    nop

    .line 2615
    if-eqz v1, :cond_45

    if-nez p2, :cond_45

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    iget v5, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne v4, v5, :cond_45

    move v2, v3

    nop

    :cond_45
    return v2

    :pswitch_data_46
    .packed-switch 0x3
        :pswitch_31
        :pswitch_31
        :pswitch_2c
    .end packed-switch
.end method

.method private computeLaunchingTaskFlags()V
    .registers 11

    .line 1861
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/high16 v4, 0x10000000

    if-nez v0, :cond_e6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_e6

    .line 1862
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1863
    .local v0, "baseIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1864
    .local v5, "root":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_c8

    .line 1872
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 1873
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 1878
    if-nez v5, :cond_3e

    goto :goto_91

    .line 1879
    :cond_3e
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1880
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller with mInTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but target is singleInstance/Task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1874
    :cond_69
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1875
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to launch singleInstance/Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " into different task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1887
    :cond_91
    :goto_91
    if-nez v5, :cond_b8

    .line 1888
    const v6, 0x18082000

    .line 1890
    .local v6, "flagsOfInterest":I
    iget v7, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v8, -0x18082001

    and-int/2addr v7, v8

    .line 1891
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const v9, 0x18082000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1892
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v8, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1893
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7, v8}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1894
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1899
    .end local v6    # "flagsOfInterest":I
    goto :goto_c3

    :cond_b8
    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_c1

    .line 1900
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_c3

    .line 1903
    :cond_c1
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1906
    :goto_c3
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 1907
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/am/ActivityRecord;
    goto :goto_105

    .line 1865
    .restart local v0    # "baseIntent":Landroid/content/Intent;
    .restart local v5    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_c8
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1866
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching into task without base intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1908
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_e6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1914
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v0

    if-nez v0, :cond_f7

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_105

    :cond_f7
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_105

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1915
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_105

    .line 1916
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1920
    :cond_105
    :goto_105
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_14c

    .line 1921
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_135

    .line 1924
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v4

    if-nez v0, :cond_14c

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_14c

    .line 1925
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

    .line 1927
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_14c

    .line 1929
    :cond_135
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-ne v0, v3, :cond_141

    .line 1933
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_14c

    .line 1934
    :cond_141
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 1937
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1940
    :cond_14c
    :goto_14c
    return-void
.end method

.method static computeResolveFilterUid(III)I
    .registers 4
    .param p0, "customCallingUid"    # I
    .param p1, "actualCallingUid"    # I
    .param p2, "filterCallingUid"    # I

    .line 1363
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_7

    .line 1364
    nop

    .line 1363
    move v0, p2

    goto :goto_c

    .line 1365
    :cond_7
    if-ltz p0, :cond_b

    .line 1363
    move v0, p0

    goto :goto_c

    :cond_b
    move v0, p1

    :goto_c
    return v0
.end method

.method private computeSourceStack()V
    .registers 6

    .line 1943
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1944
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1945
    return-void

    .line 1947
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_17

    .line 1948
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1949
    return-void

    .line 1956
    :cond_17
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_5a

    .line 1957
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

    .line 1959
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1960
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 1966
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1967
    .local v0, "sourceTask":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_57

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    goto :goto_58

    :cond_57
    move-object v2, v1

    :goto_58
    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 1969
    .end local v0    # "sourceTask":Lcom/android/server/am/TaskRecord;
    :cond_5a
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1970
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1971
    return-void
.end method

.method private computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .registers 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "launchFlags"    # I
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .line 2528
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2529
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-direct {p0, p1, p3, v0, p4}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2530
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_b

    .line 2531
    return-object v1

    .line 2534
    :cond_b
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 2535
    .local v2, "currentStack":Lcom/android/server/am/ActivityStack;
    :goto_13
    if-eqz v2, :cond_65

    .line 2536
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v3, v2, :cond_42

    .line 2537
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v3, :cond_23

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_64

    :cond_23
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeStackFocus: Setting focused stack to r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 2541
    :cond_42
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v3, :cond_4a

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_64

    :cond_4a
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeStackFocus: Focused stack already="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    :cond_64
    :goto_64
    return-object v2

    .line 2548
    :cond_65
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStarter;->canLaunchIntoFocusedStack(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 2549
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v3, :cond_73

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_8d

    :cond_73
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeStackFocus: Have a focused stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    :cond_8d
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v3

    .line 2554
    :cond_92
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v3, :cond_cd

    .line 2556
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2557
    if-nez v1, :cond_cd

    .line 2559
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v3, :cond_a8

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_c5

    :cond_a8
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeStackFocus: Can\'t launch on mPreferredDisplayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", looking on all displays."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    :cond_c5
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2565
    :cond_cd
    if-nez v1, :cond_10f

    .line 2567
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    .line 2568
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "stackNdx":I
    :goto_db
    if-ltz v4, :cond_109

    .line 2569
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2570
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v6

    if-nez v6, :cond_106

    .line 2571
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v5, :cond_ef

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_105

    :cond_ef
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "computeStackFocus: Setting focused stack="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_105
    return-object v1

    .line 2568
    :cond_106
    add-int/lit8 v4, v4, -0x1

    goto :goto_db

    .line 2577
    .end local v4    # "stackNdx":I
    :cond_109
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1, p4, v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2579
    .end local v3    # "display":Lcom/android/server/am/ActivityDisplay;
    :cond_10f
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v3, :cond_117

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_137

    :cond_117
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeStackFocus: New stack r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    :cond_137
    return-object v1
.end method

.method private createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 27
    .param p1, "auxiliaryResponse"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "originalIntent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "verificationBundle"    # Landroid/os/Bundle;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "userId"    # I

    move-object/from16 v7, p1

    .line 1034
    if-eqz v7, :cond_1f

    iget-boolean v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_1f

    .line 1036
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    move-object v1, v7

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_21

    .line 1040
    :cond_1f
    move-object/from16 v8, p0

    .line 1042
    :goto_21
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    .line 1043
    const/4 v0, 0x0

    if-nez v7, :cond_2a

    .line 1048
    move-object v11, v0

    goto :goto_2d

    .line 1043
    :cond_2a
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 1048
    move-object v11, v1

    :goto_2d
    if-nez v7, :cond_32

    .line 1049
    move-object/from16 v16, v0

    goto :goto_36

    .line 1048
    :cond_32
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    .line 1049
    move-object/from16 v16, v1

    :goto_36
    if-nez v7, :cond_3b

    move-object/from16 v17, v0

    goto :goto_3f

    :cond_3b
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object/from16 v17, v1

    :goto_3f
    if-eqz v7, :cond_47

    iget-boolean v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v1, :cond_47

    const/4 v1, 0x1

    goto :goto_48

    :cond_47
    const/4 v1, 0x0

    .line 1051
    :goto_48
    move/from16 v18, v1

    if-nez v7, :cond_4f

    .line 1040
    :goto_4c
    move-object/from16 v19, v0

    goto :goto_52

    .line 1051
    :cond_4f
    iget-object v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    goto :goto_4c

    .line 1040
    :goto_52
    move-object/from16 v9, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    invoke-static/range {v9 .. v19}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .line 2299
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_5

    .line 2300
    return-void

    .line 2303
    :cond_5
    const/16 v0, 0x7533

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2304
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 2307
    return-void
.end method

.method static getExternalResult(I)I
    .registers 2
    .param p0, "result"    # I

    .line 595
    const/16 v0, 0x66

    if-eq p0, v0, :cond_6

    move v0, p0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .registers 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .line 2625
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    const/4 v1, 0x1

    if-nez v0, :cond_29

    if-eqz p1, :cond_29

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2626
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_29

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 2627
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2628
    const-string v0, "ActivityManager"

    const-string v2, "QuickReply: force support freeform"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    .line 2633
    :cond_29
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_34

    .line 2634
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0

    .line 2637
    :cond_34
    and-int/lit16 v0, p2, 0x1000

    if-eqz v0, :cond_98

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v0, :cond_3d

    goto :goto_98

    .line 2649
    :cond_3d
    if-eqz p3, :cond_44

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_48

    :cond_44
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 2651
    .local v0, "parentStack":Lcom/android/server/am/ActivityStack;
    :goto_48
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v2, :cond_4f

    .line 2653
    return-object v0

    .line 2655
    :cond_4f
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-ne p3, v2, :cond_64

    .line 2658
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v1

    .line 2661
    :cond_64
    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 2664
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    move-result v2

    .line 2665
    .local v2, "activityType":I
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2671
    .end local v2    # "activityType":I
    :cond_7e
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2672
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2673
    .local v2, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_97

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_97

    .line 2675
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1, p4, p3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2677
    :cond_97
    return-object v2

    .line 2642
    .end local v0    # "parentStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "dockedStack":Lcom/android/server/am/ActivityStack;
    :cond_98
    :goto_98
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v0, :cond_a0

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    :goto_9e
    move v6, v0

    goto :goto_a2

    :cond_a0
    const/4 v0, -0x1

    goto :goto_9e

    .line 2643
    .local v6, "candidateDisplay":I
    :goto_a2
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method private getPreferedDisplayId(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)I
    .registers 9
    .param p1, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "startingActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "options"    # Landroid/app/ActivityOptions;

    .line 2023
    const/4 v0, 0x0

    if-eqz p2, :cond_8

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_8

    .line 2024
    return v0

    .line 2028
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mVr2dDisplayId:I

    .line 2029
    .local v1, "displayId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    .line 2030
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_29

    .line 2031
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSourceDisplayId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    :cond_29
    return v1

    .line 2038
    :cond_2a
    if-eqz p3, :cond_31

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v3

    goto :goto_32

    :cond_31
    move v3, v2

    .line 2039
    .local v3, "launchDisplayId":I
    :goto_32
    if-eq v3, v2, :cond_35

    .line 2040
    return v3

    .line 2043
    :cond_35
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v4

    goto :goto_3d

    :cond_3c
    move v4, v2

    :goto_3d
    move v1, v4

    .line 2045
    if-eq v1, v2, :cond_41

    .line 2046
    return v1

    .line 2048
    :cond_41
    return v0
.end method

.method private getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;
    .registers 10

    .line 1983
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x8000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_18

    .line 1985
    :cond_12
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    move v0, v4

    goto :goto_1b

    :cond_1a
    move v0, v3

    .line 1989
    .local v0, "putIntoExistingTask":Z
    :goto_1b
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v5, :cond_27

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_27

    move v5, v4

    goto :goto_28

    :cond_27
    move v5, v3

    :goto_28
    and-int/2addr v0, v5

    .line 1990
    const/4 v5, 0x0

    .line 1991
    .local v5, "intentActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v6, :cond_4d

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4d

    .line 1992
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1993
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    move-object v5, v2

    .line 1994
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_89

    :cond_4d
    if-eqz v0, :cond_89

    .line 1995
    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v2, v6, :cond_66

    .line 1998
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1999
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v4

    .line 1998
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    goto :goto_89

    .line 2000
    :cond_66
    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_7f

    .line 2003
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-eq v1, v8, :cond_7a

    move v3, v4

    nop

    :cond_7a
    invoke-virtual {v2, v6, v7, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    goto :goto_89

    .line 2007
    :cond_7f
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2010
    :cond_89
    :goto_89
    return-object v5
.end method

.method static isDocumentLaunchesIntoExisting(I)Z
    .registers 2
    .param p0, "flags"    # I

    .line 2688
    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    if-eqz v0, :cond_c

    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isLaunchModeOneOf(II)Z
    .registers 4
    .param p1, "mode1"    # I
    .param p2, "mode2"    # I

    .line 2684
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-eq p1, v0, :cond_b

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne p2, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private maybeAddOwnerUserIdtoIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3022
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, -0x45ee9a33

    if-eq v1, v3, :cond_f

    goto :goto_19

    :cond_f
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, -0x1

    :goto_1a
    if-eqz v0, :cond_1d

    goto :goto_41

    .line 3025
    :cond_1d
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStarter;->addUserIdtoClipData(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    .line 3026
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 3027
    .local v0, "extraStream":Landroid/net/Uri;
    if-eqz v0, :cond_41

    const-string/jumbo v1, "mms"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 3028
    const-string v1, "android.intent.extra.STREAM"

    .line 3029
    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 3028
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3035
    .end local v0    # "extraStream":Landroid/net/Uri;
    :cond_41
    :goto_41
    return-object p1
.end method

.method private maybeAddParallelUserIdtoIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2962
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_ec

    goto :goto_49

    :sswitch_d
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x2

    goto :goto_4a

    :sswitch_17
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x5

    goto :goto_4a

    :sswitch_21
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x3

    goto :goto_4a

    :sswitch_2b
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x4

    goto :goto_4a

    :sswitch_35
    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    goto :goto_4a

    :sswitch_3f
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v2

    goto :goto_4a

    :cond_49
    :goto_49
    const/4 v0, -0x1

    :goto_4a
    const/16 v1, 0x3e7

    packed-switch v0, :pswitch_data_106

    goto/16 :goto_eb

    .line 3000
    :pswitch_51
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStarter;->addUserIdtoClipData(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    .line 3001
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3003
    .local v0, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v0, :cond_eb

    .line 3004
    nop

    .line 3004
    .local v2, "i":I
    :goto_5e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_82

    .line 3005
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 3006
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_7c

    const-string v4, "ActivityManager"

    .line 3007
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 3006
    invoke-static {v4, v5}, Landroid/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 3008
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/ActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    .line 3010
    :cond_7c
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3004
    .end local v3    # "uri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 3012
    .end local v2    # "i":I
    :cond_82
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_eb

    .line 2989
    .end local v0    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :pswitch_88
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStarter;->addUserIdtoClipData(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    .line 2990
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2991
    .local v0, "extraStream":Landroid/net/Uri;
    if-eqz v0, :cond_eb

    const-string v2, "ActivityManager"

    .line 2992
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 2991
    invoke-static {v2, v3}, Landroid/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_eb

    .line 2993
    const-string v2, "android.intent.extra.STREAM"

    .line 2994
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 2993
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_eb

    .line 2977
    .end local v0    # "extraStream":Landroid/net/Uri;
    :pswitch_ac
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2980
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_eb

    const-string v2, "ActivityManager"

    .line 2981
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 2980
    invoke-static {v2, v3}, Landroid/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_eb

    .line 2982
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 2983
    .local v2, "type":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2985
    .end local v2    # "type":Ljava/lang/String;
    goto :goto_eb

    .line 2966
    .end local v0    # "data":Landroid/net/Uri;
    :pswitch_ca
    const-string/jumbo v0, "output"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2969
    .local v0, "output":Landroid/net/Uri;
    if-eqz v0, :cond_eb

    const-string v2, "ActivityManager"

    .line 2970
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 2969
    invoke-static {v2, v3}, Landroid/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_eb

    .line 2971
    const-string/jumbo v2, "output"

    .line 2972
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStarter;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 2971
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3018
    .end local v0    # "output":Landroid/net/Uri;
    :cond_eb
    :goto_eb
    return-object p1

    :sswitch_data_ec
    .sparse-switch
        -0x74de9aed -> :sswitch_3f
        -0x62d863dd -> :sswitch_35
        -0x45ee9a33 -> :sswitch_2b
        -0x45ed2f16 -> :sswitch_21
        -0x37c67be -> :sswitch_17
        0x29c9b033 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_ca
        :pswitch_ca
        :pswitch_ca
        :pswitch_ac
        :pswitch_88
        :pswitch_51
    .end packed-switch
.end method

.method private maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    .line 2914
    if-nez p1, :cond_4

    .line 2915
    const/4 v0, 0x0

    return-object v0

    .line 2916
    :cond_4
    const/4 v0, -0x2

    if-eq p2, v0, :cond_42

    const-string v0, "content"

    .line 2917
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2918
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStarter;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 2920
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2921
    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2922
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 2925
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_42
    return-object p1
.end method

.method private maybeAddUserIdtoIntent(ILandroid/content/Intent;I)Landroid/content/Intent;
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "destAppUserId"    # I

    .line 2944
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2945
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2947
    .local v0, "callingAppUserId":I
    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_16

    if-nez p3, :cond_16

    .line 2949
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityStarter;->maybeAddParallelUserIdtoIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    .line 2952
    :cond_16
    if-nez v0, :cond_1e

    if-ne p3, v1, :cond_1e

    .line 2954
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityStarter;->maybeAddOwnerUserIdtoIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    .line 2958
    .end local v0    # "callingAppUserId":I
    :cond_1e
    return-object p2
.end method

.method private onExecutionComplete()V
    .registers 2

    .line 603
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStartController;->onExecutionComplete(Lcom/android/server/am/ActivityStarter;)V

    .line 604
    return-void
.end method

.method private resumeTargetStackIfNeeded()V
    .registers 5

    .line 2242
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_f

    .line 2243
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_14

    .line 2245
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2247
    :goto_14
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    .line 2248
    return-void
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .registers 10

    .line 1843
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1844
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    .line 1845
    .local v0, "sourceStack":Lcom/android/server/am/ActivityStack;
    :goto_11
    if-eqz v0, :cond_38

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_38

    .line 1850
    const-string v2, "ActivityManager"

    const-string v3, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    const/4 v3, -0x1

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v2, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1854
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1856
    :cond_38
    return-void
.end method

.method private setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 26
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "doResume"    # Z
    .param p5, "startFlags"    # I
    .param p6, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    .line 1734
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStarter;->reset(Z)V

    .line 1736
    iput-object v8, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1737
    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1738
    iput-object v9, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1739
    iget v1, v8, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1740
    move-object/from16 v14, p6

    iput-object v14, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1741
    move-object/from16 v15, p7

    iput-object v15, v0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1742
    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1744
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/am/ActivityStarter;->getPreferedDisplayId(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    .line 1746
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    .line 1748
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v1

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    const/4 v3, 0x0

    move-object v2, v10

    move-object v4, v8

    move-object v5, v14

    move-object/from16 v16, v6

    move-object v6, v9

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/LaunchParamsController;->calculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .line 1751
    iget v1, v8, Lcom/android/server/am/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    .line 1753
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v2, v1, :cond_57

    move v1, v3

    goto :goto_58

    :cond_57
    move v1, v13

    :goto_58
    iget v4, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v5, 0x2

    if-ne v5, v4, :cond_5f

    move v4, v3

    goto :goto_60

    :cond_5f
    move v4, v13

    :goto_60
    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1755
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 1753
    invoke-direct {v0, v8, v1, v4, v6}, Lcom/android/server/am/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1756
    iget-boolean v1, v8, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    const/high16 v4, 0x80000

    if-eqz v1, :cond_7f

    .line 1757
    invoke-direct {v0, v5, v2}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v1

    if-nez v1, :cond_7f

    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_7f

    move v1, v3

    goto :goto_80

    :cond_7f
    move v1, v13

    :goto_80
    iput-boolean v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1760
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 1762
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_95

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_95

    .line 1763
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1768
    :cond_95
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_ab

    .line 1769
    iget-boolean v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_a4

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v1, v5, :cond_ab

    .line 1771
    :cond_a4
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1777
    :cond_ab
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x40000

    and-int/2addr v2, v4

    if-nez v2, :cond_b6

    move v2, v3

    goto :goto_b7

    :cond_b6
    move v2, v13

    :goto_b7
    iput-boolean v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1778
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v1, :cond_d8

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity() => mUserLeaving="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_d8
    iput-boolean v11, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1785
    if-eqz v11, :cond_e2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_e6

    .line 1786
    :cond_e2
    iput-boolean v3, v8, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1787
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1790
    :cond_e6
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_135

    .line 1791
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_129

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_129

    .line 1792
    iput-boolean v3, v8, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    .line 1793
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v1

    if-nez v1, :cond_135

    .line 1794
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1795
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    .line 1794
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1796
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_119

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    goto :goto_11a

    :cond_119
    move-object v4, v2

    .line 1797
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    :goto_11a
    if-eqz v4, :cond_128

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-nez v5, :cond_128

    .line 1801
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1802
    iput-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1804
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_128
    goto :goto_135

    .line 1805
    :cond_129
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-eqz v1, :cond_135

    .line 1806
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1807
    iput-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1811
    :cond_135
    :goto_135
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_13e

    move-object v1, v8

    goto :goto_13f

    :cond_13e
    move-object v1, v2

    :goto_13f
    iput-object v1, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 1813
    iput-object v10, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1818
    if-eqz v10, :cond_161

    iget-boolean v1, v10, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v1, :cond_161

    .line 1819
    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting activity in task not in recents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1823
    :cond_161
    iput v12, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1827
    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_184

    .line 1828
    move-object v1, v14

    .line 1829
    .local v1, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_174

    .line 1830
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1833
    :cond_174
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v4, v8, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_184

    .line 1835
    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1839
    .end local v1    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_184
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_18d

    move v13, v3

    nop

    :cond_18d
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 1840
    return-void
.end method

.method private setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 23
    .param p1, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    .line 2058
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2059
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2064
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2065
    .local v2, "focusStack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_19

    .line 2066
    move-object v4, v3

    goto :goto_1f

    :cond_19
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 2068
    .local v4, "curTop":Lcom/android/server/am/ActivityRecord;
    :goto_1f
    if-eqz v4, :cond_26

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    goto :goto_27

    :cond_26
    move-object v5, v3

    .line 2069
    .local v5, "topTask":Lcom/android/server/am/TaskRecord;
    :goto_27
    const/4 v6, 0x0

    if-eqz v5, :cond_136

    .line 2070
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-ne v5, v7, :cond_36

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-eq v5, v7, :cond_136

    :cond_36
    iget-boolean v7, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v7, :cond_136

    .line 2072
    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v8, 0x400000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2073
    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_61

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_136

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 2074
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-ne v7, v8, :cond_136

    .line 2076
    :cond_61
    iget-boolean v7, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v7, :cond_72

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_72

    .line 2077
    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 2086
    :cond_72
    iget v7, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v8, 0x10008000

    and-int/2addr v7, v8

    const/4 v9, 0x1

    if-ne v7, v8, :cond_7d

    move v7, v9

    goto :goto_7e

    :cond_7d
    move v7, v6

    .line 2089
    .local v7, "willClearTask":Z
    :goto_7e
    if-nez v7, :cond_136

    .line 2090
    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v10, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2091
    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2090
    invoke-direct {v0, v8, v10, v11, v12}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 2092
    .local v8, "launchStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v20

    .line 2093
    .local v20, "intentTask":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_11e

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-ne v8, v10, :cond_9c

    goto/16 :goto_11e

    .line 2100
    :cond_9c
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_de

    .line 2101
    iget v10, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v10, v10, 0x1000

    if-eqz v10, :cond_b9

    .line 2104
    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "launchToSide"

    move-object/from16 v13, v20

    move-object v14, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    goto :goto_ca

    .line 2112
    :cond_b9
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v12, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v15, "bringToFrontInsteadOfAdjacentLaunch"

    move-object/from16 v11, v20

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2116
    :goto_ca
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v10

    .line 2117
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    if-eq v8, v10, :cond_da

    move v10, v9

    goto :goto_db

    :cond_da
    move v10, v6

    :goto_db
    iput-boolean v10, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_131

    .line 2118
    :cond_de
    iget v10, v8, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v11, v11, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v10, v11, :cond_fb

    .line 2122
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "reparentToDisplay"

    move-object v14, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2125
    iput-boolean v9, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_131

    .line 2126
    :cond_fb
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v10

    if-eqz v10, :cond_131

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2127
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v10

    if-nez v10, :cond_131

    .line 2132
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "reparentingHome"

    move-object v14, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2135
    iput-boolean v9, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_131

    .line 2097
    :cond_11e
    :goto_11e
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v12, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v15, "bringingFoundTaskToFront"

    move-object/from16 v11, v20

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2099
    iput-boolean v9, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 2137
    :cond_131
    :goto_131
    iput-object v3, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2141
    invoke-virtual {v1, v3, v6, v9}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2148
    .end local v7    # "willClearTask":Z
    .end local v8    # "launchStack":Lcom/android/server/am/ActivityStack;
    .end local v20    # "intentTask":Lcom/android/server/am/TaskRecord;
    :cond_136
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2149
    iget-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-nez v3, :cond_170

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v3, :cond_170

    .line 2150
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_168

    const-string v3, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bring to front target: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    :cond_168
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v7, "intentActivityFound"

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2155
    :cond_170
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v7, v6, v6, v8}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 2159
    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x200000

    and-int/2addr v3, v6

    if-eqz v3, :cond_18b

    .line 2160
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v1, v6}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    return-object v3

    .line 2162
    :cond_18b
    return-object v1
.end method

.method private setTaskFromInTask()I
    .registers 13

    .line 2405
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2406
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

    .line 2407
    const/16 v0, 0x65

    return v0

    .line 2410
    :cond_29
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2414
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2415
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_79

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v4, :cond_79

    .line 2417
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-nez v3, :cond_5c

    .line 2418
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 2419
    :cond_5c
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v9, "inTaskToFront"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2421
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_74

    .line 2424
    return v2

    .line 2426
    :cond_74
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2427
    const/4 v1, 0x3

    return v1

    .line 2431
    :cond_79
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v3, :cond_95

    .line 2432
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v9, "inTaskToFront"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2436
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2437
    return v1

    .line 2440
    :cond_95
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v1, v1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ce

    .line 2442
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2443
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eq v1, v2, :cond_c5

    .line 2444
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string/jumbo v11, "inTaskToFront"

    move-object v6, v1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2446
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2449
    :cond_c5
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v3, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityStarter;->updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    .line 2452
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_ce
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v9, "inTaskToFront"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2455
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v2, "setTaskFromInTask"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2456
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_112

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting new activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in explicit task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2457
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2456
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    :cond_112
    const/4 v1, 0x0

    return v1
.end method

.method private setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V
    .registers 9
    .param p1, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 2166
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v1, 0x10008000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1a

    .line 2177
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2178
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 2179
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 2180
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2181
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    goto/16 :goto_d1

    :cond_1a
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_92

    const/4 v0, 0x3

    const/4 v2, 0x2

    .line 2182
    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_92

    .line 2206
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 2211
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-nez v0, :cond_46

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v1, v0, :cond_63

    :cond_46
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 2213
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2214
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_5f

    .line 2215
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2217
    :cond_5f
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_d1

    .line 2218
    :cond_63
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 2221
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2222
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto :goto_d1

    .line 2224
    :cond_74
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_80

    .line 2229
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2230
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto :goto_d1

    .line 2231
    :cond_80
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_d1

    .line 2237
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_d1

    .line 2183
    :cond_92
    :goto_92
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2185
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_d0

    .line 2189
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2192
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 2195
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 2196
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 2197
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_d0

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-nez v3, :cond_d0

    .line 2200
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2202
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/2addr v1, v4

    const-string/jumbo v4, "startActivityUnchecked"

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    .line 2206
    .end local v0    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_d0
    nop

    .line 2239
    :cond_d1
    :goto_d1
    return-void
.end method

.method private setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)I
    .registers 19
    .param p1, "taskToAffiliate"    # Lcom/android/server/am/TaskRecord;
    .param p2, "topStack"    # Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2252
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v5, 0x1

    invoke-direct {v0, v2, v5, v3, v4}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2257
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_e2

    .line 2258
    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2259
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v7

    .line 2260
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_29

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2261
    :goto_27
    move-object v8, v2

    goto :goto_2e

    .line 2260
    :cond_29
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_27

    .line 2261
    :goto_2e
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz v2, :cond_36

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    :goto_34
    move-object v9, v2

    goto :goto_39

    :cond_36
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    goto :goto_34

    :goto_39
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/lit8 v12, v2, 0x1

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v15, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2258
    invoke-virtual/range {v6 .. v15}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 2264
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    const-string/jumbo v3, "setTaskFromReuseOrCreateNewTask - mReuseTask"

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2267
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_aa

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_aa

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 2268
    invoke-static {v3}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 2269
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/am/OemQuickReply;->getInstance(Landroid/content/Context;)Lcom/android/server/am/OemQuickReply;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/am/OemQuickReply;->setQuickReplyRunning(Z)V

    .line 2270
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v3, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/am/OemQuickReply;->getInstance(Landroid/content/Context;)Lcom/android/server/am/OemQuickReply;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/OemQuickReply;->getImBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2271
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuickReply: starting new activity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mBounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v5, v5, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    :cond_aa
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v4, v4, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStarter;->updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    .line 2277
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_e1

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting new activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in new task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2278
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2277
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_e1
    goto :goto_ea

    .line 2280
    :cond_e2
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v3, "setTaskFromReuseOrCreateNewTask"

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2283
    :goto_ea
    if-eqz v1, :cond_f1

    .line 2284
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 2287
    :cond_f1
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 2288
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    const/16 v2, 0x65

    return v2

    .line 2292
    :cond_11e
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_12a

    .line 2293
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v3, "reuseOrNewTask"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2295
    :cond_12a
    const/4 v2, 0x0

    return v2
.end method

.method private setTaskFromSourceRecord()I
    .registers 15

    .line 2310
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2311
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

    .line 2312
    const/16 v0, 0x65

    return v0

    .line 2314
    :cond_2d
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2316
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 2317
    .local v1, "sourceTask":Lcom/android/server/am/TaskRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 2322
    .local v9, "sourceStack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_4c

    .line 2323
    :cond_4a
    iget v2, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    :goto_4c
    move v10, v2

    .line 2324
    .local v10, "targetDisplayId":I
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v2, v1, :cond_60

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2325
    invoke-virtual {v2, v10}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v2

    if-nez v2, :cond_5e

    goto :goto_60

    :cond_5e
    move v2, v12

    goto :goto_61

    :cond_60
    :goto_60
    move v2, v11

    :goto_61
    move v13, v2

    .line 2326
    .local v13, "moveStackAllowed":Z
    if-eqz v13, :cond_9d

    .line 2327
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2331
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_8c

    iget v2, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v10, v2, :cond_8c

    .line 2333
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2336
    :cond_8c
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_9d

    .line 2339
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2344
    :cond_9d
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_a4

    .line 2345
    iput-object v9, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    goto :goto_b5

    .line 2346
    :cond_a4
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eq v2, v9, :cond_b5

    .line 2347
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "launchToSide"

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2351
    :cond_b5
    :goto_b5
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 2352
    .local v8, "topTask":Lcom/android/server/am/TaskRecord;
    if-eq v8, v1, :cond_d3

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v2, :cond_d3

    .line 2353
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v7, "sourceTaskToFront"

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_df

    .line 2355
    :cond_d3
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_df

    .line 2356
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v3, "sourceStackToFront"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2359
    :cond_df
    :goto_df
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x7533

    if-nez v2, :cond_11a

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x4000000

    and-int/2addr v2, v6

    if-eqz v2, :cond_11a

    .line 2362
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v1, v2, v6}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2363
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 2364
    if-eqz v2, :cond_119

    .line 2365
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2366
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2368
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2369
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v4, :cond_113

    .line 2370
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2372
    :cond_113
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v4}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2373
    return v3

    .line 2375
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_119
    goto :goto_14f

    :cond_11a
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v2, :cond_14f

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x20000

    and-int/2addr v2, v6

    if-eqz v2, :cond_14f

    .line 2379
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2380
    .restart local v2    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_14f

    .line 2381
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 2382
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v6, v2}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2383
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2384
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-static {v5, v7, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2385
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2386
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2387
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v4, :cond_14e

    .line 2388
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2390
    :cond_14e
    return v3

    .line 2396
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_14f
    :goto_14f
    const-string/jumbo v2, "setTaskFromSourceRecord"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2397
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_189

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in existing task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2398
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2397
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :cond_189
    return v12
.end method

.method private setTaskToCurrentTopOrCreateNewTask()V
    .registers 13

    .line 2477
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2478
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_18

    .line 2479
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string v1, "addingToTopTask"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2481
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2482
    .local v0, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    goto :goto_44

    :cond_25
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2483
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v3

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2482
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 2485
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    :goto_44
    const-string/jumbo v2, "setTaskToCurrentTopOrCreateNewTask"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2486
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 2487
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_79

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in new guessed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2488
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2487
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    :cond_79
    return-void
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I
    .registers 51
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ephemeralIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "resultWho"    # Ljava/lang/String;
    .param p11, "requestCode"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "callingPackage"    # Ljava/lang/String;
    .param p15, "realCallingPid"    # I
    .param p16, "realCallingUid"    # I
    .param p17, "startFlags"    # I
    .param p18, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p19, "ignoreTargetSecurity"    # Z
    .param p20, "componentSpecified"    # Z
    .param p21, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p22, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p23, "reason"    # Ljava/lang/String;
    .param p24, "allowPendingRemoteAnimationRegistryLookup"    # Z

    move-object/from16 v15, p0

    .line 572
    invoke-static/range {p23 .. p23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 575
    move-object/from16 v14, p23

    iput-object v14, v15, Lcom/android/server/am/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 577
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    const/16 v24, 0x0

    aput-object v1, v0, v24

    .line 579
    iget-object v13, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

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

    move-object/from16 v21, v13

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v22, p22

    move/from16 v23, p24

    invoke-direct/range {v0 .. v23}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Z)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    .line 585
    if-eqz p21, :cond_5a

    .line 587
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v0, v24

    aput-object v0, p21, v24

    .line 590
    :cond_5a
    iget v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    invoke-static {v0}, Lcom/android/server/am/ActivityStarter;->getExternalResult(I)I

    move-result v0

    return v0

    .line 573
    :cond_61
    move-object v1, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Need to specify a reason."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Z)I
    .registers 85
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ephemeralIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "resultWho"    # Ljava/lang/String;
    .param p11, "requestCode"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "callingPackage"    # Ljava/lang/String;
    .param p15, "realCallingPid"    # I
    .param p16, "realCallingUid"    # I
    .param p17, "startFlags"    # I
    .param p18, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p19, "ignoreTargetSecurity"    # Z
    .param p20, "componentSpecified"    # Z
    .param p21, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p22, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p23, "allowPendingRemoteAnimationRegistryLookup"    # Z

    move-object/from16 v15, p0

    move-object/from16 v4, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p9

    move/from16 v6, p12

    move-object/from16 v14, p14

    move/from16 v13, p16

    move/from16 v12, p17

    move-object/from16 v11, p18

    .line 617
    invoke-static/range {p5 .. p5}, Lcom/android/server/OemSceneActivityController;->canActivityGo(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    const/4 v10, 0x0

    if-nez v5, :cond_1e

    .line 618
    return v10

    .line 624
    :cond_1e
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    const/16 v17, -0x5e

    const/4 v9, 0x0

    if-eqz v5, :cond_85

    .line 625
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " startActivityLocked # aInfo = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", callingPackage="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 626
    if-eqz v2, :cond_7b

    .line 627
    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v5

    invoke-virtual {v5, v2, v14}, Lcom/android/server/am/OnePlusAppBootManager;->canActivityGo(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_85

    .line 628
    const-string v5, "OnePlusAppBootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "forbid start "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p13

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return v17

    .line 633
    :cond_7b
    move/from16 v8, p13

    const-string v5, "OnePlusAppBootManager"

    const-string v7, "# startActivityLocked # aInfo = null"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 640
    :cond_85
    move/from16 v8, p13

    :goto_87
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 641
    if-eqz v2, :cond_9d

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_9d

    .line 642
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v7, "startActivityLocked"

    invoke-static {v5, v7}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 647
    :cond_9d
    const/4 v7, 0x0

    .line 650
    .local v7, "err":I
    if-eqz v11, :cond_a5

    invoke-virtual/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v5

    goto :goto_a6

    :cond_a5
    move-object v5, v9

    .line 652
    .local v5, "verificationBundle":Landroid/os/Bundle;
    :goto_a6
    const/16 v18, 0x0

    .line 653
    .local v18, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v4, :cond_f1

    .line 654
    iget-object v9, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v4}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    .line 655
    .end local v18    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v9, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_bd

    .line 656
    iget v6, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 657
    .end local p12    # "callingPid":I
    .local v6, "callingPid":I
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 666
    .end local p13    # "callingUid":I
    .local v8, "callingUid":I
    move/from16 v21, v7

    move v10, v8

    move v8, v6

    goto :goto_f8

    .line 659
    .end local v6    # "callingPid":I
    .end local v8    # "callingUid":I
    .restart local p12    # "callingPid":I
    .restart local p13    # "callingUid":I
    :cond_bd
    const-string v10, "ActivityManager"

    move/from16 v21, v7

    new-instance v7, Ljava/lang/StringBuilder;

    .line 659
    .end local v7    # "err":I
    .local v21, "err":I
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find app for caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") when starting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 659
    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/16 v7, -0x5e

    .line 666
    .end local v21    # "err":I
    .restart local v7    # "err":I
    move v8, v6

    move/from16 v21, v7

    move/from16 v10, p13

    goto :goto_f8

    .line 666
    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_f1
    move/from16 v21, v7

    move v8, v6

    move-object/from16 v9, v18

    move/from16 v10, p13

    .line 666
    .end local v7    # "err":I
    .end local v18    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local p12    # "callingPid":I
    .end local p13    # "callingUid":I
    .local v8, "callingPid":I
    .restart local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v10, "callingUid":I
    .restart local v21    # "err":I
    :goto_f8
    if-eqz v2, :cond_107

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_107

    .line 667
    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    goto :goto_108

    :cond_107
    const/4 v6, 0x0

    :goto_108
    move v7, v6

    .line 672
    .local v7, "userId":I
    if-eqz v2, :cond_19a

    if-eqz v0, :cond_19a

    .line 673
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v39, v5

    const/4 v5, 0x1

    .line 673
    .end local v5    # "verificationBundle":Landroid/os/Bundle;
    .local v39, "verificationBundle":Landroid/os/Bundle;
    move/from16 v40, v7

    move-object v7, v4

    .line 673
    .end local v7    # "userId":I
    .local v40, "userId":I
    move/from16 v41, v8

    move/from16 v8, p11

    .line 673
    .end local v8    # "callingPid":I
    .local v41, "callingPid":I
    move-object/from16 v42, v9

    move-object v9, v14

    .line 673
    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v42, "callerApp":Lcom/android/server/am/ProcessRecord;
    move/from16 v43, v10

    const/4 v5, 0x0

    move-object v10, v2

    .line 673
    .end local v10    # "callingUid":I
    .local v43, "callingUid":I
    move-object v11, v0

    move/from16 v12, v43

    move/from16 v13, v40

    move-object/from16 v14, p18

    invoke-virtual/range {v6 .. v14}, Lcom/android/server/am/ActivityManagerService;->checkParallelAppControl(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IILcom/android/server/am/SafeActivityOptions;)Z

    move-result v6

    if-eqz v6, :cond_188

    .line 676
    const-string v6, "IS_FROM_CHOOSER_ACTIVITY"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_188

    .line 677
    const-string v6, "IS_FROM_CHOOSER_ACTIVITY"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 678
    const-string v6, " "

    invoke-static {v0, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v12

    .line 679
    .local v12, "chooserIntent":Landroid/content/Intent;
    const-string v6, "IS_SHOW_PARALLEL_APP"

    invoke-virtual {v12, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 680
    move-object v0, v12

    .line 681
    .end local p2    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v0

    move/from16 v11, p16

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 682
    .end local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v13, 0x0

    move/from16 v14, p17

    invoke-virtual {v7, v0, v6, v14, v13}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 684
    .end local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startActivityLocked: userId("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v40

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v40    # "userId":I
    .local v11, "userId":I
    const-string v9, "), aInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", callingPackage="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p14

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/OnePlusParallelAppUtils;->pLogd(Ljava/lang/String;Ljava/lang/String;)V

    .end local v12    # "chooserIntent":Landroid/content/Intent;
    goto :goto_191

    .line 693
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "userId":I
    .restart local v40    # "userId":I
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_188
    move/from16 v11, v40

    move-object/from16 v9, p14

    const/4 v13, 0x0

    move/from16 v14, p17

    .line 693
    .end local v40    # "userId":I
    .restart local v11    # "userId":I
    move-object/from16 v6, p6

    .line 693
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_191
    move/from16 v12, v43

    invoke-direct {v15, v12, v0, v11}, Lcom/android/server/am/ActivityStarter;->maybeAddUserIdtoIntent(ILandroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    .line 700
    .end local v43    # "callingUid":I
    .local v12, "callingUid":I
    move-object v10, v0

    move-object v8, v6

    goto :goto_1a9

    .line 700
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "userId":I
    .end local v12    # "callingUid":I
    .end local v39    # "verificationBundle":Landroid/os/Bundle;
    .end local v41    # "callingPid":I
    .end local v42    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "verificationBundle":Landroid/os/Bundle;
    .restart local v7    # "userId":I
    .restart local v8    # "callingPid":I
    .restart local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v10    # "callingUid":I
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_19a
    move-object/from16 v39, v5

    move v11, v7

    move/from16 v41, v8

    move-object/from16 v42, v9

    move-object v9, v14

    const/4 v5, 0x0

    const/4 v13, 0x0

    move v14, v12

    move v12, v10

    .line 700
    .end local v5    # "verificationBundle":Landroid/os/Bundle;
    .end local v7    # "userId":I
    .end local v8    # "callingPid":I
    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "callingUid":I
    .restart local v11    # "userId":I
    .restart local v12    # "callingUid":I
    .restart local v39    # "verificationBundle":Landroid/os/Bundle;
    .restart local v41    # "callingPid":I
    .restart local v42    # "callerApp":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v8, p6

    move-object v10, v0

    .line 700
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v8, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v10, "intent":Landroid/content/Intent;
    :goto_1a9
    const/16 v0, 0x2710

    if-lt v12, v0, :cond_1ba

    if-eqz v2, :cond_1ba

    const-string v0, "com.oneplus.factorymode"

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 701
    return v17

    .line 706
    :cond_1ba
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

    if-nez v0, :cond_1c8

    .line 707
    const-class v0, Landroid/secrecy/SecrecyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/secrecy/SecrecyManagerInternal;

    iput-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

    .line 709
    :cond_1c8
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

    if-eqz v0, :cond_1f8

    const-string/jumbo v0, "sys.oem.decrypt"

    .line 710
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1f8

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

    .line 711
    move/from16 v7, v41

    invoke-virtual {v0, v2, v9, v12, v7}, Landroid/secrecy/SecrecyManagerInternal;->isInEncryptedAppList(Landroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v0

    .line 711
    .end local v41    # "callingPid":I
    .local v7, "callingPid":I
    if-eqz v0, :cond_1fa

    .line 713
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " is isInEncryptedAppList "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/16 v21, 0x64

    goto :goto_1fa

    .line 720
    .end local v7    # "callingPid":I
    .restart local v41    # "callingPid":I
    :cond_1f8
    move/from16 v7, v41

    .line 720
    .end local v41    # "callingPid":I
    .restart local v7    # "callingPid":I
    :cond_1fa
    :goto_1fa
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v8, v12}, Lcom/oneplus/util/OemSceneCallBlocker;->isCallBlockedWithUid(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;I)Z

    move-result v0

    if-eqz v0, :cond_205

    .line 721
    return v5

    .line 725
    :cond_205
    if-nez v21, :cond_25e

    .line 726
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "START u"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " {"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    invoke-virtual {v10, v13, v13, v13, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "} from uid "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 738
    .local v0, "cmp":Landroid/content/ComponentName;
    if-eqz v0, :cond_25e

    .line 739
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 740
    .local v4, "name":Ljava/lang/String;
    const-string v6, "android"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_251

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 741
    :cond_251
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConnor:Lcom/android/server/am/Connor;

    const-string v13, "android.intent.category.HOME"

    invoke-virtual {v10, v13}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v6, v4, v13}, Lcom/android/server/am/Connor;->feed(Ljava/lang/String;Z)V

    .line 748
    .end local v0    # "cmp":Landroid/content/ComponentName;
    .end local v4    # "name":Ljava/lang/String;
    :cond_25e
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_286

    if-eqz v2, :cond_286

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_286

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 750
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_286

    .line 751
    const-string v0, "ActivityManager"

    const-string v4, "QuickReply: kill IME before start it"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/ActivityManagerService;->killApplicationProcess(Ljava/lang/String;I)V

    .line 757
    :cond_286
    const/4 v0, 0x0

    .line 758
    .local v0, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v4, 0x0

    .line 759
    .local v4, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_2bb

    .line 760
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 761
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v6, :cond_2b2

    const-string v6, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Will send result to "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_2b2
    if-eqz v0, :cond_2bb

    .line 764
    if-ltz p11, :cond_2bb

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_2bb

    .line 765
    move-object v4, v0

    .line 770
    .end local v0    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v5, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_2bb
    move-object v5, v0

    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v17

    .line 772
    .local v17, "launchFlags":I
    const/high16 v0, 0x2000000

    and-int v0, v17, v0

    if-eqz v0, :cond_2f3

    if-eqz v5, :cond_2f3

    .line 775
    if-ltz p11, :cond_2d0

    .line 776
    invoke-static/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    .line 777
    const/16 v0, -0x5d

    return v0

    .line 779
    :cond_2d0
    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 780
    .end local v4    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .local v0, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2db

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked()Z

    move-result v4

    if-nez v4, :cond_2db

    .line 781
    const/4 v0, 0x0

    .line 783
    :cond_2db
    iget-object v4, v5, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 784
    .end local p10    # "resultWho":Ljava/lang/String;
    .local v4, "resultWho":Ljava/lang/String;
    iget v6, v5, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 785
    .end local p11    # "requestCode":I
    .local v6, "requestCode":I
    const/4 v13, 0x0

    iput-object v13, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 786
    if-eqz v0, :cond_2e7

    .line 787
    invoke-virtual {v0, v5, v4, v6}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 789
    :cond_2e7
    iget v13, v5, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    if-ne v13, v12, :cond_2ed

    .line 800
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 804
    .end local v0    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "requestCode":I
    .end local p14    # "callingPackage":Ljava/lang/String;
    .local v4, "callingPackage":Ljava/lang/String;
    .local v13, "resultRecord":Lcom/android/server/am/ActivityRecord;
    .local v16, "resultWho":Ljava/lang/String;
    .local v18, "requestCode":I
    :cond_2ed
    move-object v13, v0

    move-object/from16 v16, v4

    move/from16 v18, v6

    goto :goto_2f8

    .line 804
    .end local v13    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "resultWho":Ljava/lang/String;
    .end local v18    # "requestCode":I
    .local v4, "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local p10    # "resultWho":Ljava/lang/String;
    .restart local p11    # "requestCode":I
    .restart local p14    # "callingPackage":Ljava/lang/String;
    :cond_2f3
    move-object/from16 v16, p10

    move/from16 v18, p11

    move-object v13, v4

    .line 804
    .end local p10    # "resultWho":Ljava/lang/String;
    .end local p11    # "requestCode":I
    .end local p14    # "callingPackage":Ljava/lang/String;
    .local v4, "callingPackage":Ljava/lang/String;
    .restart local v13    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "resultWho":Ljava/lang/String;
    .restart local v18    # "requestCode":I
    :goto_2f8
    move-object v4, v9

    if-nez v21, :cond_303

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_303

    .line 807
    const/16 v21, -0x5b

    .line 810
    :cond_303
    if-nez v21, :cond_309

    if-nez v2, :cond_309

    .line 813
    const/16 v21, -0x5c

    .line 816
    :cond_309
    if-nez v21, :cond_361

    if-eqz v5, :cond_361

    .line 817
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_361

    .line 822
    const/high16 v0, 0x10000000

    and-int v0, v17, v0

    if-nez v0, :cond_361

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v6, :cond_361

    .line 825
    :try_start_327
    const-string v0, "android.intent.category.VOICE"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 827
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 826
    invoke-interface {v0, v6, v10, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_356

    .line 828
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_352
    .catch Landroid/os/RemoteException; {:try_start_327 .. :try_end_352} :catch_357

    .line 831
    const/16 v0, -0x61

    .line 836
    .end local v21    # "err":I
    .local v0, "err":I
    move/from16 v21, v0

    .line 836
    .end local v0    # "err":I
    .restart local v21    # "err":I
    :cond_356
    goto :goto_361

    .line 833
    :catch_357
    move-exception v0

    .line 834
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "ActivityManager"

    const-string v9, "Failure checking voice capabilities"

    invoke-static {v6, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 835
    const/16 v21, -0x61

    .line 840
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_361
    :goto_361
    if-nez v21, :cond_39a

    if-eqz p7, :cond_39a

    .line 844
    :try_start_365
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v0, v6, v10, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38f

    .line 846
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity being started in new voice task does not support: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38b
    .catch Landroid/os/RemoteException; {:try_start_365 .. :try_end_38b} :catch_390

    .line 849
    const/16 v0, -0x61

    .line 854
    .end local v21    # "err":I
    .local v0, "err":I
    move/from16 v21, v0

    .line 854
    .end local v0    # "err":I
    .restart local v21    # "err":I
    :cond_38f
    goto :goto_39a

    .line 851
    :catch_390
    move-exception v0

    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "ActivityManager"

    const-string v9, "Failure checking voice capabilities"

    invoke-static {v6, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    const/16 v21, -0x61

    .line 857
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v21    # "err":I
    .local v19, "err":I
    :cond_39a
    :goto_39a
    move/from16 v19, v21

    if-nez v13, :cond_3a1

    const/16 v44, 0x0

    goto :goto_3a7

    :cond_3a1
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    move-object/from16 v44, v9

    .line 859
    .local v44, "resultStack":Lcom/android/server/am/ActivityStack;
    :goto_3a7
    if-eqz v19, :cond_3be

    .line 860
    if-eqz v13, :cond_3ba

    .line 861
    const/16 v45, -0x1

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v46, v13

    move-object/from16 v47, v16

    move/from16 v48, v18

    invoke-virtual/range {v44 .. v50}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 864
    :cond_3ba
    invoke-static/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    .line 865
    return v19

    .line 868
    :cond_3be
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p22, :cond_3c5

    const/16 v30, 0x1

    goto :goto_3c7

    :cond_3c5
    const/16 v30, 0x0

    :goto_3c7
    move-object/from16 v21, v0

    move-object/from16 v22, v10

    move-object/from16 v23, v2

    move-object/from16 v24, v16

    move/from16 v25, v18

    move/from16 v26, v7

    move/from16 v27, v12

    move-object/from16 v28, v4

    move/from16 v29, p19

    move-object/from16 v31, v42

    move-object/from16 v32, v13

    move-object/from16 v33, v44

    invoke-virtual/range {v21 .. v33}, Lcom/android/server/am/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    .line 871
    .local v0, "abort":Z
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v21, v7

    move-object v7, v10

    .line 871
    .end local v7    # "callingPid":I
    .local v21, "callingPid":I
    move-object/from16 v22, v8

    move v8, v12

    .line 871
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v22, "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v23, v9

    move/from16 v9, v21

    move-object v3, v10

    move-object v10, v1

    .line 871
    .end local v10    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    move/from16 v51, v11

    move-object/from16 v11, v23

    .line 871
    .end local v11    # "userId":I
    .local v51, "userId":I
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    or-int/2addr v6, v0

    .line 875
    .end local v0    # "abort":Z
    .local v6, "abort":Z
    move-object/from16 v11, p18

    if-eqz v11, :cond_40f

    .line 876
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v10, v42

    invoke-virtual {v11, v3, v2, v10, v0}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v9

    .line 876
    .end local v42    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v10, "callerApp":Lcom/android/server/am/ProcessRecord;
    goto :goto_412

    .line 877
    .end local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v42    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_40f
    move-object/from16 v10, v42

    .line 877
    .end local v42    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    const/4 v9, 0x0

    :goto_412
    move-object v0, v9

    .line 878
    .local v0, "checkedOptions":Landroid/app/ActivityOptions;
    if-eqz p23, :cond_423

    .line 879
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v7

    .line 880
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStartController;->getPendingRemoteAnimationRegistry()Lcom/android/server/am/PendingRemoteAnimationRegistry;

    move-result-object v7

    .line 881
    invoke-virtual {v7, v4, v0}, Lcom/android/server/am/PendingRemoteAnimationRegistry;->overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 883
    .end local v0    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v23, "checkedOptions":Landroid/app/ActivityOptions;
    :cond_423
    move-object/from16 v23, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_449

    .line 887
    :try_start_42b
    invoke-virtual {v3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 888
    .local v0, "watchIntent":Landroid/content/Intent;
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v0, v8}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v7
    :try_end_43b
    .catch Landroid/os/RemoteException; {:try_start_42b .. :try_end_43b} :catch_442

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    or-int/2addr v6, v7

    .line 892
    .end local v0    # "watchIntent":Landroid/content/Intent;
    nop

    .line 895
    move v0, v6

    const/4 v9, 0x0

    goto :goto_44b

    .line 890
    :catch_442
    move-exception v0

    .line 891
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 891
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_44a

    .line 895
    :cond_449
    const/4 v9, 0x0

    :goto_44a
    move v0, v6

    .line 895
    .end local v6    # "abort":Z
    .local v0, "abort":Z
    :goto_44b
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move/from16 v7, v51

    move/from16 v8, p15

    move-object/from16 v24, v9

    move/from16 v9, p16

    move-object/from16 v40, v10

    move v10, v14

    .line 895
    .end local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v40, "callerApp":Lcom/android/server/am/ProcessRecord;
    move-object v11, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;)V

    .line 896
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move-object v7, v3

    move-object/from16 v8, v22

    move-object v9, v2

    move-object v10, v1

    move-object/from16 v11, p22

    move/from16 v25, v12

    move/from16 v12, v21

    .line 896
    .end local v12    # "callingUid":I
    .local v25, "callingUid":I
    move-object/from16 v52, v5

    move-object/from16 v41, v13

    move-object/from16 v5, v24

    move/from16 v13, v25

    .line 896
    .end local v5    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .local v41, "resultRecord":Lcom/android/server/am/ActivityRecord;
    .local v52, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    move v5, v14

    move-object/from16 v14, v23

    invoke-virtual/range {v6 .. v14}, Lcom/android/server/am/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)Z

    move-result v6

    if-eqz v6, :cond_49e

    .line 900
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v10, v6, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 901
    .end local v3    # "intent":Landroid/content/Intent;
    .local v10, "intent":Landroid/content/Intent;
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v8, v3, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 902
    .end local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v2, v3, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 903
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v1, v3, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 904
    .end local p4    # "resolvedType":Ljava/lang/String;
    .local v1, "resolvedType":Ljava/lang/String;
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 905
    .end local p22    # "inTask":Lcom/android/server/am/TaskRecord;
    .local v3, "inTask":Lcom/android/server/am/TaskRecord;
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v6, v6, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 906
    .end local v21    # "callingPid":I
    .local v6, "callingPid":I
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v7, v7, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 907
    .end local v25    # "callingUid":I
    .local v7, "callingUid":I
    iget-object v9, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 910
    .end local v23    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v9, "checkedOptions":Landroid/app/ActivityOptions;
    move-object/from16 v20, v3

    move-object v14, v9

    goto :goto_4a9

    .line 910
    .end local v1    # "resolvedType":Ljava/lang/String;
    .end local v6    # "callingPid":I
    .end local v7    # "callingUid":I
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v10    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    .restart local v21    # "callingPid":I
    .restart local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v23    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v25    # "callingUid":I
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p22    # "inTask":Lcom/android/server/am/TaskRecord;
    :cond_49e
    move-object/from16 v20, p22

    move-object v10, v3

    move/from16 v6, v21

    move-object/from16 v8, v22

    move-object/from16 v14, v23

    move/from16 v7, v25

    .line 910
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v21    # "callingPid":I
    .end local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v23    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v25    # "callingUid":I
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p22    # "inTask":Lcom/android/server/am/TaskRecord;
    .restart local v1    # "resolvedType":Ljava/lang/String;
    .restart local v6    # "callingPid":I
    .restart local v7    # "callingUid":I
    .restart local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v10    # "intent":Landroid/content/Intent;
    .local v14, "checkedOptions":Landroid/app/ActivityOptions;
    .local v20, "inTask":Lcom/android/server/am/TaskRecord;
    :goto_4a9
    if-eqz v0, :cond_4c4

    .line 911
    if-eqz v41, :cond_4be

    .line 912
    const/16 v23, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v44

    move-object/from16 v24, v41

    move-object/from16 v25, v16

    move/from16 v26, v18

    invoke-virtual/range {v22 .. v28}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 917
    :cond_4be
    invoke-static {v14}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 918
    const/16 v3, 0x66

    return v3

    .line 924
    :cond_4c4
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mPermissionReviewRequired:Z

    if-eqz v3, :cond_5c4

    if-eqz v2, :cond_5c4

    .line 925
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v13, v51

    invoke-virtual {v3, v9, v13}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v3

    .line 925
    .end local v51    # "userId":I
    .local v13, "userId":I
    if-eqz v3, :cond_5bb

    .line 927
    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v23, 0x2

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/4 v9, 0x1

    new-array v11, v9, [Landroid/content/Intent;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    move/from16 v53, v0

    new-array v0, v9, [Ljava/lang/String;

    .end local v0    # "abort":Z
    .local v53, "abort":Z
    aput-object v1, v0, v12

    const/high16 v32, 0x50000000

    const/16 v33, 0x0

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move/from16 v25, v7

    move/from16 v26, v13

    move-object/from16 v30, v11

    move-object/from16 v31, v0

    invoke-virtual/range {v22 .. v33}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 933
    .local v0, "target":Landroid/content/IIntentSender;
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 934
    .local v3, "flags":I
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 935
    .local v9, "newIntent":Landroid/content/Intent;
    const/high16 v11, 0x800000

    or-int/2addr v11, v3

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 937
    const-string v11, "android.intent.extra.PACKAGE_NAME"

    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    const-string v11, "android.intent.extra.INTENT"

    new-instance v12, Landroid/content/IntentSender;

    invoke-direct {v12, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 939
    if-eqz v41, :cond_530

    .line 940
    const-string v11, "android.intent.extra.RESULT_NEEDED"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 942
    :cond_530
    move-object v10, v9

    .line 944
    const/4 v1, 0x0

    .line 945
    move/from16 v7, p16

    .line 946
    move/from16 v6, p15

    .line 948
    iget-object v11, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v26, 0x0

    iget-object v12, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v12, v12, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 949
    move-object/from16 v54, v9

    move/from16 v9, p16

    invoke-static {v7, v9, v12}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v27

    .line 948
    .end local v9    # "newIntent":Landroid/content/Intent;
    .local v54, "newIntent":Landroid/content/Intent;
    move-object/from16 v22, v11

    move-object/from16 v23, v10

    move-object/from16 v24, v1

    move/from16 v25, v13

    invoke-virtual/range {v22 .. v27}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 951
    iget-object v11, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v8, v5, v12}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 953
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v11, :cond_5ad

    .line 954
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v55, v0

    const-string v0, "START u"

    .line 954
    .end local v0    # "target":Landroid/content/IIntentSender;
    .local v55, "target":Landroid/content/IIntentSender;
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " {"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v56, v8

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {v10, v5, v5, v5, v8}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v56, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "} from uid "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pid "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " on display "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_59c

    .line 962
    move v0, v8

    goto :goto_5a2

    :cond_59c
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    :goto_5a2
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 954
    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    .end local v3    # "flags":I
    .end local v54    # "newIntent":Landroid/content/Intent;
    .end local v55    # "target":Landroid/content/IIntentSender;
    goto :goto_5b1

    .line 971
    .end local v56    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_5ad
    move-object/from16 v56, v8

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 971
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v56    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_5b1
    move-object/from16 v22, v2

    move/from16 v21, v6

    move v12, v7

    move-object v11, v10

    move-object/from16 v0, v56

    move-object v10, v1

    goto :goto_5d7

    .line 971
    .end local v53    # "abort":Z
    .end local v56    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v0, "abort":Z
    .restart local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_5bb
    move/from16 v9, p16

    move/from16 v53, v0

    move-object/from16 v22, v8

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 971
    .end local v0    # "abort":Z
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v53    # "abort":Z
    goto :goto_5ce

    .line 971
    .end local v13    # "userId":I
    .end local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v53    # "abort":Z
    .restart local v0    # "abort":Z
    .restart local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v51    # "userId":I
    :cond_5c4
    move/from16 v9, p16

    move/from16 v53, v0

    move-object/from16 v22, v8

    move/from16 v13, v51

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 971
    .end local v0    # "abort":Z
    .end local v8    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v51    # "userId":I
    .restart local v13    # "userId":I
    .restart local v22    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v53    # "abort":Z
    :goto_5ce
    move/from16 v21, v6

    move v12, v7

    move-object v11, v10

    move-object/from16 v0, v22

    move-object v10, v1

    move-object/from16 v22, v2

    .line 971
    .end local v1    # "resolvedType":Ljava/lang/String;
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "callingPid":I
    .end local v7    # "callingUid":I
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v10, "resolvedType":Ljava/lang/String;
    .local v11, "intent":Landroid/content/Intent;
    .restart local v12    # "callingUid":I
    .restart local v21    # "callingPid":I
    .local v22, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_5d7
    if-eqz v0, :cond_601

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v1, :cond_601

    .line 972
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    move-object v1, v15

    move-object/from16 v3, p3

    move-object/from16 v42, v4

    .line 972
    .end local v4    # "callingPackage":Ljava/lang/String;
    .local v42, "callingPackage":Ljava/lang/String;
    move-object v6, v10

    move v7, v13

    move/from16 v58, v12

    move-object/from16 v5, v39

    move-object/from16 v57, v52

    move/from16 v8, p17

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 974
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "callingUid":I
    .end local v39    # "verificationBundle":Landroid/os/Bundle;
    .end local v52    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v1, "intent":Landroid/content/Intent;
    .local v5, "verificationBundle":Landroid/os/Bundle;
    .local v57, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v58, "callingUid":I
    const/4 v2, 0x0

    .line 975
    .end local v10    # "resolvedType":Ljava/lang/String;
    .local v2, "resolvedType":Ljava/lang/String;
    move v3, v9

    .line 976
    .end local v58    # "callingUid":I
    .local v3, "callingUid":I
    move/from16 v4, p15

    .line 978
    .end local v21    # "callingPid":I
    .local v4, "callingPid":I
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v1, v0, v8, v12}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 981
    .end local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    move/from16 v58, v3

    move-object v3, v6

    goto :goto_611

    .line 981
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resolvedType":Ljava/lang/String;
    .end local v3    # "callingUid":I
    .end local v5    # "verificationBundle":Landroid/os/Bundle;
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v42    # "callingPackage":Ljava/lang/String;
    .end local v57    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v4, "callingPackage":Ljava/lang/String;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v12    # "callingUid":I
    .restart local v21    # "callingPid":I
    .restart local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v39    # "verificationBundle":Landroid/os/Bundle;
    .restart local v52    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_601
    move-object/from16 v42, v4

    move/from16 v58, v12

    move-object/from16 v5, v39

    move-object/from16 v57, v52

    move/from16 v8, p17

    .line 981
    .end local v4    # "callingPackage":Ljava/lang/String;
    .end local v12    # "callingUid":I
    .end local v39    # "verificationBundle":Landroid/os/Bundle;
    .end local v52    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "verificationBundle":Landroid/os/Bundle;
    .restart local v42    # "callingPackage":Ljava/lang/String;
    .restart local v57    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v58    # "callingUid":I
    move-object v2, v10

    move-object v1, v11

    move/from16 v4, v21

    move-object/from16 v3, v22

    .line 981
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v21    # "callingPid":I
    .end local v22    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "resolvedType":Ljava/lang/String;
    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v4, "callingPid":I
    :goto_611
    new-instance v6, Lcom/android/server/am/ActivityRecord;

    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 982
    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v30

    if-eqz p7, :cond_620

    const/16 v35, 0x1

    goto :goto_622

    :cond_620
    const/16 v35, 0x0

    :goto_622
    iget-object v10, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v40

    move/from16 v24, v4

    move/from16 v25, v58

    move-object/from16 v26, v42

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v41

    move-object/from16 v32, v16

    move/from16 v33, v18

    move/from16 v34, p20

    move-object/from16 v36, v10

    move-object/from16 v37, v14

    move-object/from16 v38, v57

    invoke-direct/range {v21 .. v38}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    move-object v12, v6

    .line 985
    .local v12, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p21, :cond_64d

    .line 986
    const/4 v6, 0x0

    aput-object v12, p21, v6

    .line 989
    :cond_64d
    iget-object v6, v12, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v6, :cond_65a

    move-object/from16 v11, v57

    if-eqz v11, :cond_65c

    .line 992
    .end local v57    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v11, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v11, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v6, v12, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_65c

    .line 995
    .end local v11    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v57    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_65a
    move-object/from16 v11, v57

    .line 995
    .end local v57    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v11    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_65c
    :goto_65c
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v6, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 999
    .local v10, "stack":Lcom/android/server/am/ActivityStack;
    if-nez p7, :cond_6ba

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_67e

    .line 1000
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v9, :cond_675

    goto :goto_67e

    .line 1010
    :cond_675
    move-object/from16 v59, v0

    move-object/from16 v60, v1

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    goto :goto_6c2

    .line 1001
    :cond_67e
    :goto_67e
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v21, "Activity start"

    move v7, v4

    move/from16 v8, v58

    move/from16 v9, p15

    move-object/from16 v22, v10

    move/from16 v10, p16

    .line 1001
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .local v22, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v23, v11

    move-object/from16 v11, v21

    .line 1001
    .end local v11    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v23, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6b5

    .line 1003
    iget-object v11, v15, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    new-instance v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    move-object v6, v10

    move-object v7, v12

    move-object/from16 v8, v23

    move/from16 v9, p17

    move-object/from16 v59, v0

    move-object v0, v10

    move-object/from16 v10, v22

    .line 1003
    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v59, "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v60, v1

    move-object v1, v11

    move-object/from16 v11, v40

    .line 1003
    .end local v1    # "intent":Landroid/content/Intent;
    .local v60, "intent":Landroid/content/Intent;
    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStartController;->addPendingActivityLaunch(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;)V

    .line 1005
    invoke-static {v14}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1006
    const/16 v0, 0x64

    return v0

    .line 1010
    .end local v59    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v60    # "intent":Landroid/content/Intent;
    .restart local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_6b5
    move-object/from16 v59, v0

    move-object/from16 v60, v1

    .line 1010
    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v59    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v60    # "intent":Landroid/content/Intent;
    goto :goto_6c2

    .line 1010
    .end local v22    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v23    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .end local v59    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v60    # "intent":Landroid/content/Intent;
    .restart local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v11    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_6ba
    move-object/from16 v59, v0

    move-object/from16 v60, v1

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    .line 1010
    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v11    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v22    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v23    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v59    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v60    # "intent":Landroid/content/Intent;
    :goto_6c2
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v0, :cond_6cf

    .line 1016
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    goto :goto_6d4

    .line 1018
    :cond_6cf
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    .line 1021
    :goto_6d4
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStartController;->doPendingActivityLaunches(Z)V

    .line 1023
    const/4 v0, 0x1

    move-object v6, v15

    move-object v7, v12

    move-object/from16 v8, v23

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p17

    move-object v1, v12

    move v12, v0

    .line 1023
    .end local v12    # "r":Lcom/android/server/am/ActivityRecord;
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    move/from16 v21, v13

    move-object v13, v14

    .line 1023
    .end local v13    # "userId":I
    .local v21, "userId":I
    move-object v0, v14

    move-object/from16 v14, v20

    .line 1023
    .end local v14    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v0, "checkedOptions":Landroid/app/ActivityOptions;
    move-object/from16 v15, p21

    invoke-direct/range {v6 .. v15}, Lcom/android/server/am/ActivityStarter;->startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v6

    return v6
.end method

.method private startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .registers 21
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p9, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    move-object v1, p0

    .line 1372
    const/16 v0, -0x60

    move v2, v0

    .line 1374
    .local v2, "result":I
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1375
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/ActivityStarter;->startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_38

    .line 1381
    .end local v2    # "result":I
    .local v0, "result":I
    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1382
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    if-nez v3, :cond_29

    if-eqz v2, :cond_29

    .line 1383
    iget-object v4, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "startActivity"

    const/4 v8, 0x1

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1386
    :cond_29
    iget-object v3, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1387
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    nop

    .line 1389
    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object v3, p1

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/server/am/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 1391
    return v0

    .line 1381
    .end local v0    # "result":I
    .local v2, "result":I
    :catchall_38
    move-exception v0

    move-object v3, p1

    iget-object v4, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1382
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v5

    if-nez v5, :cond_54

    if-eqz v4, :cond_54

    .line 1383
    iget-object v6, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string/jumbo v9, "startActivity"

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1386
    :cond_54
    iget-object v5, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1387
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    throw v0
.end method

.method private startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ZILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I
    .registers 68
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/WaitResult;
    .param p14, "globalConfig"    # Landroid/content/res/Configuration;
    .param p15, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p16, "ignoreTargetSecurity"    # Z
    .param p17, "userId"    # I
    .param p18, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p19, "reason"    # Ljava/lang/String;
    .param p20, "allowPendingRemoteAnimationRegistryLookup"    # Z

    move-object/from16 v15, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p4

    move-object/from16 v14, p13

    move-object/from16 v13, p14

    move/from16 v12, p17

    .line 1109
    if-eqz v0, :cond_1d

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_1d

    .line 1110
    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1112
    :cond_1d
    :goto_1d
    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    .line 1113
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    .line 1115
    .local v2, "componentSpecified":Z
    :goto_2f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v28

    .line 1116
    .local v28, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1119
    .local v10, "realCallingUid":I
    if-ltz p2, :cond_3d

    .line 1120
    const/4 v5, -0x1

    .line 1125
    .local v5, "callingPid":I
    move/from16 v9, p2

    goto :goto_47

    .line 1121
    .end local v5    # "callingPid":I
    :cond_3d
    if-nez v1, :cond_44

    .line 1122
    move/from16 v5, v28

    .line 1123
    .restart local v5    # "callingPid":I
    move v4, v10

    .line 1125
    .end local p2    # "callingUid":I
    .local v4, "callingUid":I
    .local v9, "callingUid":I
    :goto_42
    move v9, v4

    goto :goto_47

    .line 1125
    .end local v4    # "callingUid":I
    .end local v5    # "callingPid":I
    .end local v9    # "callingUid":I
    .restart local p2    # "callingUid":I
    :cond_44
    const/4 v5, -0x1

    move v4, v5

    goto :goto_42

    .line 1125
    .end local p2    # "callingUid":I
    .restart local v5    # "callingPid":I
    .restart local v9    # "callingUid":I
    :goto_47
    move v8, v5

    .line 1129
    .end local v5    # "callingPid":I
    .local v8, "callingPid":I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1131
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v7, v5

    .line 1132
    .end local p4    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    if-eqz v2, :cond_94

    const-string v5, "android.intent.action.VIEW"

    .line 1133
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_94

    :cond_68
    const-string v5, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    .line 1134
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_94

    const-string v5, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    .line 1135
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_94

    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1136
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    .line 1137
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 1141
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1142
    const/4 v2, 0x0

    .line 1145
    :cond_94
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v16, 0x0

    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v6, v6, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 1146
    invoke-static {v9, v10, v6}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v17

    .line 1145
    move-object v6, v7

    move-object/from16 v29, v7

    move-object/from16 v7, p5

    .line 1145
    .end local v7    # "intent":Landroid/content/Intent;
    .local v29, "intent":Landroid/content/Intent;
    move v11, v8

    move v8, v12

    .line 1145
    .end local v8    # "callingPid":I
    .local v11, "callingPid":I
    move v3, v9

    move/from16 v9, v16

    .line 1145
    .end local v9    # "callingUid":I
    .local v3, "callingUid":I
    move-object/from16 v32, v4

    move v4, v10

    move/from16 v10, v17

    .line 1145
    .end local v10    # "realCallingUid":I
    .local v4, "realCallingUid":I
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1152
    .local v5, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->IS_PARALLEL_APP_FEATURED:Z

    if-eqz v6, :cond_ee

    .line 1153
    if-nez v5, :cond_ee

    .line 1154
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1156
    .local v6, "identity":J
    const/16 v8, 0x3e7

    if-ne v12, v8, :cond_ea

    .line 1157
    :try_start_c3
    const-string v8, "ActivityManager"

    const-string/jumbo v9, "startActivity resolve intent to owner"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v9, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v9, v9, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 1159
    invoke-static {v3, v4, v9}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v21

    .line 1158
    move-object/from16 v16, v8

    move-object/from16 v17, v29

    move-object/from16 v18, p5

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v8
    :try_end_e3
    .catchall {:try_start_c3 .. :try_end_e3} :catchall_e5

    move-object v5, v8

    goto :goto_ea

    .line 1163
    :catchall_e5
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_ea
    :goto_ea
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1164
    nop

    .line 1169
    .end local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "identity":J
    .local v16, "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_ee
    move-object/from16 v16, v5

    if-nez v16, :cond_160

    .line 1170
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 1171
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v10, :cond_160

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_160

    .line 1175
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    .line 1176
    .local v9, "userManager":Landroid/os/UserManager;
    const/4 v5, 0x0

    .line 1177
    .local v5, "profileLockedAndParentUnlockingOrUnlocked":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    move-wide v7, v6

    .line 1179
    .local v7, "token":J
    :try_start_10e
    invoke-virtual {v9, v12}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v6
    :try_end_112
    .catchall {:try_start_10e .. :try_end_112} :catchall_153

    .line 1180
    .local v6, "parent":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_12c

    :try_start_114
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    .line 1181
    invoke-virtual {v9, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 1182
    invoke-virtual {v9, v12}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0
    :try_end_120
    .catchall {:try_start_114 .. :try_end_120} :catchall_124

    if-nez v0, :cond_12c

    const/4 v0, 0x1

    goto :goto_12d

    .line 1184
    .end local v6    # "parent":Landroid/content/pm/UserInfo;
    :catchall_124
    move-exception v0

    move-wide/from16 v33, v7

    move-object/from16 v19, v9

    move-object/from16 v17, v10

    goto :goto_15a

    .line 1182
    .restart local v6    # "parent":Landroid/content/pm/UserInfo;
    :cond_12c
    const/4 v0, 0x0

    .line 1184
    .end local v5    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v6    # "parent":Landroid/content/pm/UserInfo;
    .local v0, "profileLockedAndParentUnlockingOrUnlocked":Z
    :goto_12d
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1185
    nop

    .line 1186
    if-eqz v0, :cond_160

    .line 1187
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/high16 v17, 0xc0000

    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v6, v6, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 1190
    invoke-static {v3, v4, v6}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v18

    .line 1187
    move-object/from16 v6, v29

    move-wide/from16 v33, v7

    move-object/from16 v7, p5

    .line 1187
    .end local v7    # "token":J
    .local v33, "token":J
    move v8, v12

    move-object/from16 v19, v9

    move/from16 v9, v17

    .line 1187
    .end local v9    # "userManager":Landroid/os/UserManager;
    .local v19, "userManager":Landroid/os/UserManager;
    move-object/from16 v17, v10

    move/from16 v10, v18

    .line 1187
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    .local v17, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 1187
    .end local v0    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v17    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v19    # "userManager":Landroid/os/UserManager;
    .end local v33    # "token":J
    goto :goto_160

    .line 1184
    .restart local v5    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .restart local v7    # "token":J
    .restart local v9    # "userManager":Landroid/os/UserManager;
    .restart local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_153
    move-exception v0

    move-wide/from16 v33, v7

    move-object/from16 v19, v9

    move-object/from16 v17, v10

    .line 1184
    .end local v7    # "token":J
    .end local v9    # "userManager":Landroid/os/UserManager;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v17    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v19    # "userManager":Landroid/os/UserManager;
    .restart local v33    # "token":J
    :goto_15a
    move-wide/from16 v6, v33

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1184
    .end local v33    # "token":J
    .local v6, "token":J
    throw v0

    .line 1196
    .end local v5    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v6    # "token":J
    .end local v16    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v17    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v19    # "userManager":Landroid/os/UserManager;
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_160
    :goto_160
    move-object/from16 v10, v16

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v9, p11

    move-object/from16 v8, p12

    move-object/from16 v5, v29

    invoke-virtual {v0, v5, v10, v9, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 1198
    .end local v29    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_171
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1199
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;
    :try_end_178
    .catchall {:try_start_171 .. :try_end_178} :catchall_5b8

    move-object/from16 v35, v0

    .line 1200
    .local v35, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v13, :cond_1a1

    :try_start_17c
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1201
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0
    :try_end_186
    .catchall {:try_start_17c .. :try_end_186} :catchall_18a

    if-eqz v0, :cond_1a1

    const/4 v0, 0x1

    goto :goto_1a2

    .line 1348
    .end local v35    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_18a
    move-exception v0

    move-object/from16 v43, p5

    move-object/from16 v42, v1

    move/from16 v40, v3

    move-object/from16 v27, v6

    move-object/from16 v30, v7

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    .line 1348
    .end local v3    # "callingUid":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    .local v30, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "realCallingUid":I
    .local v40, "callingUid":I
    .local v42, "caller":Landroid/app/IApplicationThread;
    .local v43, "resolvedType":Ljava/lang/String;
    :goto_198
    move-object v7, v5

    :goto_199
    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    goto/16 :goto_5d3

    .line 1201
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v40    # "callingUid":I
    .end local v42    # "caller":Landroid/app/IApplicationThread;
    .end local v43    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "callingUid":I
    .local v4, "realCallingUid":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    .restart local v35    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :cond_1a1
    const/4 v0, 0x0

    :goto_1a2
    move-object/from16 v9, v35

    :try_start_1a4
    iput-boolean v0, v9, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1202
    .end local v35    # "stack":Lcom/android/server/am/ActivityStack;
    .local v9, "stack":Lcom/android/server/am/ActivityStack;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z
    :try_end_1a8
    .catchall {:try_start_1a4 .. :try_end_1a8} :catchall_5b8

    if-eqz v0, :cond_1ef

    :try_start_1aa
    const-string v0, "ActivityManager"
    :try_end_1ac
    .catchall {:try_start_1aa .. :try_end_1ac} :catchall_1d6

    move/from16 v36, v2

    :try_start_1ae
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1202
    .end local v2    # "componentSpecified":Z
    .local v36, "componentSpecified":Z
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting activity when config will change = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v9, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c4
    .catchall {:try_start_1ae .. :try_end_1c4} :catchall_1c5

    goto :goto_1f1

    .line 1348
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_1c5
    move-exception v0

    move-object/from16 v43, p5

    move-object/from16 v42, v1

    move/from16 v40, v3

    .line 1348
    .end local v3    # "callingUid":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v36    # "componentSpecified":Z
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local v2    # "componentSpecified":Z
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "realCallingUid":I
    .restart local v40    # "callingUid":I
    .restart local v42    # "caller":Landroid/app/IApplicationThread;
    .restart local v43    # "resolvedType":Ljava/lang/String;
    :goto_1cc
    move-object/from16 v27, v6

    move-object/from16 v30, v7

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move/from16 v2, v36

    goto :goto_198

    .line 1348
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v40    # "callingUid":I
    .end local v42    # "caller":Landroid/app/IApplicationThread;
    .end local v43    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "callingUid":I
    .local v4, "realCallingUid":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :catchall_1d6
    move-exception v0

    move/from16 v36, v2

    move-object/from16 v43, p5

    move-object/from16 v42, v1

    move/from16 v40, v3

    move-object/from16 v27, v6

    move-object/from16 v30, v7

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object v7, v5

    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    .end local v2    # "componentSpecified":Z
    .restart local v36    # "componentSpecified":Z
    goto/16 :goto_5d3

    .line 1205
    .end local v36    # "componentSpecified":Z
    .restart local v2    # "componentSpecified":Z
    .restart local v9    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1ef
    move/from16 v36, v2

    .line 1205
    .end local v2    # "componentSpecified":Z
    .restart local v36    # "componentSpecified":Z
    :goto_1f1
    :try_start_1f1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_1f5
    .catchall {:try_start_1f1 .. :try_end_1f5} :catchall_59c

    move-wide/from16 v37, v16

    .line 1207
    .local v37, "origId":J
    const/4 v2, 0x2

    if-eqz v7, :cond_44c

    :try_start_1fa
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_44c

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v0, :cond_44c

    .line 1213
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44c

    .line 1214
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 1215
    .local v0, "heavy":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_44c

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_221
    .catchall {:try_start_1fa .. :try_end_221} :catchall_42f

    if-ne v8, v2, :cond_23c

    :try_start_223
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1216
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_22b
    .catchall {:try_start_223 .. :try_end_22b} :catchall_1c5

    if-nez v2, :cond_22e

    goto :goto_23c

    .line 1273
    .end local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    :cond_22e
    move/from16 v40, v3

    move-object/from16 v27, v6

    move-object/from16 v19, v7

    move-object/from16 v45, v9

    move-object/from16 v18, v10

    const/16 v21, 0x0

    goto/16 :goto_458

    .line 1217
    .restart local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    :cond_23c
    :goto_23c
    move v2, v3

    .line 1218
    .local v2, "appCallingUid":I
    if-eqz v1, :cond_2ac

    .line 1219
    :try_start_23f
    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v8
    :try_end_245
    .catchall {:try_start_23f .. :try_end_245} :catchall_293

    .line 1220
    .local v8, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v8, :cond_252

    .line 1221
    move/from16 v39, v2

    :try_start_249
    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1221
    .end local v2    # "appCallingUid":I
    .local v39, "appCallingUid":I
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_24d
    .catchall {:try_start_249 .. :try_end_24d} :catchall_1c5

    .line 1231
    .end local v39    # "appCallingUid":I
    .restart local v2    # "appCallingUid":I
    move/from16 v39, v2

    move/from16 v40, v3

    goto :goto_2b0

    .line 1223
    :cond_252
    move/from16 v39, v2

    .line 1223
    .end local v2    # "appCallingUid":I
    .restart local v39    # "appCallingUid":I
    :try_start_254
    const-string v2, "ActivityManager"
    :try_end_256
    .catchall {:try_start_254 .. :try_end_256} :catchall_293

    move/from16 v40, v3

    :try_start_258
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1223
    .end local v3    # "callingUid":I
    .restart local v40    # "callingUid":I
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v41, v8

    const-string v8, "Unable to find app for caller "

    .line 1223
    .end local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v41, "callerApp":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (pid="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") when starting: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1223
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-static/range {p15 .. p15}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    .line 1227
    const/16 v2, -0x5e

    monitor-exit v6
    :try_end_288
    .catchall {:try_start_258 .. :try_end_288} :catchall_28c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1348
    .end local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v37    # "origId":J
    .end local v39    # "appCallingUid":I
    .end local v41    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :catchall_28c
    move-exception v0

    move-object/from16 v43, p5

    move-object/from16 v42, v1

    goto/16 :goto_1cc

    .line 1348
    .end local v40    # "callingUid":I
    .restart local v3    # "callingUid":I
    :catchall_293
    move-exception v0

    move/from16 v40, v3

    move-object/from16 v43, p5

    move-object/from16 v42, v1

    move-object/from16 v27, v6

    move-object/from16 v30, v7

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move/from16 v2, v36

    move-object v7, v5

    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    .end local v3    # "callingUid":I
    .restart local v40    # "callingUid":I
    goto/16 :goto_5d3

    .line 1231
    .end local v40    # "callingUid":I
    .restart local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "appCallingUid":I
    .restart local v3    # "callingUid":I
    .restart local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v37    # "origId":J
    :cond_2ac
    move/from16 v39, v2

    move/from16 v40, v3

    .line 1231
    .end local v2    # "appCallingUid":I
    .end local v3    # "callingUid":I
    .restart local v39    # "appCallingUid":I
    .restart local v40    # "callingUid":I
    :goto_2b0
    :try_start_2b0
    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v17, 0x2

    const-string v18, "android"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v3, 0x1

    new-array v8, v3, [Landroid/content/Intent;

    const/16 v16, 0x0

    aput-object v5, v8, v16

    new-array v1, v3, [Ljava/lang/String;

    aput-object p5, v1, v16

    const/high16 v26, 0x50000000

    const/16 v27, 0x0

    move-object/from16 v16, v2

    move/from16 v19, v39

    move/from16 v20, v12

    move-object/from16 v24, v8

    move-object/from16 v25, v1

    invoke-virtual/range {v16 .. v27}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 1237
    .local v1, "target":Landroid/content/IIntentSender;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_2de
    .catchall {:try_start_2b0 .. :try_end_2de} :catchall_414

    .line 1238
    .local v2, "newIntent":Landroid/content/Intent;
    if-ltz p10, :cond_2f8

    .line 1240
    :try_start_2e0
    const-string/jumbo v8, "has_result"

    const/4 v3, 0x1

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_2e7
    .catchall {:try_start_2e0 .. :try_end_2e7} :catchall_2e8

    goto :goto_2f8

    .line 1348
    .end local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "target":Landroid/content/IIntentSender;
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v37    # "origId":J
    .end local v39    # "appCallingUid":I
    :catchall_2e8
    move-exception v0

    move-object/from16 v43, p5

    move-object/from16 v27, v6

    move-object/from16 v30, v7

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move/from16 v2, v36

    move-object/from16 v42, p1

    goto/16 :goto_198

    .line 1242
    .restart local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "target":Landroid/content/IIntentSender;
    .restart local v2    # "newIntent":Landroid/content/Intent;
    .restart local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v37    # "origId":J
    .restart local v39    # "appCallingUid":I
    :cond_2f8
    :goto_2f8
    :try_start_2f8
    const-string/jumbo v3, "intent"

    new-instance v8, Landroid/content/IntentSender;

    invoke-direct {v8, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1244
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_309
    .catchall {:try_start_2f8 .. :try_end_309} :catchall_414

    if-lez v3, :cond_329

    .line 1245
    :try_start_30b
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1246
    .local v3, "hist":Lcom/android/server/am/ActivityRecord;
    const-string v8, "cur_app"

    move-object/from16 v44, v0

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1246
    .end local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .local v44, "heavy":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v2, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1248
    const-string v0, "cur_task"

    .line 1249
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1248
    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_328
    .catchall {:try_start_30b .. :try_end_328} :catchall_2e8

    .line 1248
    .end local v3    # "hist":Lcom/android/server/am/ActivityRecord;
    goto :goto_32b

    .line 1251
    .end local v44    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    :cond_329
    move-object/from16 v44, v0

    .line 1251
    .end local v0    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v44    # "heavy":Lcom/android/server/am/ProcessRecord;
    :goto_32b
    :try_start_32b
    const-string/jumbo v0, "new_app"

    iget-object v3, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1253
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1254
    const-string v0, "android"

    const-class v3, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 1255
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1254
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_345
    .catchall {:try_start_32b .. :try_end_345} :catchall_414

    .line 1256
    move-object/from16 v27, v6

    move-object v6, v2

    .line 1257
    .end local v5    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 1258
    .end local p5    # "resolvedType":Ljava/lang/String;
    .local v3, "resolvedType":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1259
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .local v16, "caller":Landroid/app/IApplicationThread;
    :try_start_34b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0
    :try_end_34f
    .catchall {:try_start_34b .. :try_end_34f} :catchall_402

    move v8, v0

    .line 1260
    .end local v40    # "callingUid":I
    .local v8, "callingUid":I
    :try_start_350
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0
    :try_end_354
    .catchall {:try_start_350 .. :try_end_354} :catchall_3e5

    move v11, v0

    .line 1261
    const/16 v17, 0x1

    .line 1262
    .end local v36    # "componentSpecified":Z
    .local v17, "componentSpecified":Z
    :try_start_357
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v18, 0x0

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v0, v0, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 1263
    invoke-static {v8, v4, v0}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v0
    :try_end_363
    .catchall {:try_start_357 .. :try_end_363} :catchall_3cf

    .line 1262
    move-object/from16 v19, v7

    const/4 v7, 0x0

    .line 1262
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v19, "aInfo":Landroid/content/pm/ActivityInfo;
    move/from16 v20, v8

    const/16 v21, 0x0

    move v8, v12

    .line 1262
    .end local v8    # "callingUid":I
    .local v20, "callingUid":I
    move-object/from16 v45, v9

    move/from16 v9, v18

    .line 1262
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .local v45, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v18, v10

    move v10, v0

    .line 1262
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v18, "rInfo":Landroid/content/pm/ResolveInfo;
    :try_start_372
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_376
    .catchall {:try_start_372 .. :try_end_376} :catchall_3bc

    move-object v10, v0

    .line 1265
    .end local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_388

    :try_start_379
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_37b
    .catchall {:try_start_379 .. :try_end_37b} :catchall_37c

    goto :goto_389

    .line 1348
    .end local v1    # "target":Landroid/content/IIntentSender;
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v37    # "origId":J
    .end local v39    # "appCallingUid":I
    .end local v44    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v45    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_37c
    move-exception v0

    move-object/from16 v43, v3

    move-object v7, v6

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v42, v16

    move/from16 v2, v17

    goto :goto_3c9

    .line 1265
    .restart local v1    # "target":Landroid/content/IIntentSender;
    .restart local v2    # "newIntent":Landroid/content/Intent;
    .restart local v37    # "origId":J
    .restart local v39    # "appCallingUid":I
    .restart local v44    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v45    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_388
    const/4 v0, 0x0

    :goto_389
    move-object v7, v0

    .line 1266
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v7, :cond_3aa

    .line 1267
    :try_start_38c
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v7, v12}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_392
    .catchall {:try_start_38c .. :try_end_392} :catchall_399

    .line 1273
    .end local v1    # "target":Landroid/content/IIntentSender;
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v39    # "appCallingUid":I
    .end local v44    # "heavy":Lcom/android/server/am/ProcessRecord;
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v30, v0

    move-object/from16 v43, v3

    move-object/from16 v29, v6

    goto :goto_3b0

    .line 1348
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v37    # "origId":J
    .end local v45    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_399
    move-exception v0

    move-object/from16 v43, v3

    move-object/from16 v30, v7

    move-object v8, v13

    move-object v9, v14

    move-object/from16 v42, v16

    move/from16 v2, v17

    move/from16 v40, v20

    move-object v7, v6

    move-object v6, v15

    goto/16 :goto_199

    .line 1273
    .restart local v37    # "origId":J
    .restart local v45    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3aa
    move-object/from16 v43, v3

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    .line 1273
    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "callingPid":I
    .end local v16    # "caller":Landroid/app/IApplicationThread;
    .end local v17    # "componentSpecified":Z
    .end local v20    # "callingUid":I
    .restart local v29    # "intent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v33, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v34, "callingPid":I
    .restart local v36    # "componentSpecified":Z
    .restart local v40    # "callingUid":I
    .restart local v42    # "caller":Landroid/app/IApplicationThread;
    .restart local v43    # "resolvedType":Ljava/lang/String;
    :goto_3b0
    move-object/from16 v33, v10

    move/from16 v34, v11

    move-object/from16 v42, v16

    move/from16 v36, v17

    move/from16 v40, v20

    goto/16 :goto_464

    .line 1348
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v33    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v34    # "callingPid":I
    .end local v36    # "componentSpecified":Z
    .end local v37    # "origId":J
    .end local v40    # "callingUid":I
    .end local v42    # "caller":Landroid/app/IApplicationThread;
    .end local v43    # "resolvedType":Ljava/lang/String;
    .end local v45    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v11    # "callingPid":I
    .restart local v16    # "caller":Landroid/app/IApplicationThread;
    .restart local v17    # "componentSpecified":Z
    .restart local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "callingUid":I
    :catchall_3bc
    move-exception v0

    move-object/from16 v43, v3

    move-object v7, v6

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v42, v16

    move/from16 v2, v17

    move-object/from16 v10, v18

    .line 1348
    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v16    # "caller":Landroid/app/IApplicationThread;
    .end local v17    # "componentSpecified":Z
    .end local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "callingUid":I
    .local v2, "componentSpecified":Z
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "realCallingUid":I
    .restart local v40    # "callingUid":I
    .restart local v42    # "caller":Landroid/app/IApplicationThread;
    .restart local v43    # "resolvedType":Ljava/lang/String;
    :goto_3c9
    move-object/from16 v30, v19

    move/from16 v40, v20

    goto/16 :goto_199

    .line 1348
    .end local v2    # "componentSpecified":Z
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v40    # "callingUid":I
    .end local v42    # "caller":Landroid/app/IApplicationThread;
    .end local v43    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    .local v4, "realCallingUid":I
    .restart local v6    # "intent":Landroid/content/Intent;
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "callingUid":I
    .restart local v16    # "caller":Landroid/app/IApplicationThread;
    .restart local v17    # "componentSpecified":Z
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    :catchall_3cf
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v18, v10

    move-object/from16 v43, v3

    move-object v7, v6

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v42, v16

    move/from16 v2, v17

    move-object/from16 v30, v19

    move/from16 v40, v20

    goto :goto_3fa

    .end local v17    # "componentSpecified":Z
    .restart local v36    # "componentSpecified":Z
    :catchall_3e5
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v18, v10

    move-object/from16 v43, v3

    move-object v7, v6

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v42, v16

    move-object/from16 v30, v19

    move/from16 v40, v20

    move/from16 v2, v36

    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v16    # "caller":Landroid/app/IApplicationThread;
    .end local v36    # "componentSpecified":Z
    .restart local v2    # "componentSpecified":Z
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "realCallingUid":I
    .restart local v40    # "callingUid":I
    .restart local v42    # "caller":Landroid/app/IApplicationThread;
    .restart local v43    # "resolvedType":Ljava/lang/String;
    :goto_3fa
    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    .line 1348
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "callingUid":I
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "callingUid":I
    goto/16 :goto_5d3

    .line 1348
    .end local v2    # "componentSpecified":Z
    .end local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "callingUid":I
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v42    # "caller":Landroid/app/IApplicationThread;
    .end local v43    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    .local v4, "realCallingUid":I
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v16    # "caller":Landroid/app/IApplicationThread;
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    .restart local v36    # "componentSpecified":Z
    :catchall_402
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v18, v10

    move-object/from16 v43, v3

    move-object v7, v6

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v42, v16

    move-object/from16 v30, v19

    move/from16 v2, v36

    goto :goto_427

    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v16    # "caller":Landroid/app/IApplicationThread;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :catchall_414
    move-exception v0

    move-object/from16 v27, v6

    move-object/from16 v19, v7

    move-object/from16 v18, v10

    move-object/from16 v43, p5

    move-object v7, v5

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v30, v19

    move/from16 v2, v36

    move-object/from16 v42, p1

    .end local v5    # "intent":Landroid/content/Intent;
    .end local v36    # "componentSpecified":Z
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local v2    # "componentSpecified":Z
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "realCallingUid":I
    .restart local v42    # "caller":Landroid/app/IApplicationThread;
    .restart local v43    # "resolvedType":Ljava/lang/String;
    :goto_427
    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    .line 1348
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_5d3

    .line 1348
    .end local v2    # "componentSpecified":Z
    .end local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v40    # "callingUid":I
    .end local v42    # "caller":Landroid/app/IApplicationThread;
    .end local v43    # "resolvedType":Ljava/lang/String;
    .local v3, "callingUid":I
    .local v4, "realCallingUid":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    .restart local v36    # "componentSpecified":Z
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :catchall_42f
    move-exception v0

    move/from16 v40, v3

    move-object/from16 v27, v6

    move-object/from16 v19, v7

    move-object/from16 v18, v10

    move-object/from16 v43, p5

    move-object v7, v5

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v30, v19

    move/from16 v2, v36

    move-object/from16 v42, p1

    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    .end local v3    # "callingUid":I
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v40    # "callingUid":I
    goto/16 :goto_5d3

    .line 1273
    .end local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v40    # "callingUid":I
    .restart local v3    # "callingUid":I
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v37    # "origId":J
    :cond_44c
    move/from16 v40, v3

    move-object/from16 v27, v6

    move-object/from16 v19, v7

    move-object/from16 v45, v9

    move-object/from16 v18, v10

    const/16 v21, 0x0

    .line 1273
    .end local v3    # "callingUid":I
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v40    # "callingUid":I
    .restart local v45    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_458
    move-object/from16 v43, p5

    move-object/from16 v29, v5

    move/from16 v34, v11

    move-object/from16 v33, v18

    move-object/from16 v30, v19

    move-object/from16 v42, p1

    .line 1273
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v11    # "callingPid":I
    .end local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local v29    # "intent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v34    # "callingPid":I
    .restart local v42    # "caller":Landroid/app/IApplicationThread;
    .restart local v43    # "resolvedType":Ljava/lang/String;
    :goto_464
    const/4 v0, 0x1

    :try_start_465
    new-array v0, v0, [Lcom/android/server/am/ActivityRecord;
    :try_end_467
    .catchall {:try_start_465 .. :try_end_467} :catchall_589

    move-object/from16 v31, v0

    .line 1274
    .local v31, "outRecord":[Lcom/android/server/am/ActivityRecord;
    move-object v1, v15

    const/4 v11, 0x2

    move-object/from16 v2, v42

    move-object/from16 v3, v29

    move-object/from16 v5, v43

    move-object/from16 v6, v30

    move-object/from16 v7, v33

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, v34

    move/from16 v14, v40

    move-object/from16 v15, p3

    move/from16 v16, v28

    move/from16 v17, v4

    move/from16 v18, p11

    move-object/from16 v19, p15

    move/from16 v20, p16

    move/from16 v21, v36

    move-object/from16 v22, v31

    move-object/from16 v23, p18

    move-object/from16 v24, p19

    move/from16 v25, p20

    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    :try_start_49f
    invoke-direct/range {v1 .. v25}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v0

    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .local v32, "realCallingUid":I
    move v1, v0

    .line 1280
    .local v1, "res":I
    move-wide/from16 v2, v37

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1282
    .end local v37    # "origId":J
    .local v2, "origId":J
    move-object/from16 v5, v45

    iget-boolean v0, v5, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z
    :try_end_4ad
    .catchall {:try_start_49f .. :try_end_4ad} :catchall_578

    .line 1282
    .end local v45    # "stack":Lcom/android/server/am/ActivityStack;
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_4f0

    .line 1287
    move-object/from16 v6, p0

    :try_start_4b1
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v8, "updateConfiguration()"

    invoke-virtual {v0, v7, v8}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1290
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z
    :try_end_4c0
    .catchall {:try_start_4b1 .. :try_end_4c0} :catchall_4e1

    if-eqz v0, :cond_4d6

    :try_start_4c2
    const-string v0, "ActivityManager"

    const-string v8, "Updating to new configuration after starting activity."

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c9
    .catchall {:try_start_4c2 .. :try_end_4c9} :catchall_4ca

    goto :goto_4d6

    .line 1348
    .end local v1    # "res":I
    .end local v2    # "origId":J
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :catchall_4ca
    move-exception v0

    move-object/from16 v7, v29

    move-object/from16 v10, v33

    move/from16 v11, v34

    move/from16 v2, v36

    move-object/from16 v8, p14

    goto :goto_4ec

    .line 1292
    .restart local v1    # "res":I
    .restart local v2    # "origId":J
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :cond_4d6
    :goto_4d6
    :try_start_4d6
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_4d8
    .catchall {:try_start_4d6 .. :try_end_4d8} :catchall_4e1

    move-object/from16 v8, p14

    const/4 v9, 0x0

    :try_start_4db
    invoke-virtual {v0, v8, v9, v7}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Z)Z
    :try_end_4de
    .catchall {:try_start_4db .. :try_end_4de} :catchall_4df

    goto :goto_4f5

    .line 1348
    .end local v1    # "res":I
    .end local v2    # "origId":J
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :catchall_4df
    move-exception v0

    goto :goto_4e4

    :catchall_4e1
    move-exception v0

    move-object/from16 v8, p14

    .line 1348
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v33    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v34    # "callingPid":I
    .end local v36    # "componentSpecified":Z
    .local v2, "componentSpecified":Z
    .local v7, "intent":Landroid/content/Intent;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "callingPid":I
    :goto_4e4
    move-object/from16 v7, v29

    move-object/from16 v10, v33

    move/from16 v11, v34

    move/from16 v2, v36

    :goto_4ec
    move-object/from16 v9, p13

    goto/16 :goto_5d3

    .line 1295
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "callingPid":I
    .restart local v1    # "res":I
    .local v2, "origId":J
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v29    # "intent":Landroid/content/Intent;
    .restart local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .restart local v33    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v34    # "callingPid":I
    .restart local v36    # "componentSpecified":Z
    :cond_4f0
    move-object/from16 v6, p0

    const/4 v7, 0x0

    move-object/from16 v8, p14

    :goto_4f5
    move-object/from16 v9, p13

    if-eqz v9, :cond_568

    .line 1296
    :try_start_4f9
    iput v1, v9, Landroid/app/WaitResult;->result:I

    .line 1298
    aget-object v0, v31, v7

    move-object v10, v0

    .line 1300
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_545

    const-wide/16 v11, 0x0

    packed-switch v1, :pswitch_data_5dc

    .line 1300
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_568

    .line 1316
    .restart local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_506
    iput-boolean v7, v9, Landroid/app/WaitResult;->timeout:Z

    .line 1317
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v0, v9, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1318
    iput-wide v11, v9, Landroid/app/WaitResult;->totalTime:J

    .line 1319
    iput-wide v11, v9, Landroid/app/WaitResult;->thisTime:J

    .line 1320
    goto :goto_568

    .line 1325
    :pswitch_511
    iget-boolean v0, v10, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_528

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_528

    .line 1326
    iput-boolean v7, v9, Landroid/app/WaitResult;->timeout:Z

    .line 1327
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v0, v9, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1328
    iput-wide v11, v9, Landroid/app/WaitResult;->totalTime:J

    .line 1329
    iput-wide v11, v9, Landroid/app/WaitResult;->thisTime:J

    goto :goto_568

    .line 1331
    :cond_528
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, v9, Landroid/app/WaitResult;->thisTime:J

    .line 1332
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v11, v9}, Lcom/android/server/am/ActivityStackSupervisor;->waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;)V
    :try_end_535
    .catchall {:try_start_4f9 .. :try_end_535} :catchall_566

    .line 1336
    :cond_535
    :try_start_535
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_53a
    .catch Ljava/lang/InterruptedException; {:try_start_535 .. :try_end_53a} :catch_53b
    .catchall {:try_start_535 .. :try_end_53a} :catchall_566

    .line 1338
    goto :goto_53c

    .line 1337
    :catch_53b
    move-exception v0

    .line 1339
    :goto_53c
    :try_start_53c
    iget-boolean v0, v9, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_568

    iget-object v0, v9, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_535

    .line 1339
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_568

    .line 1302
    .restart local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_545
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_54c
    .catchall {:try_start_53c .. :try_end_54c} :catchall_566

    .line 1305
    :cond_54c
    :try_start_54c
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_551
    .catch Ljava/lang/InterruptedException; {:try_start_54c .. :try_end_551} :catch_552
    .catchall {:try_start_54c .. :try_end_551} :catchall_566

    .line 1307
    goto :goto_553

    .line 1306
    :catch_552
    move-exception v0

    .line 1308
    :goto_553
    :try_start_553
    iget v0, v9, Landroid/app/WaitResult;->result:I

    const/4 v11, 0x2

    if-eq v0, v11, :cond_560

    iget-boolean v0, v9, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_560

    iget-object v0, v9, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_54c

    .line 1310
    :cond_560
    iget v0, v9, Landroid/app/WaitResult;->result:I

    if-ne v0, v11, :cond_568

    .line 1311
    const/4 v1, 0x2

    goto :goto_568

    .line 1348
    .end local v1    # "res":I
    .end local v2    # "origId":J
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :catchall_566
    move-exception v0

    goto :goto_57f

    .line 1346
    .restart local v1    # "res":I
    .restart local v2    # "origId":J
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :cond_568
    :goto_568
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v0

    aget-object v7, v31, v7

    invoke-virtual {v0, v1, v7}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    .line 1347
    monitor-exit v27
    :try_end_574
    .catchall {:try_start_553 .. :try_end_574} :catchall_566

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1348
    .end local v1    # "res":I
    .end local v2    # "origId":J
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v31    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :catchall_578
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v8, p14

    move-object/from16 v9, p13

    .line 1348
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v33    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v34    # "callingPid":I
    .end local v36    # "componentSpecified":Z
    .local v2, "componentSpecified":Z
    .restart local v7    # "intent":Landroid/content/Intent;
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "callingPid":I
    :goto_57f
    move-object/from16 v7, v29

    move-object/from16 v10, v33

    move/from16 v11, v34

    move/from16 v2, v36

    goto/16 :goto_5d3

    .line 1348
    .end local v2    # "componentSpecified":Z
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "callingPid":I
    .local v4, "realCallingUid":I
    .restart local v29    # "intent":Landroid/content/Intent;
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    .restart local v33    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v34    # "callingPid":I
    .restart local v36    # "componentSpecified":Z
    :catchall_589
    move-exception v0

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    move-object/from16 v7, v29

    move-object/from16 v10, v33

    move/from16 v11, v34

    move/from16 v2, v36

    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .local v32, "realCallingUid":I
    goto :goto_5d3

    .line 1348
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v33    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v34    # "callingPid":I
    .end local v40    # "callingUid":I
    .end local v42    # "caller":Landroid/app/IApplicationThread;
    .end local v43    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "callingUid":I
    .local v4, "realCallingUid":I
    .local v5, "intent":Landroid/content/Intent;
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "callingPid":I
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :catchall_59c
    move-exception v0

    move/from16 v40, v3

    move-object/from16 v27, v6

    move-object/from16 v19, v7

    move-object/from16 v18, v10

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    move-object/from16 v43, p5

    move-object v7, v5

    move-object/from16 v30, v19

    move/from16 v2, v36

    move-object/from16 v42, p1

    .end local v3    # "callingUid":I
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .restart local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "realCallingUid":I
    .restart local v40    # "callingUid":I
    goto :goto_5d3

    .line 1348
    .end local v18    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v36    # "componentSpecified":Z
    .end local v40    # "callingUid":I
    .restart local v2    # "componentSpecified":Z
    .restart local v3    # "callingUid":I
    .local v4, "realCallingUid":I
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v32, "ephemeralIntent":Landroid/content/Intent;
    :catchall_5b8
    move-exception v0

    move/from16 v36, v2

    move/from16 v40, v3

    move-object/from16 v27, v6

    move-object/from16 v19, v7

    move-object/from16 v18, v10

    move-object v8, v13

    move-object v9, v14

    move-object v6, v15

    move-object/from16 v46, v32

    move/from16 v32, v4

    move-object/from16 v4, v46

    move-object/from16 v43, p5

    move-object v7, v5

    move-object/from16 v30, v19

    move-object/from16 v42, p1

    .end local v3    # "callingUid":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "realCallingUid":I
    .restart local v40    # "callingUid":I
    .restart local v42    # "caller":Landroid/app/IApplicationThread;
    .restart local v43    # "resolvedType":Ljava/lang/String;
    :goto_5d3
    :try_start_5d3
    monitor-exit v27
    :try_end_5d4
    .catchall {:try_start_5d3 .. :try_end_5d4} :catchall_5d8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_5d8
    move-exception v0

    goto :goto_5d3

    nop

    nop

    :pswitch_data_5dc
    .packed-switch 0x2
        :pswitch_511
        :pswitch_506
    .end packed-switch
.end method

.method private startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .registers 36
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p9, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v9, p0

    .line 1400
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

    .line 1403
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 1405
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeSourceStack()V

    .line 1407
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v1, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1409
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1411
    .local v0, "reusedActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    .line 1412
    .local v1, "preferredWindowingMode":I
    const/4 v2, 0x0

    .line 1413
    .local v2, "preferredLaunchDisplayId":I
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_3b

    .line 1414
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    .line 1415
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    .line 1420
    :cond_3b
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5b

    .line 1421
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1422
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v2, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 1425
    :cond_4f
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 1426
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v1, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 1430
    :cond_5b
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_1ad

    .line 1434
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget v12, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v13, 0x10008000

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_76

    move v12, v7

    goto :goto_77

    :cond_76
    move v12, v6

    :goto_77
    invoke-virtual {v8, v11, v12}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v8

    if-eqz v8, :cond_88

    .line 1437
    const-string v3, "ActivityManager"

    const-string/jumbo v4, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const/16 v3, 0x65

    return v3

    .line 1443
    :cond_88
    iget v8, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v11, 0x4200000

    and-int/2addr v8, v11

    if-ne v8, v11, :cond_95

    iget v8, v9, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-nez v8, :cond_95

    move v8, v7

    goto :goto_96

    :cond_95
    move v8, v6

    .line 1451
    .local v8, "clearTopAndResetStandardLaunchMode":Z
    :goto_96
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    if-nez v11, :cond_a9

    if-nez v8, :cond_a9

    .line 1452
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 1455
    :cond_a9
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v11, :cond_ba

    .line 1458
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v11, v12}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1464
    :cond_ba
    iget v11, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v12, 0x4000000

    and-int/2addr v11, v12

    if-nez v11, :cond_cf

    iget v11, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1465
    invoke-static {v11}, Lcom/android/server/am/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v11

    if-nez v11, :cond_cf

    .line 1466
    invoke-direct {v9, v3, v4}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v11

    if-eqz v11, :cond_f6

    .line 1467
    :cond_cf
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 1472
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v13, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/TaskRecord;->performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 1479
    .local v12, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    if-nez v13, :cond_e4

    .line 1480
    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 1483
    :cond_e4
    if-eqz v12, :cond_f6

    .line 1484
    iget-boolean v13, v12, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v13, :cond_f3

    .line 1487
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    iget-object v14, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v13, v14}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1489
    :cond_f3
    invoke-direct {v9, v12}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1494
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_f6
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 1495
    .local v11, "reuseStack":Lcom/android/server/am/ActivityStack;
    const/4 v12, 0x5

    if-ne v1, v12, :cond_168

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1496
    invoke-static {v13}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_168

    .line 1498
    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v13, v13, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    if-nez v13, :cond_116

    .line 1499
    const-string v13, "ActivityManager"

    const-string v14, "QuickReply: force support freeform in reuse"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v7, v13, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    .line 1502
    :cond_116
    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/server/am/OemQuickReply;->getInstance(Landroid/content/Context;)Lcom/android/server/am/OemQuickReply;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/android/server/am/OemQuickReply;->setQuickReplyRunning(Z)V

    .line 1504
    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v13, v13, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v14, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/server/am/OemQuickReply;->getInstance(Landroid/content/Context;)Lcom/android/server/am/OemQuickReply;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/am/OemQuickReply;->getImBound()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1505
    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "QuickReply: starting reuse activity"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " mBounds="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v15, v15, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 1508
    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v13, v13, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v12, v13}, Lcom/android/server/am/ActivityStarter;->updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    .line 1512
    :cond_168
    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v12, v6, v0}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 1514
    invoke-direct {v9, v0}, Lcom/android/server/am/ActivityStarter;->setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1517
    if-eqz v10, :cond_179

    array-length v12, v10

    if-lez v12, :cond_179

    aget-object v12, v10, v6

    goto :goto_17a

    :cond_179
    move-object v12, v5

    .line 1521
    .local v12, "outResult":Lcom/android/server/am/ActivityRecord;
    :goto_17a
    if-eqz v12, :cond_186

    iget-boolean v13, v12, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v13, :cond_184

    iget-boolean v13, v12, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v13, :cond_186

    .line 1522
    :cond_184
    aput-object v0, v10, v6

    .line 1525
    :cond_186
    iget v13, v9, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v13, v7

    if-eqz v13, :cond_18f

    .line 1529
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1530
    return v7

    .line 1533
    :cond_18f
    if-eqz v0, :cond_1ad

    .line 1534
    invoke-direct {v9, v0}, Lcom/android/server/am/ActivityStarter;->setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1536
    iget-boolean v13, v9, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v13, :cond_1ad

    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v13, :cond_1ad

    .line 1540
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1541
    if-eqz v10, :cond_1a6

    array-length v5, v10

    if-lez v5, :cond_1a6

    .line 1542
    aput-object v0, v10, v6

    .line 1545
    :cond_1a6
    iget-boolean v5, v9, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-eqz v5, :cond_1ab

    goto :goto_1ac

    :cond_1ab
    move v4, v3

    :goto_1ac
    return v4

    .line 1550
    .end local v8    # "clearTopAndResetStandardLaunchMode":Z
    .end local v11    # "reuseStack":Lcom/android/server/am/ActivityStack;
    .end local v12    # "outResult":Lcom/android/server/am/ActivityRecord;
    :cond_1ad
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v8, :cond_1e2

    .line 1551
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_1c2

    .line 1552
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    nop

    :cond_1c2
    move-object v3, v5

    .line 1553
    .local v3, "sourceStack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_1da

    .line 1554
    const/4 v12, -0x1

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v13, v4, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v15, v4, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1558
    :cond_1da
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v4}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1559
    const/16 v4, -0x5c

    return v4

    .line 1564
    .end local v3    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_1e2
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1565
    .local v8, "topStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    .line 1566
    .local v17, "topFocused":Lcom/android/server/am/ActivityRecord;
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8, v11}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 1567
    .local v15, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v15, :cond_225

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v11, :cond_225

    iget-object v11, v15, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1568
    invoke-virtual {v11, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_225

    iget v11, v15, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v12, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v11, v12, :cond_225

    iget-object v11, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_225

    iget-object v11, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v11, :cond_225

    iget v11, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v12, 0x20000000

    and-int/2addr v11, v12

    if-nez v11, :cond_223

    .line 1572
    invoke-direct {v9, v7, v4}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v11

    if-eqz v11, :cond_225

    :cond_223
    move v11, v7

    goto :goto_226

    :cond_225
    move v11, v6

    :goto_226
    move/from16 v18, v11

    .line 1573
    .local v18, "dontStart":Z
    if-eqz v18, :cond_24d

    .line 1575
    iput-object v5, v8, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1576
    iget-boolean v4, v9, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v4, :cond_235

    .line 1577
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1579
    :cond_235
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v4}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1580
    iget v4, v9, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_240

    .line 1583
    return v7

    .line 1586
    :cond_240
    invoke-direct {v9, v15}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1590
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v2, v8}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 1593
    return v3

    .line 1596
    :cond_24d
    const/4 v3, 0x0

    .line 1597
    .local v3, "newTask":Z
    iget-boolean v11, v9, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v11, :cond_25d

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v11, :cond_25d

    .line 1598
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    goto :goto_25e

    :cond_25d
    move-object v11, v5

    :goto_25e
    move-object v14, v11

    .line 1601
    .local v14, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    const/4 v11, 0x0

    .line 1602
    .local v11, "result":I
    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v12, :cond_294

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v12, :cond_294

    iget-boolean v12, v9, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v12, :cond_294

    iget v12, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v13, 0x10000000

    and-int/2addr v12, v13

    if-eqz v12, :cond_294

    .line 1604
    const/4 v3, 0x1

    .line 1605
    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1606
    .local v12, "packageName":Ljava/lang/String;
    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    if-eqz v13, :cond_28f

    .line 1609
    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/16 v6, 0x1081

    const/4 v4, -0x1

    invoke-virtual {v5, v6, v12, v4, v7}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v4

    iput v4, v13, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    .line 1616
    :cond_28f
    invoke-direct {v9, v14, v8}, Lcom/android/server/am/ActivityStarter;->setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)I

    move-result v11

    .line 1617
    .end local v12    # "packageName":Ljava/lang/String;
    goto :goto_29c

    :cond_294
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_29f

    .line 1618
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromSourceRecord()I

    move-result v11

    .line 1626
    .end local v11    # "result":I
    .local v3, "result":I
    .local v4, "newTask":Z
    :goto_29c
    move v4, v3

    move v3, v11

    goto :goto_2ac

    .line 1619
    .end local v4    # "newTask":Z
    .local v3, "newTask":Z
    .restart local v11    # "result":I
    :cond_29f
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_2a8

    .line 1620
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromInTask()I

    move-result v11

    goto :goto_29c

    .line 1624
    :cond_2a8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskToCurrentTopOrCreateNewTask()V

    goto :goto_29c

    .line 1626
    .end local v11    # "result":I
    .local v3, "result":I
    .restart local v4    # "newTask":Z
    :goto_2ac
    if-eqz v3, :cond_2af

    .line 1627
    return v3

    .line 1630
    :cond_2af
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v9, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1631
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v24

    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v13, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1630
    move-object/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move/from16 v25, v13

    invoke-virtual/range {v20 .. v25}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 1632
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v13, v9, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1633
    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    .line 1632
    invoke-virtual {v5, v6, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->grantEphemeralAccessLocked(ILandroid/content/Intent;II)V

    .line 1634
    if-eqz v4, :cond_30a

    .line 1635
    const/16 v5, 0x7534

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v11, v11, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v6, v12

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1636
    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget v11, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v7

    .line 1635
    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1638
    :cond_30a
    const/16 v5, 0x7535

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1639
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    .line 1638
    invoke-static {v5, v6, v7}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1640
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1642
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 1644
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v9, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object/from16 v13, v17

    move-object v7, v14

    move v14, v4

    .line 1644
    .end local v14    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    .local v7, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    move-object/from16 v19, v15

    move v15, v5

    .line 1644
    .end local v15    # "top":Lcom/android/server/am/ActivityRecord;
    .local v19, "top":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    .line 1646
    iget-boolean v5, v9, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v5, :cond_38e

    .line 1647
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1648
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1649
    .local v5, "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_37f

    if-eqz v5, :cond_359

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v6, :cond_359

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v6, v5, :cond_359

    goto :goto_37f

    .line 1668
    :cond_359
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_373

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6, v11}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-nez v6, :cond_373

    .line 1669
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v11, "startActivityUnchecked"

    invoke-virtual {v6, v11}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1671
    :cond_373
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6, v11, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 1671
    .end local v5    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_38d

    .line 1658
    .restart local v5    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :cond_37f
    :goto_37f
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v11, v11}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1661
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1674
    .end local v5    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :goto_38d
    goto :goto_39f

    :cond_38e
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_39f

    .line 1675
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 1677
    :cond_39f
    :goto_39f
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v6, v11}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    .line 1679
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v6, v1, v2, v11}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 1682
    const/4 v5, 0x0

    return v5
.end method

.method private uriHasUserId(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2908
    if-nez p1, :cond_4

    .line 2909
    const/4 v0, 0x0

    return v0

    .line 2910
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2856
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2857
    const-string/jumbo v0, "mCurrentUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2858
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2859
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2860
    const-string/jumbo v0, "mLastStartReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2861
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2862
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2863
    const-string/jumbo v0, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2864
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2865
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2866
    const-string/jumbo v0, "mLastStartActivityResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2867
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2868
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2869
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_7c

    .line 2870
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2871
    const-string/jumbo v2, "mLastStartActivityRecord:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2874
    :cond_7c
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_9f

    .line 2875
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2876
    const-string/jumbo v2, "mStartActivity:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2877
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2879
    :cond_9f
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_b1

    .line 2880
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2881
    const-string/jumbo v2, "mIntent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2882
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2884
    :cond_b1
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_c3

    .line 2885
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2886
    const-string/jumbo v2, "mOptions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2887
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2889
    :cond_c3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2890
    const-string/jumbo v2, "mLaunchSingleTop="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2891
    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_d3

    move v2, v3

    goto :goto_d4

    :cond_d3
    move v2, v1

    :goto_d4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2892
    const-string v2, " mLaunchSingleInstance="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2893
    const/4 v2, 0x3

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v2, v4, :cond_e3

    move v2, v3

    goto :goto_e4

    :cond_e3
    move v2, v1

    :goto_e4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2894
    const-string v2, " mLaunchSingleTask="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2895
    const/4 v2, 0x2

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v2, v4, :cond_f3

    move v1, v3

    nop

    :cond_f3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2896
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2897
    const-string/jumbo v1, "mLaunchFlags=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2898
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2899
    const-string v1, " mDoResume="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2900
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2901
    const-string v1, " mAddingToTask="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2902
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2903
    return-void
.end method

.method execute()I
    .registers 41

    .line 520
    move-object/from16 v15, p0

    :try_start_2
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    if-eqz v0, :cond_78

    .line 521
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v3, v0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v11, v0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v12, v0, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v14, v0, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    move-object/from16 v26, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move/from16 v27, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    move/from16 v28, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    move-object/from16 v30, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move/from16 v21, v1

    move-object/from16 v16, v26

    move/from16 v17, v27

    move/from16 v18, v28

    move-object/from16 v19, v29

    move-object/from16 v20, v30

    move-object v1, v15

    move-object v15, v0

    invoke-direct/range {v1 .. v21}, Lcom/android/server/am/ActivityStarter;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ZILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v0
    :try_end_74
    .catchall {:try_start_2 .. :try_end_74} :catchall_10a

    .line 541
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    .line 521
    return v0

    .line 530
    :cond_78
    move-object/from16 v15, p0

    :try_start_7a
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

    move/from16 v31, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    move/from16 v32, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    move/from16 v33, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    move-object/from16 v34, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move/from16 v35, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    move/from16 v36, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    move-object/from16 v37, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    move-object/from16 v39, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move/from16 v25, v1

    move/from16 v16, v31

    move/from16 v17, v32

    move/from16 v18, v33

    move-object/from16 v19, v34

    move/from16 v20, v35

    move/from16 v21, v36

    move-object/from16 v22, v37

    move-object/from16 v23, v38

    move-object/from16 v24, v39

    move-object v1, v15

    move-object v15, v0

    invoke-direct/range {v1 .. v25}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v0
    :try_end_106
    .catchall {:try_start_7a .. :try_end_106} :catchall_10a

    .line 541
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    .line 530
    return v0

    .line 541
    :catchall_10a
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method getIntent()Landroid/content/Intent;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2699
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method getStartActivity()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .line 503
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .line 1055
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1056
    return-void

    .line 1064
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/am/ActivityRecord;I)V

    .line 1066
    const/4 v0, 0x0

    .line 1067
    .local v0, "startedActivityStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1068
    .local v1, "currentStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_15

    .line 1069
    move-object v0, v1

    goto :goto_1a

    .line 1070
    :cond_15
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_1a

    .line 1071
    move-object v0, p3

    .line 1074
    :cond_1a
    :goto_1a
    if-nez v0, :cond_1d

    .line 1075
    return-void

    .line 1078
    :cond_1d
    const v2, 0x10008000

    .line 1079
    .local v2, "clearTaskFlags":I
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v4, 0x10008000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_2e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    .line 1081
    .local v3, "clearedTask":Z
    :goto_2f
    const/4 v4, 0x2

    if-eq p2, v4, :cond_37

    const/4 v4, 0x3

    if-eq p2, v4, :cond_37

    if-eqz v3, :cond_5c

    .line 1085
    :cond_37
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    packed-switch v4, :pswitch_data_5e

    goto :goto_5c

    .line 1091
    :pswitch_3f
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 1092
    .local v4, "homeStack":Lcom/android/server/am/ActivityStack;
    if-eqz v4, :cond_5c

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 1093
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .end local v4    # "homeStack":Lcom/android/server/am/ActivityStack;
    goto :goto_5c

    .line 1087
    :pswitch_54
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v4, v3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyPinnedActivityRestartAttempt(Z)V

    .line 1089
    nop

    .line 1098
    :cond_5c
    :goto_5c
    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x2
        :pswitch_54
        :pswitch_3f
    .end packed-switch
.end method

.method relatedToPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 508
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    :cond_13
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 509
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_21
    const/4 v1, 0x1

    nop

    .line 507
    :cond_23
    return v1
.end method

.method reset(Z)V
    .registers 6
    .param p1, "clearRequest"    # Z

    .line 1690
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1691
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1692
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1693
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1695
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1696
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1697
    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    .line 1699
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    .line 1701
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 1702
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1703
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1704
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1705
    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    .line 1707
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1708
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1709
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 1711
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 1712
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 1713
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1715
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1716
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 1717
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 1718
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 1719
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1721
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1722
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1724
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 1726
    if-eqz p1, :cond_43

    .line 1727
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter$Request;->reset()V

    .line 1729
    :cond_43
    return-void
.end method

.method set(Lcom/android/server/am/ActivityStarter;)V
    .registers 4
    .param p1, "starter"    # Lcom/android/server/am/ActivityStarter;

    .line 463
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 464
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 465
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 466
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 468
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 469
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 470
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    .line 472
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v1, p1, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .line 474
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 475
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 476
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 477
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 478
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    .line 480
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 481
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 482
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 484
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 485
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 486
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 488
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 489
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 490
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 491
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 492
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 494
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 495
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 497
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 499
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, p1, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter$Request;->set(Lcom/android/server/am/ActivityStarter$Request;)V

    .line 500
    return-void
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 2724
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2725
    return-object p0
.end method

.method setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "bOptions"    # Landroid/os/Bundle;

    .line 2794
    invoke-static {p1}, Lcom/android/server/am/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/am/SafeActivityOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "options"    # Lcom/android/server/am/SafeActivityOptions;

    .line 2789
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    .line 2790
    return-object p0
.end method

.method setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "allowLookup"    # Z

    .line 2850
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 2851
    return-object p0
.end method

.method setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "caller"    # Landroid/app/IApplicationThread;

    .line 2708
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 2709
    return-object p0
.end method

.method setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 2769
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 2770
    return-object p0
.end method

.method setCallingPid(I)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "pid"    # I

    .line 2759
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    .line 2760
    return-object p0
.end method

.method setCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "uid"    # I

    .line 2764
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    .line 2765
    return-object p0
.end method

.method setComponentSpecified(Z)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "componentSpecified"    # Z

    .line 2808
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    .line 2809
    return-object p0
.end method

.method setEphemeralIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2713
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 2714
    return-object p0
.end method

.method setFilterCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "filterCallingUid"    # I

    .line 2803
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 2804
    return-object p0
.end method

.method setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 2833
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 2834
    return-object p0
.end method

.method setIgnoreTargetSecurity(Z)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "ignoreTargetSecurity"    # Z

    .line 2798
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 2799
    return-object p0
.end method

.method setInTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "inTask"    # Lcom/android/server/am/TaskRecord;

    .line 2818
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    .line 2819
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2693
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 2694
    return-object p0
.end method

.method setMayWait(I)Lcom/android/server/am/ActivityStarter;
    .registers 4
    .param p1, "userId"    # I

    .line 2843
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    .line 2844
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    .line 2846
    return-object p0
.end method

.method setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    .line 2813
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    .line 2814
    return-object p0
.end method

.method setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "info"    # Landroid/app/ProfilerInfo;

    .line 2828
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 2829
    return-object p0
.end method

.method setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "pid"    # I

    .line 2774
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    .line 2775
    return-object p0
.end method

.method setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "uid"    # I

    .line 2779
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    .line 2780
    return-object p0
.end method

.method setReason(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 2703
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 2704
    return-object p0
.end method

.method setRequestCode(I)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "requestCode"    # I

    .line 2754
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    .line 2755
    return-object p0
.end method

.method setResolveInfo(Landroid/content/pm/ResolveInfo;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 2729
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 2730
    return-object p0
.end method

.method setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 2719
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 2720
    return-object p0
.end method

.method setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "resultTo"    # Landroid/os/IBinder;

    .line 2744
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 2745
    return-object p0
.end method

.method setResultWho(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "resultWho"    # Ljava/lang/String;

    .line 2749
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 2750
    return-object p0
.end method

.method setStartFlags(I)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "startFlags"    # I

    .line 2784
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    .line 2785
    return-object p0
.end method

.method setUserId(I)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "userId"    # I

    .line 2838
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    .line 2839
    return-object p0
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 2739
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2740
    return-object p0
.end method

.method setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 2734
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2735
    return-object p0
.end method

.method setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "result"    # Landroid/app/WaitResult;

    .line 2823
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 2824
    return-object p0
.end method

.method startResolvedActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p9, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    .line 556
    :try_start_0
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/ActivityStarter;->startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_8

    .line 559
    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    .line 556
    return v0

    .line 559
    :catchall_8
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2464
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2465
    return-void

    .line 2468
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2469
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2470
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    goto :goto_23

    .line 2472
    :cond_20
    invoke-virtual {p1, p2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2474
    :goto_23
    return-void
.end method
