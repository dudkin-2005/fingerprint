.class final Lcom/android/server/am/ActivityRecord;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityRecord.java"

# interfaces
.implements Lcom/android/server/wm/AppWindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityRecord$Token;,
        Lcom/android/server/am/ActivityRecord$PreferredAppsTask;
    }
.end annotation


# static fields
.field static final ACTIVITY_ICON_SUFFIX:Ljava/lang/String; = "_activity_icon_"

.field private static final ATTR_COMPONENTSPECIFIED:Ljava/lang/String; = "component_specified"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_LAUNCHEDFROMPACKAGE:Ljava/lang/String; = "launched_from_package"

.field private static final ATTR_LAUNCHEDFROMUID:Ljava/lang/String; = "launched_from_uid"

.field private static final ATTR_RESOLVEDTYPE:Ljava/lang/String; = "resolved_type"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final LEGACY_RECENTS_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui.recents"

.field private static final SHOW_ACTIVITY_START_TIME:Z = true

.field static final STARTING_WINDOW_NOT_SHOWN:I = 0x0

.field static final STARTING_WINDOW_REMOVED:I = 0x2

.field static final STARTING_WINDOW_SHOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_PERSISTABLEBUNDLE:Ljava/lang/String; = "persistable_bundle"

.field private static final TAG_SAVED_STATE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityManager"

.field public static mPerfFirstDraw:Landroid/util/BoostFramework;


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field appInfo:Landroid/content/pm/ApplicationInfo;

.field appTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field final appToken:Landroid/view/IApplicationToken$Stub;

.field compat:Landroid/content/res/CompatibilityInfo;

.field private final componentSpecified:Z

.field configChangeFlags:I

.field connections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field cpuTimeAtResume:J

.field private createTime:J

.field deferRelaunchUntilPaused:Z

.field delayedResume:Z

.field displayStartTime:J

.field finishing:Z

.field forceNewConfig:Z

.field frontOfTask:Z

.field frozenBeforeDestroy:Z

.field fullscreen:Z

.field fullyDrawnStartTime:J

.field hasBeenLaunched:Z

.field final hasWallpaper:Z

.field haveState:Z

.field icicle:Landroid/os/Bundle;

.field private icon:I

.field idle:Z

.field immersive:Z

.field private inHistory:Z

.field final info:Landroid/content/pm/ActivityInfo;

.field final intent:Landroid/content/Intent;

.field isQuickPayNoHistory:Z

.field private keysPaused:Z

.field private labelRes:I

.field lastLaunchTime:J

.field lastVisibleTime:J

.field launchCount:I

.field launchFailed:Z

.field launchMode:I

.field launchTickTime:J

.field final launchedFromPackage:Ljava/lang/String;

.field final launchedFromPid:I

.field final launchedFromUid:I

.field launching:Z

.field lockTaskLaunchMode:I

.field private logo:I

.field mClientVisibilityDeferred:Z

.field private mDeferHidingClient:Z

.field private mHorizontalSizeConfigurations:[I

.field private mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field private mLastReportedDisplayId:I

.field private mLastReportedMultiWindowMode:Z

.field private mLastReportedPictureInPictureMode:Z

.field mLaunchTaskBehind:Z

.field private mPerf:Landroid/util/BoostFramework;

.field public mPerf_iop:Landroid/util/BoostFramework;

.field mRotationAnimationHint:I

.field private mShowWhenLocked:Z

.field private mSmallestSizeConfigurations:[I

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStartingWindowState:I

.field private mState:Lcom/android/server/am/ActivityStack$ActivityState;

.field mTaskOverlay:Z

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpConfig:Landroid/content/res/Configuration;

.field private mTurnScreenOn:Z

.field public mUxPerf:Landroid/util/BoostFramework;

.field private mVerticalSizeConfigurations:[I

.field mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

.field newIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field final noDisplay:Z

.field private nonLocalizedLabel:Ljava/lang/CharSequence;

.field nowVisible:Z

.field final packageName:Ljava/lang/String;

.field pauseTime:J

.field pendingOptions:Landroid/app/ActivityOptions;

.field pendingResults:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field pendingVoiceInteractionStart:Z

.field perfActivityBoostHandler:I

.field persistentState:Landroid/os/PersistableBundle;

.field pictureInPictureArgs:Landroid/app/PictureInPictureParams;

.field preserveWindowOnDeferredRelaunch:Z

.field final processName:Ljava/lang/String;

.field final realActivity:Landroid/content/ComponentName;

.field private realTheme:I

.field final requestCode:I

.field requestedVrComponent:Landroid/content/ComponentName;

.field final resolvedType:Ljava/lang/String;

.field resultTo:Lcom/android/server/am/ActivityRecord;

.field final resultWho:Ljava/lang/String;

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field returningOptions:Landroid/app/ActivityOptions;

.field final rootVoiceInteraction:Z

.field final service:Lcom/android/server/am/ActivityManagerService;

.field final shortComponentName:Ljava/lang/String;

.field sleeping:Z

.field private startTime:J

.field final stateNotNeeded:Z

.field stopped:Z

.field stringName:Ljava/lang/String;

.field supportsEnterPipOnTaskSwitch:Z

.field private task:Lcom/android/server/am/TaskRecord;

.field final taskAffinity:Ljava/lang/String;

.field taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field private theme:I

.field uriPermissions:Lcom/android/server/am/UriPermissionOwner;

.field final userId:I

.field visible:Z

.field visibleIgnoringKeyguard:Z

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field private windowFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 388
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ActivityRecord;->mPerfFirstDraw:Landroid/util/BoostFramework;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V
    .registers 38
    .param p1, "_service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_caller"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "_launchedFromPid"    # I
    .param p4, "_launchedFromUid"    # I
    .param p5, "_launchedFromPackage"    # Ljava/lang/String;
    .param p6, "_intent"    # Landroid/content/Intent;
    .param p7, "_resolvedType"    # Ljava/lang/String;
    .param p8, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p9, "_configuration"    # Landroid/content/res/Configuration;
    .param p10, "_resultTo"    # Lcom/android/server/am/ActivityRecord;
    .param p11, "_resultWho"    # Ljava/lang/String;
    .param p12, "_reqCode"    # I
    .param p13, "_componentSpecified"    # Z
    .param p14, "_rootVoiceInteraction"    # Z
    .param p15, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p16, "options"    # Landroid/app/ActivityOptions;
    .param p17, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p16

    .line 939
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 283
    const/4 v0, -0x1

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v6, Lcom/android/server/am/ActivityRecord;->createTime:J

    .line 344
    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v1

    iput-object v1, v6, Lcom/android/server/am/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 358
    const/4 v12, 0x0

    iput v12, v6, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    .line 359
    iput-boolean v12, v6, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    .line 375
    const/4 v13, 0x0

    iput-object v13, v6, Lcom/android/server/am/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    .line 376
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, v6, Lcom/android/server/am/ActivityRecord;->mUxPerf:Landroid/util/BoostFramework;

    .line 377
    iput-object v13, v6, Lcom/android/server/am/ActivityRecord;->mPerf_iop:Landroid/util/BoostFramework;

    .line 384
    iput v0, v6, Lcom/android/server/am/ActivityRecord;->mRotationAnimationHint:I

    .line 393
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 394
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 399
    iput-boolean v12, v6, Lcom/android/server/am/ActivityRecord;->isQuickPayNoHistory:Z

    .line 940
    iput-object v7, v6, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 948
    new-instance v0, Lcom/android/server/am/ActivityRecord$Token;

    invoke-direct {v0, v6, v9, v7}, Lcom/android/server/am/ActivityRecord$Token;-><init>(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 950
    iput-object v10, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 951
    move/from16 v14, p3

    iput v14, v6, Lcom/android/server/am/ActivityRecord;->launchedFromPid:I

    .line 952
    move/from16 v15, p4

    iput v15, v6, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 953
    move-object/from16 v5, p5

    iput-object v5, v6, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 954
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 955
    iput-object v9, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 956
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 957
    move-object/from16 v4, p7

    iput-object v4, v6, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 958
    move/from16 v3, p13

    iput-boolean v3, v6, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    .line 959
    move/from16 v2, p14

    iput-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    .line 960
    new-instance v0, Landroid/util/MergedConfiguration;

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 961
    move-object/from16 v0, p10

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 962
    move-object/from16 v13, p11

    iput-object v13, v6, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 963
    move/from16 v12, p12

    iput v12, v6, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 964
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "ActivityRecord ctor"

    invoke-virtual {v6, v0, v1}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 965
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 966
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 967
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 968
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 969
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 970
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 971
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 972
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 973
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 974
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 975
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 976
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 977
    move-object/from16 v1, p15

    iput-object v1, v6, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 981
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 986
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v0, :cond_e5

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 987
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget v0, v10, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v0, :cond_e5

    iget v0, v10, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d9

    goto :goto_e5

    .line 992
    :cond_d9
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v10, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    goto :goto_eb

    .line 990
    :cond_e5
    :goto_e5
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 994
    :goto_eb
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 995
    iget v0, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_f7

    const/4 v0, 0x1

    goto :goto_f8

    :cond_f7
    const/4 v0, 0x0

    :goto_f8
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    .line 996
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 997
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 998
    iget v0, v10, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->labelRes:I

    .line 999
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_118

    iget v0, v6, Lcom/android/server/am/ActivityRecord;->labelRes:I

    if-nez v0, :cond_118

    .line 1000
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1001
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v6, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1002
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v1, v6, Lcom/android/server/am/ActivityRecord;->labelRes:I

    .line 1004
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_118
    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->icon:I

    .line 1005
    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v0

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->logo:I

    .line 1006
    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v0

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->theme:I

    .line 1007
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->theme:I

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->realTheme:I

    .line 1008
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->realTheme:I

    if-nez v0, :cond_143

    .line 1009
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_13e

    .line 1010
    const v0, 0x1030005

    goto :goto_141

    :cond_13e
    const v0, 0x103006b

    :goto_141
    iput v0, v6, Lcom/android/server/am/ActivityRecord;->realTheme:I

    .line 1012
    :cond_143
    iget v0, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x200

    const/high16 v18, 0x1000000

    if-eqz v0, :cond_151

    .line 1013
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    or-int v0, v0, v18

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    .line 1015
    :cond_151
    iget v0, v10, Landroid/content/pm/ActivityInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_170

    if-eqz v8, :cond_170

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_16b

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_170

    .line 1018
    :cond_16b
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_174

    .line 1020
    :cond_170
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 1023
    :goto_174
    iget v0, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/high16 v2, 0x800000

    if-eqz v0, :cond_181

    .line 1024
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1027
    :cond_181
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1028
    iget v0, v10, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->launchMode:I

    .line 1030
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v2, v6, Lcom/android/server/am/ActivityRecord;->realTheme:I

    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    iget v5, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v5

    .line 1033
    .local v5, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v5, :cond_1bd

    .line 1034
    iget-object v0, v5, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isTranslucentOrFloating(Landroid/content/res/TypedArray;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 1035
    iget-object v0, v5, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v2, 0xe

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->hasWallpaper:Z

    .line 1036
    iget-object v0, v5, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    goto :goto_1c3

    .line 1038
    :cond_1bd
    const/4 v1, 0x1

    const/4 v4, 0x0

    iput-boolean v4, v6, Lcom/android/server/am/ActivityRecord;->hasWallpaper:Z

    .line 1039
    iput-boolean v4, v6, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    .line 1042
    :goto_1c3
    move v4, v1

    move-object v0, v6

    move v1, v3

    const/high16 v16, 0x800000

    move v2, v15

    move-object v3, v9

    move v7, v4

    move-object v4, v11

    move-object/from16 v17, v5

    move-object/from16 v5, p17

    .end local v5    # "ent":Lcom/android/server/AttributeCache$Entry;
    .local v17, "ent":Lcom/android/server/AttributeCache$Entry;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    .line 1044
    iget v0, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1db

    move v0, v7

    goto :goto_1dc

    :cond_1db
    const/4 v0, 0x0

    :goto_1dc
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->immersive:Z

    .line 1046
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    if-nez v0, :cond_1e4

    .line 1047
    const/4 v0, 0x0

    goto :goto_1ea

    :cond_1e4
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_1ea
    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 1049
    iget v0, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int v0, v0, v16

    if-eqz v0, :cond_1f4

    move v0, v7

    goto :goto_1f5

    :cond_1f4
    const/4 v0, 0x0

    :goto_1f5
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->mShowWhenLocked:Z

    .line 1050
    iget v0, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int v0, v0, v18

    if-eqz v0, :cond_1ff

    move v0, v7

    goto :goto_200

    :cond_1ff
    const/4 v0, 0x0

    :goto_200
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->mTurnScreenOn:Z

    .line 1052
    iget v0, v10, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->mRotationAnimationHint:I

    .line 1053
    iget v0, v10, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->lockTaskLaunchMode:I

    .line 1054
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-eqz v0, :cond_21e

    iget v0, v6, Lcom/android/server/am/ActivityRecord;->lockTaskLaunchMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21b

    iget v0, v6, Lcom/android/server/am/ActivityRecord;->lockTaskLaunchMode:I

    if-ne v0, v7, :cond_21e

    .line 1056
    :cond_21b
    const/4 v0, 0x0

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->lockTaskLaunchMode:I

    .line 1059
    :cond_21e
    if-eqz v11, :cond_250

    .line 1060
    iput-object v11, v6, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1061
    invoke-virtual/range {p16 .. p16}, Landroid/app/ActivityOptions;->getLaunchTaskBehind()Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 1063
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getRotationAnimationHint()I

    move-result v0

    .line 1065
    .local v0, "rotationAnimation":I
    if-ltz v0, :cond_232

    .line 1066
    iput v0, v6, Lcom/android/server/am/ActivityRecord;->mRotationAnimationHint:I

    .line 1068
    :cond_232
    iget-object v1, v6, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getUsageTimeReport()Landroid/app/PendingIntent;

    move-result-object v1

    .line 1069
    .local v1, "usageReport":Landroid/app/PendingIntent;
    if-eqz v1, :cond_241

    .line 1070
    new-instance v2, Lcom/android/server/am/AppTimeTracker;

    invoke-direct {v2, v1}, Lcom/android/server/am/AppTimeTracker;-><init>(Landroid/app/PendingIntent;)V

    iput-object v2, v6, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 1072
    :cond_241
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLockTaskMode()Z

    move-result v2

    .line 1073
    .local v2, "useLockTask":Z
    if-eqz v2, :cond_250

    iget v3, v6, Lcom/android/server/am/ActivityRecord;->lockTaskLaunchMode:I

    if-nez v3, :cond_250

    .line 1074
    const/4 v3, 0x3

    iput v3, v6, Lcom/android/server/am/ActivityRecord;->lockTaskLaunchMode:I

    .line 1078
    .end local v0    # "rotationAnimation":I
    .end local v1    # "usageReport":Landroid/app/PendingIntent;
    .end local v2    # "useLockTask":Z
    :cond_250
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    if-nez v0, :cond_25b

    .line 1079
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    .line 1080
    :cond_25b
    return-void
.end method

.method static activityResumedLocked(Landroid/os/IBinder;)V
    .registers 5
    .param p0, "token"    # Landroid/os/IBinder;

    .line 1959
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1960
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    if-eqz v1, :cond_1e

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resumed activity; dropping state of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    :cond_1e
    if-eqz v0, :cond_26

    .line 1962
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1963
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1965
    :cond_26
    return-void
.end method

.method private addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V
    .registers 3
    .param p1, "intent"    # Lcom/android/internal/content/ReferrerIntent;

    .line 1532
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1535
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1536
    return-void
.end method

.method private allowTaskSnapshot()Z
    .registers 6

    .line 3033
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->isAppLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5a

    const-string v0, "com.oneplus.applocker"

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3034
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_5a

    .line 3042
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v0, :cond_2b

    .line 3043
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2b

    .line 3044
    const-string v0, "android.content.pm.action.REQUEST_PERMISSIONS"

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3045
    return v1

    .line 3053
    :cond_2b
    const-string v0, "com.oneplus.camera"

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3054
    return v1

    .line 3058
    :cond_36
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v0, :cond_3c

    .line 3059
    return v2

    .line 3065
    :cond_3c
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_43
    if-ltz v0, :cond_59

    .line 3066
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 3067
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_56

    invoke-static {v3}, Lcom/android/server/am/ActivityRecord;->isMainIntent(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 3068
    return v1

    .line 3065
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_56
    add-int/lit8 v0, v0, -0x1

    goto :goto_43

    .line 3071
    .end local v0    # "i":I
    :cond_59
    return v2

    .line 3035
    :cond_5a
    :goto_5a
    return v1
.end method

.method private canLaunchAssistActivity(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1208
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

    .line 1209
    .local v0, "assistComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_f

    .line 1210
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1212
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method private canLaunchHomeActivity(ILcom/android/server/am/ActivityRecord;)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .line 1191
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_26

    if-nez p1, :cond_a

    goto :goto_26

    .line 1196
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    .line 1197
    .local v0, "recentTasks":Lcom/android/server/am/RecentTasks;
    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Lcom/android/server/am/RecentTasks;->isCallerRecents(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1198
    return v1

    .line 1201
    :cond_1b
    if-eqz p2, :cond_24

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return v1

    .line 1193
    .end local v0    # "recentTasks":Lcom/android/server/am/RecentTasks;
    :cond_26
    :goto_26
    return v1
.end method

.method private checkEnterPictureInPictureAppOpsState()Z
    .registers 6

    .line 1457
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v2}, Lcom/android/server/OemSceneFloatWindowController;->canEnterPictureInPicture(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1458
    return v0

    .line 1460
    :cond_e
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    const/16 v2, 0x4a

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_20} :catch_25

    if-nez v1, :cond_24

    const/4 v0, 0x1

    nop

    :cond_24
    return v0

    .line 1462
    :catch_25
    move-exception v1

    .line 1465
    return v0
.end method

.method private computeBounds(Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 2628
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2629
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    .line 2630
    .local v0, "maxAspectRatio":F
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2631
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_a5

    if-eqz v1, :cond_a5

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_a5

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_a5

    .line 2632
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto/16 :goto_a5

    .line 2643
    :cond_2a
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2644
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isGestureButtonEnabled()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 2645
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GestureButton: skip computeBounds for this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " maxAspectRatio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    return-void

    .line 2654
    :cond_57
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2655
    .local v2, "appBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2656
    .local v3, "containingAppWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 2657
    .local v4, "containingAppHeight":I
    move v5, v3

    .line 2658
    .local v5, "maxActivityWidth":I
    move v6, v4

    .line 2660
    .local v6, "maxActivityHeight":I
    const/high16 v7, 0x3f000000    # 0.5f

    if-ge v3, v4, :cond_76

    .line 2663
    int-to-float v8, v5

    mul-float/2addr v8, v0

    add-float/2addr v8, v7

    float-to-int v6, v8

    goto :goto_7a

    .line 2667
    :cond_76
    int-to-float v8, v6

    mul-float/2addr v8, v0

    add-float/2addr v8, v7

    float-to-int v5, v8

    .line 2670
    :goto_7a
    if-gt v3, v5, :cond_86

    if-gt v4, v6, :cond_86

    .line 2677
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2678
    return-void

    .line 2685
    :cond_86
    iget v7, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v5

    iget v8, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v6

    const/4 v9, 0x0

    invoke-virtual {p1, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2687
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getNavBarPosition()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a4

    .line 2689
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v5

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 2690
    iget v7, v2, Landroid/graphics/Rect;->right:I

    iput v7, p1, Landroid/graphics/Rect;->right:I

    .line 2692
    :cond_a4
    return-void

    .line 2637
    .end local v2    # "appBounds":Landroid/graphics/Rect;
    .end local v3    # "containingAppWidth":I
    .end local v4    # "containingAppHeight":I
    .end local v5    # "maxActivityWidth":I
    .end local v6    # "maxActivityHeight":I
    :cond_a5
    :goto_a5
    return-void
.end method

.method private static createImageFilename(JI)Ljava/lang/String;
    .registers 5
    .param p0, "createTime"    # J
    .param p2, "taskId"    # I

    .line 2476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_activity_icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private crossesHorizontalSizeThreshold(II)Z
    .registers 4
    .param p1, "firstDp"    # I
    .param p2, "secondDp"    # I

    .line 608
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mHorizontalSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method private static crossesSizeThreshold([III)Z
    .registers 7
    .param p0, "thresholds"    # [I
    .param p1, "firstDp"    # I
    .param p2, "secondDp"    # I

    .line 635
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 636
    return v0

    .line 638
    :cond_4
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_17

    .line 639
    aget v3, p0, v1

    .line 640
    .local v3, "threshold":I
    if-ge p1, v3, :cond_f

    if-ge p2, v3, :cond_13

    :cond_f
    if-lt p1, v3, :cond_14

    if-ge p2, v3, :cond_14

    .line 642
    :cond_13
    return v2

    .line 638
    .end local v3    # "threshold":I
    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 645
    .end local v1    # "i":I
    :cond_17
    return v0
.end method

.method private crossesSmallestSizeThreshold(II)Z
    .registers 4
    .param p1, "firstDp"    # I
    .param p2, "secondDp"    # I

    .line 616
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mSmallestSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method private crossesVerticalSizeThreshold(II)Z
    .registers 4
    .param p1, "firstDp"    # I
    .param p2, "secondDp"    # I

    .line 612
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mVerticalSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method static forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 5
    .param p0, "token"    # Landroid/os/IBinder;

    .line 910
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/android/server/am/ActivityRecord$Token;

    # invokes: Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    invoke-static {v0}, Lcom/android/server/am/ActivityRecord$Token;->access$000(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 911
    :catch_8
    move-exception v0

    .line 912
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad activity token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    const/4 v1, 0x0

    return-object v1
.end method

.method private getConfigurationChanges(Landroid/content/res/Configuration;)I
    .registers 7
    .param p1, "lastReportedConfig"    # Landroid/content/res/Configuration;

    .line 2917
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2918
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 2921
    .local v1, "changes":I
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_28

    .line 2922
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/ActivityRecord;->crossesHorizontalSizeThreshold(II)Z

    move-result v2

    if-nez v2, :cond_23

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2924
    invoke-direct {p0, v2, v3}, Lcom/android/server/am/ActivityRecord;->crossesVerticalSizeThreshold(II)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_23

    :cond_21
    const/4 v2, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v2, 0x1

    .line 2926
    .local v2, "crosses":Z
    :goto_24
    if-nez v2, :cond_28

    .line 2927
    and-int/lit16 v1, v1, -0x401

    .line 2930
    .end local v2    # "crosses":Z
    :cond_28
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_38

    .line 2931
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2932
    .local v2, "oldSmallest":I
    iget v3, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2933
    .local v3, "newSmallest":I
    invoke-direct {p0, v2, v3}, Lcom/android/server/am/ActivityRecord;->crossesSmallestSizeThreshold(II)Z

    move-result v4

    if-nez v4, :cond_38

    .line 2934
    and-int/lit16 v1, v1, -0x801

    .line 2938
    .end local v2    # "oldSmallest":I
    .end local v3    # "newSmallest":I
    :cond_38
    const/high16 v2, 0x20000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_41

    .line 2939
    const v2, -0x20000001

    and-int/2addr v1, v2

    .line 2942
    :cond_41
    return v1
.end method

.method static getStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStack;
    .registers 3
    .param p0, "token"    # Landroid/os/IBinder;

    .line 2439
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2440
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_b

    .line 2441
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2443
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method static getTaskForActivityLocked(Landroid/os/IBinder;Z)I
    .registers 7
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "onlyRoot"    # Z

    .line 2421
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2422
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 2423
    return v1

    .line 2425
    :cond_8
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2426
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2427
    .local v3, "activityNdx":I
    if-ltz v3, :cond_1e

    if-eqz p1, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v4

    if-le v3, v4, :cond_1b

    goto :goto_1e

    .line 2430
    :cond_1b
    iget v1, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    return v1

    .line 2428
    :cond_1e
    :goto_1e
    return v1
.end method

.method private getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;
    .registers 3

    .line 2338
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_1f

    .line 2339
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2341
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2342
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_1c

    .line 2343
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 2345
    :cond_1c
    if-eqz v1, :cond_1f

    .line 2346
    return-object v1

    .line 2349
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1f
    return-object p0
.end method

.method private isHomeIntent(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1175
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    const-string v0, "android.intent.category.HOME"

    .line 1176
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1177
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_2c

    .line 1178
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 1179
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 1175
    :goto_2d
    return v1
.end method

.method static isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 3
    .param p0, "token"    # Landroid/os/IBinder;

    .line 2434
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2435
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method private static isInVrUiMode(Landroid/content/res/Configuration;)Z
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 3194
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static isMainIntent(Landroid/content/Intent;)Z
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 1183
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    const-string v0, "android.intent.category.LAUNCHER"

    .line 1184
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1185
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_2c

    .line 1186
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 1187
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 1183
    :goto_2d
    return v1
.end method

.method private isProcessRunning()Z
    .registers 5

    .line 3019
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3020
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_17

    .line 3021
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 3023
    :cond_17
    if-eqz v0, :cond_1f

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1
.end method

.method private static isResizeOnlyChange(I)Z
    .registers 2
    .param p0, "change"    # I

    .line 2946
    and-int/lit16 v0, p0, -0xd81

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z
    .registers 6
    .param p1, "changes"    # I
    .param p2, "lastReportedConfig"    # Landroid/content/res/Configuration;

    .line 2908
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2909
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    const/16 v1, 0x200

    if-ne p1, v1, :cond_14

    invoke-static {v0}, Lcom/android/server/am/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v1

    .line 2910
    invoke-static {p2}, Lcom/android/server/am/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eq v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 2909
    :goto_15
    return v1
.end method

.method private reportLaunchTimeLocked(J)V
    .registers 19
    .param p1, "curTime"    # J

    move-object/from16 v7, p0

    .line 2186
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchTimeTracker()Lcom/android/server/am/LaunchTimeTracker;

    move-result-object v0

    .line 2187
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 2186
    invoke-virtual {v0, v1}, Lcom/android/server/am/LaunchTimeTracker;->getEntry(I)Lcom/android/server/am/LaunchTimeTracker$Entry;

    move-result-object v8

    .line 2188
    .local v8, "entry":Lcom/android/server/am/LaunchTimeTracker$Entry;
    if-nez v8, :cond_13

    .line 2189
    return-void

    .line 2191
    :cond_13
    iget-wide v0, v7, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    sub-long v9, p1, v0

    .line 2192
    .local v9, "thisTime":J
    iget-wide v0, v8, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    const-wide/16 v11, 0x0

    cmp-long v0, v0, v11

    if-eqz v0, :cond_24

    .line 2193
    iget-wide v0, v8, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    sub-long v0, p1, v0

    goto :goto_25

    :cond_24
    move-wide v0, v9

    :goto_25
    move-wide v5, v0

    .line 2195
    .local v5, "totalTime":J
    const-wide/16 v0, 0x40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2196
    const/16 v0, 0x7539

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2197
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v13, 0x1

    aput-object v2, v1, v13

    const/4 v2, 0x2

    iget-object v4, v7, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v1, v2

    .line 2198
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/4 v2, 0x4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v1, v2

    .line 2196
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2199
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2200
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2201
    const-string v1, "Displayed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2203
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    invoke-static {v9, v10, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2205
    cmp-long v1, v9, v5

    if-eqz v1, :cond_a5

    .line 2206
    const-string v1, " (total "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2207
    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2208
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2209
    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_b1

    .line 2210
    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->mUxPerf:Landroid/util/BoostFramework;

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    long-to-int v11, v5

    invoke-virtual {v1, v4, v3, v2, v11}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    goto :goto_b1

    .line 2213
    :cond_a5
    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_b1

    .line 2214
    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->mUxPerf:Landroid/util/BoostFramework;

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    long-to-int v11, v9

    invoke-virtual {v1, v4, v3, v2, v11}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 2217
    :cond_b1
    :goto_b1
    const-string v1, "ActivityManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_dd

    .line 2223
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2224
    .local v0, "codePath":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OnePlusRamBoostManager;->getInstance()Lcom/android/server/am/OnePlusRamBoostManager;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v3, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/OnePlusRamBoostManager;->notifyIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)V

    .line 2227
    .end local v0    # "codePath":Ljava/lang/String;
    :cond_dd
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    move-object v2, v7

    move-wide v3, v9

    move-wide v11, v5

    .line 2227
    .end local v5    # "totalTime":J
    .local v11, "totalTime":J
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 2228
    sget-object v0, Lcom/android/server/am/ActivityRecord;->mPerfFirstDraw:Landroid/util/BoostFramework;

    if-nez v0, :cond_f1

    .line 2229
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityRecord;->mPerfFirstDraw:Landroid/util/BoostFramework;

    .line 2231
    :cond_f1
    sget-object v0, Lcom/android/server/am/ActivityRecord;->mPerfFirstDraw:Landroid/util/BoostFramework;

    if-eqz v0, :cond_101

    .line 2232
    sget-object v0, Lcom/android/server/am/ActivityRecord;->mPerfFirstDraw:Landroid/util/BoostFramework;

    const/16 v1, 0x1042

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    long-to-int v3, v9

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2234
    :cond_101
    nop

    .line 2237
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    .line 2238
    iput-wide v0, v8, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    .line 2239
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_11a

    iget v0, v7, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    if-lez v0, :cond_11a

    .line 2240
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    iget v1, v7, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    invoke-virtual {v0, v1}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    .line 2241
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    .line 2243
    :cond_11a
    return-void
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;
    .registers 39
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3112
    const/4 v1, 0x0

    .line 3113
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 3114
    .local v2, "persistentState":Landroid/os/PersistableBundle;
    const/4 v3, 0x0

    .line 3115
    .local v3, "launchedFromUid":I
    const/4 v4, 0x0

    .line 3116
    .local v4, "launchedFromPackage":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3117
    .local v5, "resolvedType":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3118
    .local v6, "componentSpecified":Z
    const/4 v7, 0x0

    .line 3119
    .local v7, "userId":I
    const-wide/16 v8, -0x1

    .line 3120
    .local v8, "createTime":J
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 3121
    .local v10, "outerDepth":I
    new-instance v11, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v11}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 3123
    .local v11, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    .line 3123
    .local v12, "attrNdx":I
    :goto_1a
    if-ltz v12, :cond_a5

    .line 3124
    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    .line 3125
    .local v14, "attrName":Ljava/lang/String;
    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v15

    .line 3128
    .local v15, "attrValue":Ljava/lang/String;
    const-string/jumbo v13, "id"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_36

    .line 3129
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 3123
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "persistentState":Landroid/os/PersistableBundle;
    .end local v14    # "attrName":Ljava/lang/String;
    .end local v15    # "attrValue":Ljava/lang/String;
    .local v33, "intent":Landroid/content/Intent;
    .local v34, "persistentState":Landroid/os/PersistableBundle;
    :goto_31
    move-object/from16 v33, v1

    move-object/from16 v34, v2

    goto :goto_9c

    .line 3130
    .end local v33    # "intent":Landroid/content/Intent;
    .end local v34    # "persistentState":Landroid/os/PersistableBundle;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "persistentState":Landroid/os/PersistableBundle;
    .restart local v14    # "attrName":Ljava/lang/String;
    .restart local v15    # "attrValue":Ljava/lang/String;
    :cond_36
    const-string/jumbo v13, "launched_from_uid"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_44

    .line 3131
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_31

    .line 3132
    :cond_44
    const-string/jumbo v13, "launched_from_package"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4f

    .line 3133
    move-object v4, v15

    goto :goto_31

    .line 3134
    :cond_4f
    const-string/jumbo v13, "resolved_type"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5a

    .line 3135
    move-object v5, v15

    goto :goto_31

    .line 3136
    :cond_5a
    const-string v13, "component_specified"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_67

    .line 3137
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    goto :goto_31

    .line 3138
    :cond_67
    const-string/jumbo v13, "user_id"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_75

    .line 3139
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_31

    .line 3140
    :cond_75
    const-string/jumbo v13, "task_description_"

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_82

    .line 3141
    invoke-virtual {v11, v14, v15}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 3143
    :cond_82
    const-string v13, "ActivityManager"

    move-object/from16 v33, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .line 3143
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v33    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v2

    const-string v2, "Unknown ActivityRecord attribute="

    .line 3143
    .end local v2    # "persistentState":Landroid/os/PersistableBundle;
    .restart local v34    # "persistentState":Landroid/os/PersistableBundle;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    .end local v14    # "attrName":Ljava/lang/String;
    .end local v15    # "attrValue":Ljava/lang/String;
    :goto_9c
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    const/4 v13, 0x1

    goto/16 :goto_1a

    .line 3148
    .end local v12    # "attrNdx":I
    .end local v33    # "intent":Landroid/content/Intent;
    .end local v34    # "persistentState":Landroid/os/PersistableBundle;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "persistentState":Landroid/os/PersistableBundle;
    :cond_a5
    move-object/from16 v33, v1

    move-object/from16 v34, v2

    :cond_a9
    :goto_a9
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move v13, v12

    .line 3148
    .local v13, "event":I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_103

    const/4 v12, 0x3

    if-ne v13, v12, :cond_be

    .line 3149
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-lt v12, v10, :cond_bb

    goto :goto_be

    .line 3169
    :cond_bb
    move/from16 v35, v10

    goto :goto_105

    .line 3150
    :cond_be
    :goto_be
    const/4 v12, 0x2

    if-ne v13, v12, :cond_a9

    .line 3151
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 3154
    .local v12, "name":Ljava/lang/String;
    const-string/jumbo v15, "intent"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d5

    .line 3155
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v1

    .line 3166
    .end local v10    # "outerDepth":I
    .end local v12    # "name":Ljava/lang/String;
    .local v35, "outerDepth":I
    :goto_d2
    move/from16 v35, v10

    goto :goto_ff

    .line 3158
    .end local v35    # "outerDepth":I
    .restart local v10    # "outerDepth":I
    .restart local v12    # "name":Ljava/lang/String;
    :cond_d5
    const-string/jumbo v15, "persistable_bundle"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e3

    .line 3159
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_d2

    .line 3163
    :cond_e3
    const-string v15, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v35, v10

    const-string/jumbo v10, "restoreActivity: unexpected name="

    .line 3163
    .end local v10    # "outerDepth":I
    .restart local v35    # "outerDepth":I
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3166
    .end local v12    # "name":Ljava/lang/String;
    :goto_ff
    nop

    .line 3148
    move/from16 v10, v35

    goto :goto_a9

    .line 3169
    .end local v35    # "outerDepth":I
    .restart local v10    # "outerDepth":I
    :cond_103
    move/from16 v35, v10

    .line 3169
    .end local v10    # "outerDepth":I
    .restart local v35    # "outerDepth":I
    :goto_105
    if-eqz v1, :cond_170

    .line 3173
    move-object/from16 v10, p1

    iget-object v12, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3174
    .local v12, "service":Lcom/android/server/am/ActivityManagerService;
    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 3175
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    .line 3174
    move-object v14, v10

    move-object v15, v1

    move-object/from16 v16, v5

    move/from16 v19, v7

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v32

    .line 3176
    .local v32, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v32, :cond_150

    .line 3180
    new-instance v33, Lcom/android/server/am/ActivityRecord;

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 3182
    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v14, v33

    move-object v15, v12

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v1

    move-object/from16 v21, v5

    move-object/from16 v22, v32

    move/from16 v27, v6

    move-object/from16 v29, v10

    invoke-direct/range {v14 .. v31}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    .line 3186
    .local v14, "r":Lcom/android/server/am/ActivityRecord;
    iput-object v2, v14, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 3187
    iput-object v11, v14, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 3188
    iput-wide v8, v14, Lcom/android/server/am/ActivityRecord;->createTime:J

    .line 3190
    return-object v14

    .line 3177
    .end local v14    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_150
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "restoreActivity resolver error. Intent="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resolvedType="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 3170
    .end local v12    # "service":Lcom/android/server/am/ActivityManagerService;
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_170
    move-object/from16 v10, p1

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restoreActivity error intent="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 656
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_b

    goto :goto_4f

    .line 663
    :cond_b
    :try_start_b
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_39

    :cond_13
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting activity moved to display, activityRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_39
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 668
    invoke-static {p1, p2}, Landroid/app/servertransaction/MoveToDisplayItem;->obtain(ILandroid/content/res/Configuration;)Landroid/app/servertransaction/MoveToDisplayItem;

    move-result-object v3

    .line 667
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_4c} :catch_4d

    .line 671
    goto :goto_4e

    .line 669
    :catch_4d
    move-exception v0

    .line 672
    :goto_4e
    return-void

    .line 657
    :cond_4f
    :goto_4f
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_57

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_75

    :cond_57
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t report activity moved to display - client not running, activityRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_75
    return-void
.end method

.method private scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 675
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_b

    goto :goto_43

    .line 682
    :cond_b
    :try_start_b
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_2d

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending new config to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_2d
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 686
    invoke-static {p1}, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->obtain(Landroid/content/res/Configuration;)Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    move-result-object v3

    .line 685
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_40} :catch_41

    .line 689
    goto :goto_42

    .line 687
    :catch_41
    move-exception v0

    .line 690
    :goto_42
    return-void

    .line 676
    :cond_43
    :goto_43
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_5d

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t report activity configuration update - client not running, activityRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_5d
    return-void
.end method

.method private scheduleMultiWindowModeChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 713
    invoke-static {v3, p1}, Landroid/app/servertransaction/MultiWindowModeChangeItem;->obtain(ZLandroid/content/res/Configuration;)Landroid/app/servertransaction/MultiWindowModeChangeItem;

    move-result-object v3

    .line 712
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 717
    goto :goto_17

    .line 715
    :catch_16
    move-exception v0

    .line 718
    :goto_17
    return-void
.end method

.method private schedulePictureInPictureModeChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 745
    invoke-static {v3, p1}, Landroid/app/servertransaction/PipModeChangeItem;->obtain(ZLandroid/content/res/Configuration;)Landroid/app/servertransaction/PipModeChangeItem;

    move-result-object v3

    .line 744
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 749
    goto :goto_17

    .line 747
    :catch_16
    move-exception v0

    .line 750
    :goto_17
    return-void
.end method

.method private setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V
    .registers 11
    .param p1, "componentSpecified"    # Z
    .param p2, "launchedFromUid"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "options"    # Landroid/app/ActivityOptions;
    .param p5, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .line 1217
    const/4 v0, 0x0

    .line 1218
    .local v0, "activityType":I
    const/4 v1, 0x4

    if-eqz p1, :cond_a

    invoke-direct {p0, p2, p5}, Lcom/android/server/am/ActivityRecord;->canLaunchHomeActivity(ILcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1219
    :cond_a
    invoke-direct {p0, p3}, Lcom/android/server/am/ActivityRecord;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1221
    const/4 v0, 0x2

    .line 1223
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v2, v1, :cond_24

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5e

    .line 1226
    :cond_24
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_5e

    .line 1228
    :cond_2a
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui.recents"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 1229
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/RecentTasks;->isRecentsComponent(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_5d

    .line 1231
    :cond_4b
    if-eqz p4, :cond_5e

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v2

    if-ne v2, v1, :cond_5e

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1232
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityRecord;->canLaunchAssistActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1233
    const/4 v0, 0x4

    goto :goto_5e

    .line 1230
    :cond_5d
    :goto_5d
    const/4 v0, 0x3

    .line 1235
    :cond_5e
    :goto_5e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->setActivityType(I)V

    .line 1236
    return-void
.end method

.method private setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "global"    # Landroid/content/res/Configuration;
    .param p2, "override"    # Landroid/content/res/Configuration;

    .line 2583
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2584
    return-void
.end method

.method private shouldPauseWhenBecomingVisible()Z
    .registers 6

    .line 1923
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 1924
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_1c

    goto :goto_52

    .line 1929
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1930
    .local v0, "positionInTask":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4a

    .line 1933
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_34

    .line 1935
    return v3

    .line 1938
    :cond_34
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1939
    .local v2, "activityAbove":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_49

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v4, :cond_49

    .line 1942
    return v3

    .line 1944
    :cond_49
    return v1

    .line 1931
    .end local v2    # "activityAbove":Lcom/android/server/am/ActivityRecord;
    :cond_4a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Activity not found in its task"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1925
    .end local v0    # "positionInTask":I
    :cond_52
    :goto_52
    return v1
.end method

.method private shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z
    .registers 7
    .param p1, "changes"    # I
    .param p2, "changesConfig"    # Landroid/content/res/Configuration;

    .line 2887
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v0

    .line 2888
    .local v0, "configChanged":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityRecord;->onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z

    move-result v1

    .line 2894
    .local v1, "onlyVrUiModeChanged":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_1a

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_1a

    if-eqz v1, :cond_1a

    .line 2897
    or-int/lit16 v0, v0, 0x200

    .line 2900
    :cond_1a
    not-int v2, v0

    and-int/2addr v2, p1

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    return v2
.end method

.method private static startingWindowStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 403
    packed-switch p0, :pswitch_data_20

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 409
    :pswitch_16
    const-string v0, "STARTING_WINDOW_REMOVED"

    return-object v0

    .line 407
    :pswitch_19
    const-string v0, "STARTING_WINDOW_SHOWN"

    return-object v0

    .line 405
    :pswitch_1c
    const-string v0, "STARTING_WINDOW_NOT_SHOWN"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method

.method private supportsResizeableMultiWindow()Z
    .registers 2

    .line 1354
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 1355
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1358
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 1354
    :goto_27
    return v0
.end method

.method private updateOverrideConfiguration()V
    .registers 8

    .line 2588
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 2589
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityRecord;->computeBounds(Landroid/graphics/Rect;)V

    .line 2591
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2592
    return-void

    .line 2595
    :cond_17
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 2597
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2600
    .local v0, "updatedBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_31

    .line 2601
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/TaskRecord;->computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 2605
    :cond_31
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityRecord;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2606
    return-void
.end method

.method private updateTaskDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 1735
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iput-object p1, v0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 1736
    return-void
.end method


# virtual methods
.method final activityStoppedLocked(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .registers 10
    .param p1, "newIcicle"    # Landroid/os/Bundle;
    .param p2, "newPersistentState"    # Landroid/os/PersistableBundle;
    .param p3, "description"    # Ljava/lang/CharSequence;

    .line 2038
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2039
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    const/16 v3, 0x68

    if-eq v1, v2, :cond_28

    .line 2040
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2042
    return-void

    .line 2044
    :cond_28
    const/4 v1, 0x0

    if-eqz p2, :cond_34

    .line 2045
    iput-object p2, p0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 2046
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v4, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 2048
    :cond_34
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    if-eqz v2, :cond_58

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saving icicle of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :cond_58
    const/4 v2, 0x1

    if-eqz p1, :cond_64

    .line 2053
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 2054
    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 2055
    iput v1, p0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 2056
    invoke-direct {p0, p3}, Lcom/android/server/am/ActivityRecord;->updateTaskDescription(Ljava/lang/CharSequence;)V

    .line 2058
    :cond_64
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v1, :cond_b7

    .line 2059
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_87

    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to STOPPED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (stop complete)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_87
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2061
    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2062
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v3, "activityStoppedLocked"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2064
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->notifyAppStopped()V

    .line 2066
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_a2

    .line 2067
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto :goto_b7

    .line 2069
    :cond_a2
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v1, :cond_b2

    .line 2070
    const-string/jumbo v1, "stop-config"

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 2071
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto :goto_b7

    .line 2073
    :cond_b2
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2077
    :cond_b7
    :goto_b7
    return-void
.end method

.method addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 13
    .param p1, "from"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Landroid/content/Intent;

    .line 1505
    new-instance v6, Lcom/android/server/am/ActivityResult;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityResult;-><init>(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1507
    .local v0, "r":Lcom/android/server/am/ActivityResult;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v1, :cond_16

    .line 1508
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1510
    :cond_16
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1511
    return-void
.end method

.method applyOptionsLocked()V
    .registers 16

    .line 1588
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_22c

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1589
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_22c

    .line 1590
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    .line 1591
    .local v0, "animationType":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_22e

    .line 1673
    :pswitch_18
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyOptionsLocked: Unknown animationType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21f

    .line 1669
    :pswitch_30
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1670
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v3

    .line 1669
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 1671
    goto/16 :goto_21f

    .line 1666
    :pswitch_3f
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionStartCrossProfileApps()V

    .line 1667
    goto/16 :goto_21f

    .line 1600
    :pswitch_48
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1601
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1602
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v6

    .line 1600
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionClipReveal(IIII)V

    .line 1603
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_21f

    .line 1604
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1605
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1606
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1607
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1604
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_21f

    .line 1638
    :pswitch_a1
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object v3

    .line 1639
    .local v3, "specs":[Landroid/view/AppTransitionAnimationSpec;
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1640
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getSpecsFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v4

    .line 1641
    .local v4, "specsFuture":Landroid/view/IAppTransitionAnimationSpecsFuture;
    const/16 v5, 0x8

    if-eqz v4, :cond_c4

    .line 1642
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1643
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v7

    if-ne v0, v5, :cond_be

    goto :goto_bf

    .line 1642
    :cond_be
    move v1, v2

    :goto_bf
    invoke-virtual {v6, v4, v7, v1}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    goto/16 :goto_21f

    .line 1645
    :cond_c4
    const/16 v6, 0x9

    if-ne v0, v6, :cond_df

    if-eqz v3, :cond_df

    .line 1647
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1648
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1649
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getAnimationFinishedListener()Landroid/os/IRemoteCallback;

    move-result-object v6

    .line 1647
    invoke-virtual {v1, v3, v5, v6, v2}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    goto/16 :goto_21f

    .line 1651
    :cond_df
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1652
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/GraphicBuffer;

    move-result-object v8

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1653
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v9

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v10

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1654
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v11

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v12

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1655
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v13

    if-ne v0, v5, :cond_10b

    .line 1651
    move v14, v1

    goto :goto_10d

    .line 1655
    :cond_10b
    nop

    .line 1651
    move v14, v2

    :goto_10d
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V

    .line 1657
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_21f

    .line 1658
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1659
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1660
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1661
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v9

    iget-object v10, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1658
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_21f

    .line 1623
    .end local v3    # "specs":[Landroid/view/AppTransitionAnimationSpec;
    .end local v4    # "specsFuture":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :pswitch_14a
    const/4 v3, 0x3

    if-ne v0, v3, :cond_14f

    move v9, v1

    goto :goto_150

    :cond_14f
    move v9, v2

    .line 1624
    .local v9, "scaleUp":Z
    :goto_150
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    .line 1625
    .local v1, "buffer":Landroid/graphics/GraphicBuffer;
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1626
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v6

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1627
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v8

    .line 1625
    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V

    .line 1629
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_21f

    if-eqz v1, :cond_21f

    .line 1630
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1631
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1632
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1633
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v10

    add-int/2addr v8, v10

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1630
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto :goto_21f

    .line 1611
    .end local v1    # "buffer":Landroid/graphics/GraphicBuffer;
    .end local v9    # "scaleUp":Z
    :pswitch_1a7
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1612
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1613
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v6

    .line 1611
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionScaleUp(IIII)V

    .line 1614
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_21f

    .line 1615
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1616
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1617
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1618
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1615
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto :goto_21f

    .line 1593
    :pswitch_1ff
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1594
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1595
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1596
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1597
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v6

    .line 1593
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 1598
    nop

    .line 1677
    :cond_21f
    :goto_21f
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v1, :cond_227

    .line 1678
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked(Z)V

    goto :goto_22c

    .line 1681
    :cond_227
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->clearAllPendingOptions()V

    .line 1684
    .end local v0    # "animationType":I
    :cond_22c
    :goto_22c
    return-void

    nop

    :pswitch_data_22e
    .packed-switch 0x1
        :pswitch_1ff
        :pswitch_1a7
        :pswitch_14a
        :pswitch_14a
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_a1
        :pswitch_a1
        :pswitch_18
        :pswitch_48
        :pswitch_3f
        :pswitch_30
    .end packed-switch
.end method

.method canBeLaunchedOnDisplay(I)Z
    .registers 10
    .param p1, "displayId"    # I

    .line 1370
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1375
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    :goto_a
    move v4, v1

    goto :goto_11

    :cond_c
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->supportsResizeableMultiWindow()Z

    move-result v1

    goto :goto_a

    .line 1377
    .local v4, "resizeable":Z
    :goto_11
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPid:I

    iget v6, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IZIILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    return v1
.end method

.method canShowWhenLocked()Z
    .registers 3

    .line 3215
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mShowWhenLocked:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 3216
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->containsShowWhenLockedWindow(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 3215
    :goto_19
    return v0
.end method

.method canTurnScreenOn()Z
    .registers 4

    .line 3231
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3232
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->mTurnScreenOn:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    .line 3233
    invoke-virtual {v0, p0, v2, v2}, Lcom/android/server/am/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 3232
    :goto_13
    return v2
.end method

.method changeWindowTranslucency(Z)Z
    .registers 6
    .param p1, "toOpaque"    # Z

    .line 1261
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-ne v0, p1, :cond_6

    .line 1262
    const/4 v0, 0x0

    return v0

    .line 1266
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    const/4 v2, 0x1

    if-eqz p1, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    const/4 v3, -0x1

    :goto_10
    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 1268
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 1269
    return v2
.end method

.method checkEnterPictureInPictureState(Ljava/lang/String;Z)Z
    .registers 12
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "beforeStopping"    # Z

    .line 1388
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1389
    return v1

    .line 1393
    :cond_8
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1394
    return v1

    .line 1398
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->shouldDisableNonVrUiLocked()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1399
    return v1

    .line 1405
    :cond_18
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-nez v0, :cond_7f

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyExiting:Z

    if-eqz v0, :cond_22

    goto/16 :goto_7f

    .line 1412
    :cond_22
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isKeyguardLocked()Z

    move-result v0

    .line 1413
    .local v0, "isKeyguardLocked":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskModeState()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    move v2, v3

    goto :goto_34

    :cond_33
    move v2, v1

    .line 1414
    .local v2, "isCurrentAppLocked":Z
    :goto_34
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    .line 1415
    .local v4, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v4, :cond_42

    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->hasPinnedStack()Z

    move-result v5

    if-eqz v5, :cond_42

    move v5, v3

    goto :goto_43

    :cond_42
    move v5, v1

    .line 1418
    .local v5, "hasPinnedStack":Z
    :goto_43
    if-nez v0, :cond_49

    if-nez v2, :cond_49

    move v6, v3

    goto :goto_4a

    :cond_49
    move v6, v1

    .line 1421
    .local v6, "isNotLockedOrOnKeyguard":Z
    :goto_4a
    if-eqz p2, :cond_4f

    if-eqz v5, :cond_4f

    .line 1422
    return v1

    .line 1425
    :cond_4f
    sget-object v7, Lcom/android/server/am/ActivityRecord$1;->$SwitchMap$com$android$server$am$ActivityStack$ActivityState:[I

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_a2

    goto :goto_7e

    .line 1442
    :pswitch_5d
    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz v7, :cond_7e

    .line 1443
    if-eqz v6, :cond_67

    if-nez v5, :cond_67

    move v1, v3

    nop

    :cond_67
    return v1

    .line 1436
    :pswitch_68
    if-eqz v6, :cond_72

    if-nez v5, :cond_72

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz v7, :cond_72

    move v1, v3

    nop

    :cond_72
    return v1

    .line 1429
    :pswitch_73
    if-nez v2, :cond_7d

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-nez v7, :cond_7b

    if-nez p2, :cond_7d

    :cond_7b
    move v1, v3

    nop

    :cond_7d
    return v1

    .line 1446
    :cond_7e
    :goto_7e
    return v1

    .line 1406
    .end local v0    # "isKeyguardLocked":Z
    .end local v2    # "isCurrentAppLocked":Z
    .end local v4    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v5    # "hasPinnedStack":Z
    .end local v6    # "isNotLockedOrOnKeyguard":Z
    :cond_7f
    :goto_7f
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickReply: skip support PIP due to QuickReply running="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " exiting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyExiting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    return v1

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_73
        :pswitch_68
        :pswitch_68
        :pswitch_5d
    .end packed-switch
.end method

.method clearOptionsLocked()V
    .registers 2

    .line 1691
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked(Z)V

    .line 1692
    return-void
.end method

.method clearOptionsLocked(Z)V
    .registers 3
    .param p1, "withAbort"    # Z

    .line 1695
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    .line 1696
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 1698
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1699
    return-void
.end method

.method clearVoiceSessionLocked()V
    .registers 2

    .line 2500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 2502
    return-void
.end method

.method completeResumeLocked()V
    .registers 8

    .line 1973
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1974
    .local v0, "wasVisible":Z
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    .line 1975
    if-nez v0, :cond_c

    .line 1977
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 1979
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 1980
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1981
    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1982
    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1984
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1985
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1986
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_34

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v3, v4, :cond_34

    .line 1987
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v4, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 1990
    :cond_34
    :try_start_34
    new-instance v4, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;

    invoke-direct {v4, p0, v2}, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord$1;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3e} :catch_3f

    .line 1993
    goto :goto_56

    .line 1991
    :catch_3f
    move-exception v1

    .line 1992
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_56
    :goto_56
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v1, :cond_5f

    .line 1997
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2001
    :cond_5f
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2003
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2005
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 2006
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2007
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2012
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_8a

    .line 2013
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_8e

    .line 2015
    :cond_8a
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 2018
    :goto_8e
    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 2020
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->canTurnScreenOn()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 2021
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v3, "turnScreenOnFlag"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    goto :goto_a2

    .line 2026
    :cond_9f
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    .line 2030
    :goto_a2
    invoke-static {}, Lcom/oneplus/oiface/OifaceManager;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_c1

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_c1

    .line 2031
    invoke-static {}, Lcom/oneplus/oiface/OifaceManager;->getInstance()Lcom/oneplus/oiface/OifaceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/oneplus/oiface/OifaceManager;->currentPackage(Ljava/lang/String;II)V

    .line 2034
    :cond_c1
    return-void
.end method

.method continueLaunchTickingLocked()Z
    .registers 6

    .line 2090
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2091
    return v1

    .line 2094
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2095
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_11

    .line 2096
    return v1

    .line 2099
    :cond_11
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2100
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2101
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2102
    const/4 v2, 0x1

    return v2
.end method

.method createWindowContainer()V
    .registers 21

    .line 1095
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-nez v0, :cond_75

    .line 1100
    const/4 v0, 0x1

    iput-boolean v0, v14, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 1102
    iget-object v1, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v16

    .line 1105
    .local v16, "taskController":Lcom/android/server/wm/TaskWindowContainerController;
    iget-object v1, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    .line 1107
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->updateOverrideConfiguration()V

    .line 1109
    new-instance v15, Lcom/android/server/wm/AppWindowContainerController;

    iget-object v2, v14, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const v4, 0x7fffffff

    iget-object v1, v14, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iget-boolean v6, v14, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    iget-object v1, v14, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x400

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    move v7, v0

    goto :goto_30

    :cond_2f
    move v7, v3

    :goto_30
    iget-object v1, v14, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    iget-object v1, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_3c

    move v9, v0

    goto :goto_3d

    :cond_3c
    move v9, v3

    :goto_3d
    iget-boolean v10, v14, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->isAlwaysFocusable()Z

    move-result v11

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v13, v14, Lcom/android/server/am/ActivityRecord;->mRotationAnimationHint:I

    .line 1114
    invoke-static/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerService;->getInputDispatchingTimeoutLocked(Lcom/android/server/am/ActivityRecord;)J

    move-result-wide v0

    const-wide/32 v17, 0xf4240

    mul-long v17, v17, v0

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v3, v14

    move-object/from16 v19, v15

    move-wide/from16 v14, v17

    invoke-direct/range {v0 .. v15}, Lcom/android/server/wm/AppWindowContainerController;-><init>(Lcom/android/server/wm/TaskWindowContainerController;Landroid/view/IApplicationToken;Lcom/android/server/wm/AppWindowContainerListener;IIZZIZZZIIJ)V

    move-object/from16 v1, v19

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    .line 1116
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->inMultiWindowMode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 1122
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 1123
    return-void

    .line 1096
    .end local v16    # "taskController":Lcom/android/server/wm/TaskWindowContainerController;
    :cond_75
    move-object v0, v14

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already created for r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V
    .registers 15
    .param p1, "callingUid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrer"    # Ljava/lang/String;

    .line 1549
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1550
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1549
    move v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 1551
    new-instance v0, Lcom/android/internal/content/ReferrerIntent;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1552
    .local v0, "rintent":Lcom/android/internal/content/ReferrerIntent;
    const/4 v1, 0x1

    .line 1553
    .local v1, "unsent":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isTopRunningActivity()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isSleeping()Z

    move-result v2

    if-eqz v2, :cond_25

    move v2, v4

    goto :goto_26

    :cond_25
    move v2, v3

    .line 1559
    .local v2, "isTopActivityWhileSleeping":Z
    :goto_26
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_34

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_34

    if-eqz v2, :cond_94

    :cond_34
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_94

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_94

    .line 1562
    :try_start_3e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1563
    .local v5, "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1564
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_5a

    .line 1565
    move v3, v4

    goto :goto_5b

    .line 1564
    :cond_5a
    nop

    .line 1565
    :goto_5b
    invoke-static {v5, v3}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v3

    .line 1564
    invoke-virtual {v6, v7, v8, v3}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_62} :catch_7c
    .catch Ljava/lang/NullPointerException; {:try_start_3e .. :try_end_62} :catch_64

    .line 1566
    const/4 v1, 0x0

    .line 1571
    .end local v5    # "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    :goto_63
    goto :goto_94

    .line 1569
    :catch_64
    move-exception v3

    .line 1570
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown sending new intent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/NullPointerException;
    goto :goto_94

    .line 1567
    :catch_7c
    move-exception v3

    .line 1568
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown sending new intent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_63

    .line 1573
    :cond_94
    :goto_94
    if-eqz v1, :cond_99

    .line 1574
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityRecord;->addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V

    .line 1576
    :cond_99
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 416
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 417
    .local v0, "now":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "packageName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    const-string v2, " processName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "launchedFromUid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 420
    const-string v2, " launchedFromPackage="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    const-string v2, " userId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 422
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "app="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 423
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "frontOfTask="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 425
    const-string v2, " task="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 426
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "taskAffinity="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "realActivity="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_e8

    .line 430
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "baseDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    .line 432
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "resDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    :cond_bf
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "dataDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v2, :cond_e8

    .line 436
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "splitDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    :cond_e8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "stateNotNeeded="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 441
    const-string v2, " componentSpecified="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 442
    const-string v2, " mActivityType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    if-eqz v2, :cond_122

    .line 445
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "rootVoiceInteraction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 447
    :cond_122
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "compat="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 448
    const-string v2, " labelRes=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    const-string v2, " icon=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    const-string v2, " theme=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mLastReportedConfigurations:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/MergedConfiguration;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "CurrentConfiguration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 455
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1ba

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "OverrideConfiguration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    :cond_1ba
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_1db

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    :cond_1db
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_1e3

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v2, :cond_205

    .line 462
    :cond_1e3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "resultTo="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 463
    const-string v2, " resultWho="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    const-string v2, " resultCode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 466
    :cond_205
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v2, :cond_2fd

    .line 467
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "iconFilename":Ljava/lang/String;
    if-nez v2, :cond_221

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_221

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 469
    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v3

    if-eqz v3, :cond_2fd

    .line 470
    :cond_221
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "taskDescription:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    const-string v3, " label=\""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    const-string v3, "\""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    const-string v3, " icon="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_266

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_269

    .line 475
    :cond_266
    const-string/jumbo v3, "null"

    .line 473
    :goto_269
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 476
    const-string v3, " iconResource="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getIconResource()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 477
    const-string v3, " iconFilename="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 478
    const-string v3, " primaryColor="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 479
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " backgroundColor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 481
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " statusBarColor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " navigationBarColor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    .end local v2    # "iconFilename":Ljava/lang/String;
    :cond_2fd
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_30f

    .line 489
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "results="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 491
    :cond_30f
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v2, :cond_368

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_368

    .line 492
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending Results:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_329
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_368

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 494
    .local v3, "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-eqz v3, :cond_33e

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_33f

    :cond_33e
    const/4 v4, 0x0

    .line 495
    .local v4, "pir":Lcom/android/server/am/PendingIntentRecord;
    :goto_33f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  - "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 496
    if-nez v4, :cond_350

    .line 497
    const-string/jumbo v5, "null"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_367

    .line 499
    :cond_350
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 500
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 502
    .end local v3    # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v4    # "pir":Lcom/android/server/am/PendingIntentRecord;
    :goto_367
    goto :goto_329

    .line 504
    :cond_368
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_3aa

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3aa

    .line 505
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending New Intents:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    move v2, v3

    .line 506
    .local v2, "i":I
    :goto_37e
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3aa

    .line 507
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 508
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  - "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    if-nez v4, :cond_39f

    .line 510
    const-string/jumbo v5, "null"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3a7

    .line 512
    :cond_39f
    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5, v3, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_3a7
    add-int/lit8 v2, v2, 0x1

    goto :goto_37e

    .line 516
    .end local v2    # "i":I
    :cond_3aa
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_3bc

    .line 517
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pendingOptions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 519
    :cond_3bc
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v2, :cond_3c5

    .line 520
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/am/AppTimeTracker;->dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 522
    :cond_3c5
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v2, :cond_3ce

    .line 523
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 525
    :cond_3ce
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "launchFailed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 526
    const-string v2, " launchCount="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 527
    const-string v2, " lastLaunchTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 528
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3f9

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3fe

    .line 529
    :cond_3f9
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 530
    :goto_3fe
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 531
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "haveState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 532
    const-string v2, " icicle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 533
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "state="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 534
    const-string v2, " stopped="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 535
    const-string v2, " delayedResume="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 536
    const-string v2, " finishing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 537
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "keysPaused="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 538
    const-string v2, " inHistory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 539
    const-string v2, " visible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 540
    const-string v2, " sleeping="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 541
    const-string v2, " idle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 542
    const-string v2, " mStartingWindowState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 543
    iget v2, p0, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    invoke-static {v2}, Lcom/android/server/am/ActivityRecord;->startingWindowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fullscreen="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 545
    const-string v2, " noDisplay="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 546
    const-string v2, " immersive="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 547
    const-string v2, " launchMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 548
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "frozenBeforeDestroy="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 549
    const-string v2, " forceNewConfig="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 550
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mActivityType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_4f1

    .line 553
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 554
    const-string/jumbo v2, "requestedVrComponent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 555
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 557
    :cond_4f1
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4fd

    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_52f

    .line 558
    :cond_4fd
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "displayStartTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 559
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_511

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_516

    .line 560
    :cond_511
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 561
    :goto_516
    const-string v2, " startTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 562
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_527

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_52c

    .line 563
    :cond_527
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 564
    :goto_52c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 566
    :cond_52f
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    .line 567
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 568
    .local v2, "waitingVisible":Z
    iget-wide v6, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_543

    if-nez v2, :cond_543

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_572

    .line 569
    :cond_543
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "waitingVisible="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 570
    const-string v3, " nowVisible="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 571
    const-string v3, " lastVisibleTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 572
    iget-wide v6, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_56a

    const-string v3, "0"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_56f

    .line 573
    :cond_56a
    iget-wide v3, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    invoke-static {v3, v4, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 574
    :goto_56f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 576
    :cond_572
    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    if-eqz v3, :cond_590

    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mDeferHidingClient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    :cond_590
    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-nez v3, :cond_598

    iget v3, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    if-eqz v3, :cond_5b3

    .line 580
    :cond_598
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "deferRelaunchUntilPaused="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 581
    const-string v3, " configChangeFlags="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    iget v3, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    :cond_5b3
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v3, :cond_5c4

    .line 585
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "connections="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 587
    :cond_5c4
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_671

    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "resizeMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mLastReportedMultiWindowMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mLastReportedPictureInPictureMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v3

    if-eqz v3, :cond_64c

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "supportsPictureInPicture="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "supportsEnterPipOnTaskSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    :cond_64c
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_671

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "maxAspectRatio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    :cond_671
    return-void
.end method

.method ensureActivityConfiguration(IZ)Z
    .registers 4
    .param p1, "globalChanges"    # I
    .param p2, "preserveWindow"    # Z

    .line 2695
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    move-result v0

    return v0
.end method

.method ensureActivityConfiguration(IZZ)Z
    .registers 14
    .param p1, "globalChanges"    # I
    .param p2, "preserveWindow"    # Z
    .param p3, "ignoreStopState"    # Z

    .line 2715
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2716
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v1, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    .line 2717
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v1, :cond_11

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_27

    :cond_11
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping config check (will change): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_27
    return v2

    .line 2723
    :cond_28
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_4f

    .line 2724
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v1, :cond_35

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_4b

    :cond_35
    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Configuration doesn\'t matter in finishing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    :cond_4b
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 2727
    return v2

    .line 2730
    :cond_4f
    if-nez p3, :cond_7c

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v4, :cond_5d

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v4, :cond_7c

    .line 2731
    :cond_5d
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v1, :cond_65

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_7b

    :cond_65
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping config check stopped or stopping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    :cond_7b
    return v2

    .line 2740
    :cond_7c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 2741
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v1, :cond_8b

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_a1

    :cond_8b
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping config check invisible stack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    :cond_a1
    return v2

    .line 2746
    :cond_a2
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v1, :cond_aa

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_c0

    :cond_aa
    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ensuring correct configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    :cond_c0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v1

    .line 2750
    .local v1, "newDisplayId":I
    iget v4, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedDisplayId:I

    if-eq v4, v1, :cond_ca

    move v4, v2

    goto :goto_cb

    :cond_ca
    move v4, v3

    .line 2751
    .local v4, "displayChanged":Z
    :goto_cb
    if-eqz v4, :cond_cf

    .line 2752
    iput v1, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedDisplayId:I

    .line 2755
    :cond_cf
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->updateOverrideConfiguration()V

    .line 2761
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v6}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2762
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_10e

    iget-boolean v5, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-nez v5, :cond_10e

    if-nez v4, :cond_10e

    .line 2763
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_f7

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v3, :cond_10d

    :cond_f7
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Configuration & display unchanged in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    :cond_10d
    return v2

    .line 2773
    :cond_10e
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v5}, Lcom/android/server/am/ActivityRecord;->getConfigurationChanges(Landroid/content/res/Configuration;)I

    move-result v5

    .line 2776
    .local v5, "changes":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 2778
    .local v6, "newMergedOverrideConfig":Landroid/content/res/Configuration;
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/android/server/am/ActivityRecord;->setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2780
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_146

    .line 2784
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_12f

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v3, :cond_145

    :cond_12f
    const-string v3, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping config check for initializing activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    :cond_145
    return v2

    .line 2789
    :cond_146
    if-nez v5, :cond_174

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-nez v7, :cond_174

    .line 2790
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_154

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v3, :cond_16a

    :cond_154
    const-string v3, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Configuration no differences in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    :cond_16a
    if-eqz v4, :cond_170

    .line 2795
    invoke-direct {p0, v1, v6}, Lcom/android/server/am/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V

    goto :goto_173

    .line 2797
    :cond_170
    invoke-direct {p0, v6}, Lcom/android/server/am/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2799
    :goto_173
    return v2

    .line 2802
    :cond_174
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v7, :cond_17c

    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v7, :cond_19e

    :cond_17c
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Configuration changes for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", allChanges="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2804
    invoke-static {v5}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2802
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    :cond_19e
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_2ed

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v7, :cond_1aa

    goto/16 :goto_2ed

    .line 2817
    :cond_1aa
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v7, :cond_1b2

    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v7, :cond_1f4

    :cond_1b2
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking to restart "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": changed=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2819
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", handles=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2820
    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mLastReportedConfiguration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2817
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    :cond_1f4
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v5, v7}, Lcom/android/server/am/ActivityRecord;->shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z

    move-result v7

    if-nez v7, :cond_20e

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v7, :cond_201

    goto :goto_20e

    .line 2868
    :cond_201
    if-eqz v4, :cond_207

    .line 2869
    invoke-direct {p0, v1, v6}, Lcom/android/server/am/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V

    goto :goto_20a

    .line 2871
    :cond_207
    invoke-direct {p0, v6}, Lcom/android/server/am/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2873
    :goto_20a
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 2875
    return v2

    .line 2825
    :cond_20e
    :goto_20e
    iget v7, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v7, v5

    iput v7, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 2826
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v7, p1}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 2827
    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 2828
    invoke-static {v5}, Lcom/android/server/am/ActivityRecord;->isResizeOnlyChange(I)Z

    move-result v7

    and-int/2addr p2, v7

    .line 2829
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_2c9

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v7, :cond_22b

    goto/16 :goto_2c9

    .line 2833
    :cond_22b
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_254

    .line 2836
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_239

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v3, :cond_24f

    :cond_239
    const-string v3, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Config is skipping already pausing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    :cond_24f
    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 2839
    iput-boolean p2, p0, Lcom/android/server/am/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    .line 2840
    return v2

    .line 2841
    :cond_254
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_2a7

    .line 2845
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v7, :cond_262

    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v7, :cond_278

    :cond_262
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Config is relaunching resumed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    :cond_278
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v7, :cond_2a3

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v7, :cond_2a3

    .line 2849
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Config is relaunching resumed invisible activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " called by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x4

    .line 2850
    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2849
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    :cond_2a3
    invoke-virtual {p0, v2, p2}, Lcom/android/server/am/ActivityRecord;->relaunchActivityLocked(ZZ)V

    goto :goto_2ec

    .line 2855
    :cond_2a7
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v2, :cond_2af

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v2, :cond_2c5

    :cond_2af
    const-string v2, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Config is relaunching non-resumed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    :cond_2c5
    invoke-virtual {p0, v3, p2}, Lcom/android/server/am/ActivityRecord;->relaunchActivityLocked(ZZ)V

    goto :goto_2ec

    .line 2830
    :cond_2c9
    :goto_2c9
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v7, :cond_2d1

    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v7, :cond_2e7

    :cond_2d1
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Config is destroying non-running "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    :cond_2e7
    const-string v7, "config"

    invoke-virtual {v0, p0, v2, v7}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 2861
    :goto_2ec
    return v3

    .line 2809
    :cond_2ed
    :goto_2ed
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v7, :cond_2f5

    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v7, :cond_30b

    :cond_2f5
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Configuration doesn\'t matter not running "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    :cond_30b
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 2812
    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 2813
    return v2
.end method

.method finishLaunchTickingLocked()V
    .registers 4

    .line 2106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    .line 2107
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2108
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_11

    .line 2109
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2111
    :cond_11
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 3
    .param p1, "index"    # I

    .line 760
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getChildCount()I
    .registers 2

    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method getDisplay()Lcom/android/server/am/ActivityDisplay;
    .registers 3

    .line 1256
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1257
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method getDisplayId()I
    .registers 3

    .line 2450
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2451
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_8

    .line 2452
    const/4 v1, -0x1

    return v1

    .line 2454
    :cond_8
    iget v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    return v1
.end method

.method getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;
    .registers 2

    .line 1687
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->forTargetActivity()Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 765
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method getRequestedOrientation()I
    .registers 2

    .line 2540
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->getOrientation()I

    move-result v0

    return v0
.end method

.method getStack()Lcom/android/server/am/ActivityStack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">()TT;"
        }
    .end annotation

    .line 1248
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method getStackId()I
    .registers 2

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method getState()Lcom/android/server/am/ActivityStack$ActivityState;
    .registers 2

    .line 1801
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    return-object v0
.end method

.method getTask()Lcom/android/server/am/TaskRecord;
    .registers 2

    .line 769
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method getTurnScreenOnFlag()Z
    .registers 2

    .line 3237
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mTurnScreenOn:Z

    return v0
.end method

.method getUid()I
    .registers 2

    .line 3198
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;
    .registers 3

    .line 1496
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-nez v0, :cond_d

    .line 1497
    new-instance v0, Lcom/android/server/am/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/UriPermissionOwner;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 1499
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    return-object v0
.end method

.method getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;
    .registers 2

    .line 1091
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    return-object v0
.end method

.method handleAlreadyVisible()Z
    .registers 5

    .line 1948
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1950
    :try_start_4
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_17

    .line 1951
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_18

    .line 1954
    :cond_17
    goto :goto_19

    .line 1953
    :catch_18
    move-exception v1

    .line 1955
    :goto_19
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_21

    const/4 v0, 0x1

    nop

    :cond_21
    return v0
.end method

.method hasDismissKeyguardWindows()Z
    .registers 3

    .line 1478
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->containsDismissKeyguardWindow(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method isAlwaysFocusable()Z
    .registers 3

    .line 1469
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method isConfigurationCompatible(Landroid/content/res/Configuration;)Z
    .registers 7
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 2610
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-eqz v0, :cond_b

    .line 2611
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->getOrientation()I

    move-result v0

    goto :goto_f

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 2612
    .local v0, "orientation":I
    :goto_f
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v3, :cond_1c

    .line 2614
    return v2

    .line 2616
    :cond_1c
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_28

    .line 2618
    return v2

    .line 2620
    :cond_28
    return v3
.end method

.method final isDestroyable()Z
    .registers 4

    .line 2458
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_a

    goto :goto_2b

    .line 2462
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2463
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eq p0, v2, :cond_2a

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p0, v2, :cond_2a

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v2, :cond_2a

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v2, :cond_23

    goto :goto_2a

    .line 2468
    :cond_23
    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_28

    .line 2470
    return v1

    .line 2472
    :cond_28
    const/4 v1, 0x1

    return v1

    .line 2466
    :cond_2a
    :goto_2a
    return v1

    .line 2460
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2b
    :goto_2b
    return v1
.end method

.method isFocusable()Z
    .registers 3

    .line 1298
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isAlwaysFocusable()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z

    move-result v0

    return v0
.end method

.method isInHistory()Z
    .registers 2

    .line 1283
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    return v0
.end method

.method isInStackLocked()Z
    .registers 3

    .line 1287
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1288
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public isInterestingToUserLocked()Z
    .registers 3

    .line 2396
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method isNoHistory()Z
    .registers 3

    .line 3079
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method isNonResizableOrForcedResizable()Z
    .registers 4

    .line 1318
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method isPersistable()Z
    .registers 3

    .line 1292
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1294
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 1292
    :goto_20
    return v0
.end method

.method isResizeable()Z
    .registers 5

    .line 1304
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    .line 1305
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_23

    .line 1306
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickReply: force resizable for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_23
    return v1

    .line 1311
    :cond_24
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_39

    :cond_37
    const/4 v1, 0x0

    nop

    :cond_39
    :goto_39
    return v1
.end method

.method isResolverActivity()Z
    .registers 3

    .line 918
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isResolverOrChildActivity()Z
    .registers 5

    .line 922
    const-string v0, "android"

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 923
    return v1

    .line 926
    :cond_c
    :try_start_c
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    const-class v2, Ljava/lang/Object;

    .line 927
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 926
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_22} :catch_23

    return v0

    .line 928
    :catch_23
    move-exception v0

    .line 929
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    return v1
.end method

.method final isSleeping()Z
    .registers 3

    .line 1539
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1540
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v1

    goto :goto_11

    :cond_b
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    move-result v1

    :goto_11
    return v1
.end method

.method isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z
    .registers 3
    .param p1, "state"    # Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1808
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z
    .registers 4
    .param p1, "state1"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p2, "state2"    # Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1815
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

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

.method isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z
    .registers 5
    .param p1, "state1"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p2, "state2"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p3, "state3"    # Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1822
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p2, v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p3, v0, :cond_d

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

.method isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z
    .registers 6
    .param p1, "state1"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p2, "state2"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p3, "state3"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p4, "state4"    # Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1830
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p2, v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p3, v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p4, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method isTopRunningActivity()Z
    .registers 2

    .line 3241
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public keyDispatchingTimedOut(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "windowPid"    # I

    .line 2319
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2320
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    move-object v4, v1

    .line 2321
    .local v4, "anrActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object v3, v1

    .line 2322
    .local v3, "anrApp":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v1, p2, :cond_20

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1e

    goto :goto_20

    :cond_1e
    move v1, v5

    goto :goto_21

    :cond_20
    :goto_20
    move v1, v2

    .line 2324
    .local v1, "windowFromSameProcessAsActivity":Z
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2325
    if-eqz v1, :cond_31

    .line 2326
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    move-object v5, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    return v0

    .line 2330
    :cond_31
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2, v5, p1}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_3e

    goto :goto_3f

    :cond_3e
    move v2, v5

    :goto_3f
    return v2

    .line 2324
    .end local v1    # "windowFromSameProcessAsActivity":Z
    .end local v3    # "anrApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "anrActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method makeClientVisible()V
    .registers 7

    .line 1897
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 1899
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    .line 1900
    invoke-static {v4}, Landroid/app/servertransaction/WindowVisibilityItem;->obtain(Z)Landroid/app/servertransaction/WindowVisibilityItem;

    move-result-object v4

    .line 1899
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1901
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->shouldPauseWhenBecomingVisible()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1904
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v2, "makeVisibleIfNeeded"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1905
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v5, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 1906
    invoke-static {v4, v0, v5, v0}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v0

    .line 1905
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3c} :catch_3d

    .line 1911
    :cond_3c
    goto :goto_5a

    .line 1909
    :catch_3d
    move-exception v0

    .line 1910
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown sending visibility update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1912
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5a
    return-void
.end method

.method makeFinishingLocked()V
    .registers 2

    .line 1482
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    .line 1483
    return-void

    .line 1485
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 1486
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_f

    .line 1487
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 1490
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_1a

    .line 1491
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1493
    :cond_1a
    return-void
.end method

.method makeVisibleIfNeeded(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 8
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reportToClient"    # Z

    .line 1862
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_78

    if-ne p0, p1, :cond_9

    goto :goto_78

    .line 1869
    :cond_9
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_23

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Making visible and scheduling visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1873
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_27
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_35

    .line 1874
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1875
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1877
    :cond_35
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    .line 1878
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1879
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1880
    if-eqz p2, :cond_46

    .line 1881
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->makeClientVisible()V

    goto :goto_48

    .line 1883
    :cond_46
    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 1886
    :goto_48
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1887
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_56} :catch_57

    .line 1891
    goto :goto_74

    .line 1888
    :catch_57
    move-exception v1

    .line 1890
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown making visible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1892
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_74
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->handleAlreadyVisible()Z

    .line 1893
    return-void

    .line 1863
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_78
    :goto_78
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_a4

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not making visible, r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " starting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    :cond_a4
    return-void
.end method

.method public mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2120
    if-eqz p1, :cond_c

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v0, :cond_c

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method notifyAppResumed(Z)V
    .registers 3
    .param p1, "wasStopped"    # Z

    .line 1834
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowContainerController;->notifyAppResumed(Z)V

    .line 1835
    return-void
.end method

.method notifyUnknownVisibilityLaunched()V
    .registers 2

    .line 1841
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_9

    .line 1842
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->notifyUnknownVisibilityLaunched()V

    .line 1844
    :cond_9
    return-void
.end method

.method public okToShowExcludeLocked(Z)Z
    .registers 6
    .param p1, "isExcludeFromRecents"    # Z

    .line 2371
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2372
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isEncryptionAware()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2373
    return v1

    .line 2377
    :cond_14
    const/4 v0, 0x1

    if-eqz p1, :cond_33

    .line 2378
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_32

    .line 2379
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "okToShowExcludeLocked, allowed find activity for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    :cond_32
    return v0

    .line 2384
    :cond_33
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_54

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2385
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v3, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2386
    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_54

    .line 2384
    :cond_52
    move v0, v1

    goto :goto_55

    .line 2386
    :cond_54
    :goto_54
    nop

    .line 2384
    :goto_55
    return v0
.end method

.method public okToShowLocked()Z
    .registers 4

    .line 2356
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2357
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isEncryptionAware()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2358
    return v1

    .line 2361
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2362
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2363
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    goto :goto_35

    :cond_34
    :goto_34
    const/4 v1, 0x1

    .line 2361
    :goto_35
    return v1
.end method

.method public onStartingWindowDrawn(J)V
    .registers 6
    .param p1, "timestamp"    # J

    .line 2247
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2248
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v1

    .line 2249
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v2

    .line 2248
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyStartingWindowDrawn(IJ)V

    .line 2250
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2251
    return-void

    .line 2250
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onWindowsDrawn(J)V
    .registers 8
    .param p1, "timestamp"    # J

    .line 2255
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2256
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyWindowsDrawn(IJ)V

    .line 2258
    iget-wide v1, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1e

    .line 2259
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityRecord;->reportLaunchTimeLocked(J)V

    .line 2261
    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2262
    iput-wide v3, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    .line 2263
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 2264
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_31

    .line 2265
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    .line 2267
    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2268
    return-void

    .line 2267
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onWindowsGone()V
    .registers 5

    .line 2307
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2308
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_21

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "windowsGone(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    :cond_21
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 2310
    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->launching:Z

    .line 2311
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2312
    return-void

    .line 2311
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onWindowsVisible()V
    .registers 8

    .line 2272
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2273
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2274
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_26

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "windowsVisibleLocked(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    :cond_26
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v1, :cond_90

    .line 2276
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 2277
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->launching:Z

    .line 2278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    .line 2279
    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v3, :cond_4a

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->isStoppingNoHistoryActivity()Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_4a

    .line 2297
    :cond_43
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Lcom/android/server/am/ActivityRecord;ZZ)Ljava/util/ArrayList;

    goto :goto_8b

    .line 2284
    :cond_4a
    :goto_4a
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2285
    .local v1, "size":I
    if-lez v1, :cond_8a

    .line 2286
    nop

    .line 2286
    .local v2, "i":I
    :goto_55
    if-ge v2, v1, :cond_7e

    .line 2287
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    .line 2288
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2289
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v4, :cond_7b

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Was waiting for visible: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 2291
    .end local v2    # "i":I
    :cond_7e
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2292
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 2294
    .end local v1    # "size":I
    :cond_8a
    nop

    .line 2300
    :goto_8b
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 2302
    :cond_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_95

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2303
    return-void

    .line 2302
    :catchall_95
    move-exception v1

    :try_start_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method pauseKeyDispatchingLocked()V
    .registers 2

    .line 1715
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-nez v0, :cond_10

    .line 1716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 1718
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-eqz v0, :cond_10

    .line 1719
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->pauseKeyDispatching()V

    .line 1722
    :cond_10
    return-void
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 3
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 3245
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowContainerController;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 3246
    return-void
.end method

.method relaunchActivityLocked(ZZ)V
    .registers 10
    .param p1, "andResume"    # Z
    .param p2, "preserveWindow"    # Z

    .line 2951
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSuppressResizeConfigChanges:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    if-eqz p2, :cond_c

    .line 2952
    iput v1, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 2953
    return-void

    .line 2956
    :cond_c
    const/4 v0, 0x0

    .line 2957
    .local v0, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v2, 0x0

    .line 2958
    .local v2, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p1, :cond_14

    .line 2959
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 2960
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 2962
    :cond_14
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_4e

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Relaunching: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with results="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " newIntents="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " andResume="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " preserveWindow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    :cond_4e
    if-eqz p1, :cond_53

    const/16 v3, 0x7543

    goto :goto_55

    .line 2967
    :cond_53
    const/16 v3, 0x7544

    :goto_55
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 2968
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 2966
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2970
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3, v1}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 2973
    :try_start_83
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_8b

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_bd

    :cond_8b
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2974
    if-eqz p1, :cond_9c

    const-string v5, "RESUMED"

    goto :goto_9e

    :cond_9c
    const-string v5, "PAUSED"

    :goto_9e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Relaunching "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x6

    .line 2975
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2973
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    :cond_bd
    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 2977
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityStackSupervisor;->activityRelaunchingLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2978
    iget v3, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    new-instance v4, Landroid/util/MergedConfiguration;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 2980
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 2981
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2978
    invoke-static {v0, v2, v3, v4, p2}, Landroid/app/servertransaction/ActivityRelaunchItem;->obtain(Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/servertransaction/ActivityRelaunchItem;

    move-result-object v3

    .line 2984
    .local v3, "callbackItem":Landroid/app/servertransaction/ClientTransactionItem;
    if-eqz p1, :cond_e6

    .line 2985
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v4

    invoke-static {v4}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v4

    .line 2985
    .local v4, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_ea

    .line 2987
    .end local v4    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :cond_e6
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v4

    .line 2989
    .restart local v4    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :goto_ea
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v5, v6}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v5

    .line 2990
    .local v5, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v5, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2991
    invoke-virtual {v5, v4}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 2992
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_103
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_103} :catch_104

    .line 2998
    .end local v3    # "callbackItem":Landroid/app/servertransaction/ClientTransactionItem;
    .end local v4    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v5    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    goto :goto_114

    .line 2996
    :catch_104
    move-exception v3

    .line 2997
    .local v3, "e":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_10d

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_114

    :cond_10d
    const-string v4, "ActivityManager"

    const-string v5, "Relaunch failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3000
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_114
    :goto_114
    if-eqz p1, :cond_144

    .line 3001
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_130

    .line 3002
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resumed after relaunch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    :cond_130
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3005
    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3006
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getAppWarningsLocked()Lcom/android/server/am/AppWarnings;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/am/AppWarnings;->onResumeActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 3007
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_155

    .line 3009
    :cond_144
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4, p0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3010
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v4, "relaunchActivityLocked"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3013
    :goto_155
    iput v1, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 3014
    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 3015
    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    .line 3016
    return-void
.end method

.method removeOrphanedStartingWindow(Z)V
    .registers 5
    .param p1, "behindFullscreenActivity"    # Z

    .line 2532
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    if-eqz p1, :cond_29

    .line 2533
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_21

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found orphaned starting window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    :cond_21
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    .line 2535
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    .line 2537
    :cond_29
    return-void
.end method

.method removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .registers 7
    .param p1, "from"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 1515
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_38

    .line 1516
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_38

    .line 1517
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityResult;

    .line 1518
    .local v1, "r":Lcom/android/server/am/ActivityResult;
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mFrom:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_1b

    .end local v1    # "r":Lcom/android/server/am/ActivityResult;
    goto :goto_35

    .line 1519
    .restart local v1    # "r":Lcom/android/server/am/ActivityResult;
    :cond_1b
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_22

    .line 1520
    if-eqz p2, :cond_2b

    .end local v1    # "r":Lcom/android/server/am/ActivityResult;
    goto :goto_35

    .line 1522
    .restart local v1    # "r":Lcom/android/server/am/ActivityResult;
    :cond_22
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .end local v1    # "r":Lcom/android/server/am/ActivityResult;
    goto :goto_35

    .line 1524
    .restart local v1    # "r":Lcom/android/server/am/ActivityResult;
    :cond_2b
    iget v2, v1, Lcom/android/server/am/ActivityResult;->mRequestCode:I

    if-eq v2, p3, :cond_30

    .end local v1    # "r":Lcom/android/server/am/ActivityResult;
    goto :goto_35

    .line 1526
    .restart local v1    # "r":Lcom/android/server/am/ActivityResult;
    :cond_30
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1516
    .end local v1    # "r":Lcom/android/server/am/ActivityResult;
    :goto_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1529
    .end local v0    # "i":I
    :cond_38
    return-void
.end method

.method removeUriPermissionsLocked()V
    .registers 2

    .line 1708
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v0, :cond_c

    .line 1709
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked()V

    .line 1710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 1712
    :cond_c
    return-void
.end method

.method removeWindowContainer()V
    .registers 3

    .line 1127
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-nez v0, :cond_5

    .line 1128
    return-void

    .line 1132
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1134
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowContainerController;->removeContainer(I)V

    .line 1135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    .line 1136
    return-void
.end method

.method reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V
    .registers 8
    .param p1, "newTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "position"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 1143
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1144
    .local v0, "prevTask":Lcom/android/server/am/TaskRecord;
    if-eq v0, p1, :cond_70

    .line 1152
    if-eqz v0, :cond_52

    if-eqz p1, :cond_52

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-ne v1, v2, :cond_13

    goto :goto_52

    .line 1153
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is in a different stack ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") than the parent of r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1159
    :cond_52
    :goto_52
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/AppWindowContainerController;->reparent(Lcom/android/server/wm/TaskWindowContainerController;I)V

    .line 1163
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1165
    .local v1, "prevStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eq v1, v2, :cond_68

    .line 1166
    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    .line 1169
    :cond_68
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;Z)Z

    .line 1171
    invoke-virtual {p1, p2, p0}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 1172
    return-void

    .line 1145
    .end local v1    # "prevStack":Lcom/android/server/am/ActivityStack;
    :cond_70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already the parent of r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reportFullyDrawnLocked(Z)V
    .registers 16
    .param p1, "restoredFromBundle"    # Z

    .line 2147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2148
    .local v0, "curTime":J
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    .line 2149
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityRecord;->reportLaunchTimeLocked(J)V

    .line 2151
    :cond_f
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchTimeTracker()Lcom/android/server/am/LaunchTimeTracker;

    move-result-object v2

    .line 2152
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v3

    .line 2151
    invoke-virtual {v2, v3}, Lcom/android/server/am/LaunchTimeTracker;->getEntry(I)Lcom/android/server/am/LaunchTimeTracker$Entry;

    move-result-object v2

    .line 2153
    .local v2, "entry":Lcom/android/server/am/LaunchTimeTracker$Entry;
    iget-wide v6, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_a1

    if-eqz v2, :cond_a1

    .line 2154
    iget-wide v6, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    sub-long v6, v0, v6

    .line 2155
    .local v6, "thisTime":J
    iget-wide v8, v2, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    cmp-long v3, v8, v4

    if-eqz v3, :cond_34

    .line 2156
    iget-wide v8, v2, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    sub-long v8, v0, v8

    goto :goto_35

    :cond_34
    move-wide v8, v6

    .line 2158
    .local v8, "totalTime":J
    :goto_35
    const-wide/16 v10, 0x40

    const-string v3, "drawing"

    const/4 v12, 0x0

    invoke-static {v10, v11, v3, v12}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2159
    const/16 v3, 0x755a

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2160
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    const/4 v11, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x2

    iget-object v13, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v13, v10, v11

    const/4 v11, 0x3

    .line 2161
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    .line 2159
    invoke-static {v3, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2162
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2163
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2164
    const-string v10, "Fully drawn "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2165
    iget-object v10, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    const-string v10, ": "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    invoke-static {v6, v7, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2168
    cmp-long v10, v6, v8

    if-eqz v10, :cond_95

    .line 2169
    const-string v10, " (total "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2170
    invoke-static {v8, v9, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2171
    const-string v10, ")"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2173
    :cond_95
    const-string v10, "ActivityManager"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    nop

    .line 2178
    iput-wide v4, v2, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    .line 2180
    .end local v6    # "thisTime":J
    .end local v8    # "totalTime":J
    :cond_a1
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransitionReportedDrawn(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2182
    iput-wide v4, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    .line 2183
    return-void
.end method

.method resumeKeyDispatchingLocked()V
    .registers 2

    .line 1725
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-eqz v0, :cond_10

    .line 1726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 1728
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-eqz v0, :cond_10

    .line 1729
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->resumeKeyDispatching()V

    .line 1732
    :cond_10
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3084
    const-string/jumbo v0, "id"

    iget-wide v1, p0, Lcom/android/server/am/ActivityRecord;->createTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3085
    const-string/jumbo v0, "launched_from_uid"

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3086
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 3087
    const-string/jumbo v0, "launched_from_package"

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3089
    :cond_25
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 3090
    const-string/jumbo v0, "resolved_type"

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3092
    :cond_31
    const-string v0, "component_specified"

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3093
    const-string/jumbo v0, "user_id"

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3095
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_51

    .line 3096
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3099
    :cond_51
    const-string/jumbo v0, "intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3100
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3101
    const-string/jumbo v0, "intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3103
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_7d

    .line 3104
    const-string/jumbo v0, "persistable_bundle"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3105
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3106
    const-string/jumbo v0, "persistable_bundle"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3108
    :cond_7d
    return-void
.end method

.method setDeferHidingClient(Z)V
    .registers 3
    .param p1, "deferHidingClient"    # Z

    .line 1739
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    if-ne v0, p1, :cond_5

    .line 1740
    return-void

    .line 1742
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    .line 1743
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_13

    .line 1746
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 1748
    :cond_13
    return-void
.end method

.method setDisablePreviewScreenshots(Z)V
    .registers 3
    .param p1, "disable"    # Z

    .line 2562
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowContainerController;->setDisablePreviewScreenshots(Z)V

    .line 2563
    return-void
.end method

.method setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V
    .registers 4
    .param p1, "config"    # Landroid/util/MergedConfiguration;

    .line 2578
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2579
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2578
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityRecord;->setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2580
    return-void
.end method

.method setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 2570
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 2571
    return-void
.end method

.method setProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1083
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1084
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 1085
    .local v0, "root":Lcom/android/server/am/ActivityRecord;
    :goto_e
    if-ne v0, p0, :cond_15

    .line 1086
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->setRootProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1088
    :cond_15
    return-void
.end method

.method setRequestedOrientation(I)V
    .registers 7
    .param p1, "requestedOrientation"    # I

    .line 2544
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    .line 2545
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2546
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v1

    .line 2548
    .local v1, "displayConfig":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2549
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    .line 2548
    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/android/server/wm/AppWindowContainerController;->setOrientation(IILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v2

    .line 2550
    .local v2, "config":Landroid/content/res/Configuration;
    if-eqz v2, :cond_29

    .line 2551
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 2552
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p0, v4, v0}, Lcom/android/server/am/ActivityManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZI)Z

    move-result v3

    if-nez v3, :cond_29

    .line 2554
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2557
    :cond_29
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityRequestedOrientationChanged(II)V

    .line 2559
    return-void
.end method

.method setShowWhenLocked(Z)V
    .registers 5
    .param p1, "showWhenLocked"    # Z

    .line 3202
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->mShowWhenLocked:Z

    .line 3203
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3205
    return-void
.end method

.method setSizeConfigurations([I[I[I)V
    .registers 4
    .param p1, "horizontalSizeConfiguration"    # [I
    .param p2, "verticalSizeConfigurations"    # [I
    .param p3, "smallestSizeConfigurations"    # [I

    .line 650
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->mHorizontalSizeConfigurations:[I

    .line 651
    iput-object p2, p0, Lcom/android/server/am/ActivityRecord;->mVerticalSizeConfigurations:[I

    .line 652
    iput-object p3, p0, Lcom/android/server/am/ActivityRecord;->mSmallestSizeConfigurations:[I

    .line 653
    return-void
.end method

.method setSleeping(Z)V
    .registers 3
    .param p1, "_sleeping"    # Z

    .line 2400
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(ZZ)V

    .line 2401
    return-void
.end method

.method setSleeping(ZZ)V
    .registers 7
    .param p1, "_sleeping"    # Z
    .param p2, "force"    # Z

    .line 2404
    if-nez p2, :cond_7

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    if-ne v0, p1, :cond_7

    .line 2405
    return-void

    .line 2407
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_4d

    .line 2409
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, p1}, Landroid/app/IApplicationThread;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 2410
    if-eqz p1, :cond_2d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2411
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2413
    :cond_2d
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2f} :catch_30

    .line 2416
    goto :goto_4d

    .line 2414
    :catch_30
    move-exception v0

    .line 2415
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when sleeping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2418
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4d
    :goto_4d
    return-void
.end method

.method setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V
    .registers 6
    .param p1, "state"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1775
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_36

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State movement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_36
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p1, v0, :cond_55

    .line 1780
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_54

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State unchanged from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :cond_54
    return-void

    .line 1784
    :cond_55
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1786
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1788
    .local v0, "parent":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_60

    .line 1789
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/am/TaskRecord;->onActivityStateChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1795
    :cond_60
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p1, v1, :cond_6f

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isSleeping()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 1796
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->notifyAppStopping()V

    .line 1798
    :cond_6f
    return-void
.end method

.method setTask(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 780
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Z)V

    .line 781
    return-void
.end method

.method setTask(Lcom/android/server/am/TaskRecord;Z)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reparenting"    # Z

    .line 790
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 791
    return-void

    .line 794
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 795
    .local v0, "oldStack":Lcom/android/server/am/ActivityStack;
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 799
    .local v1, "newStack":Lcom/android/server/am/ActivityStack;
    :goto_15
    if-eq v0, v1, :cond_23

    .line 800
    if-nez p2, :cond_1e

    if-eqz v0, :cond_1e

    .line 801
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    .line 804
    :cond_1e
    if-eqz v1, :cond_23

    .line 805
    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStack;->onActivityAddedToStack(Lcom/android/server/am/ActivityRecord;)V

    .line 809
    :cond_23
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 811
    if-nez p2, :cond_2a

    .line 812
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->onParentChanged()V

    .line 814
    :cond_2a
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 7
    .param p1, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2482
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    .line 2483
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .local v1, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_34

    .line 2484
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->createTime:J

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v2, v3, v0}, Lcom/android/server/am/ActivityRecord;->createImageFilename(JI)Ljava/lang/String;

    move-result-object v0

    .line 2485
    .local v0, "iconFilename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v3}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2487
    .local v2, "iconFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 2488
    .local v3, "iconFilePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/server/am/RecentTasks;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 2489
    invoke-virtual {p1, v3}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 2491
    .end local v0    # "iconFilename":Ljava/lang/String;
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .end local v2    # "iconFile":Ljava/io/File;
    .end local v3    # "iconFilePath":Ljava/lang/String;
    :cond_34
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 2492
    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .registers 4
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    .line 1239
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    .line 1240
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 1242
    :cond_f
    return-void
.end method

.method setTurnScreenOn(Z)V
    .registers 2
    .param p1, "turnScreenOn"    # Z

    .line 3220
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->mTurnScreenOn:Z

    .line 3221
    return-void
.end method

.method setVisibility(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 1753
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-eqz v0, :cond_b

    .line 1754
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/AppWindowContainerController;->setVisibility(ZZ)V

    .line 1757
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityMetricsLogger;->notifyVisibilityChanged(Lcom/android/server/am/ActivityRecord;)V

    .line 1758
    return-void
.end method

.method setVisible(Z)V
    .registers 4
    .param p1, "newVisible"    # Z

    .line 1762
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1765
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_10

    .line 1766
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v1, "setVisible"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 1769
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    .line 1770
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 1771
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 1772
    return-void
.end method

.method setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 3
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 2495
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 2497
    return-void
.end method

.method setWillCloseOrEnterPip(Z)V
    .registers 3
    .param p1, "willCloseOrEnterPip"    # Z

    .line 843
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowContainerController;->setWillCloseOrEnterPip(Z)V

    .line 844
    return-void
.end method

.method shouldBeVisibleIgnoringKeyguard(Z)Z
    .registers 4
    .param p1, "behindFullscreenActivity"    # Z

    .line 1853
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1854
    return v1

    .line 1857
    :cond_8
    if-eqz p1, :cond_10

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    goto :goto_11

    :cond_10
    :goto_10
    const/4 v1, 0x1

    :goto_11
    return v1
.end method

.method showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 5
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "taskSwitch"    # Z

    .line 2505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZZ)V

    .line 2506
    return-void
.end method

.method showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZZ)V
    .registers 25
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "taskSwitch"    # Z
    .param p4, "fromRecents"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2510
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-nez v2, :cond_9

    .line 2511
    return-void

    .line 2513
    :cond_9
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_e

    .line 2515
    return-void

    .line 2518
    :cond_e
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2519
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 2520
    .local v2, "compatInfo":Landroid/content/res/CompatibilityInfo;
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    .line 2522
    if-eqz v1, :cond_2e

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_2c
    move-object v13, v3

    goto :goto_30

    :cond_2e
    const/4 v3, 0x0

    goto :goto_2c

    :goto_30
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->isProcessRunning()Z

    move-result v16

    .line 2523
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->allowTaskSnapshot()Z

    move-result v17

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2524
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v3

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v7

    const/4 v15, 0x1

    if-lt v3, v7, :cond_58

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v3

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v7

    if-gt v3, v7, :cond_58

    .line 2520
    move/from16 v18, v15

    goto :goto_5b

    .line 2524
    :cond_58
    const/4 v3, 0x0

    .line 2520
    move/from16 v18, v3

    :goto_5b
    move-object v7, v2

    move/from16 v14, p2

    move v3, v15

    move/from16 v15, p3

    move/from16 v19, p4

    invoke-virtual/range {v4 .. v19}, Lcom/android/server/wm/AppWindowContainerController;->addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZZ)Z

    move-result v4

    .line 2526
    .local v4, "shown":Z
    if-eqz v4, :cond_6b

    .line 2527
    iput v3, v0, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    .line 2529
    :cond_6b
    return-void
.end method

.method public startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "configChanges"    # I

    .line 2124
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2125
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/AppWindowContainerController;->startFreezingScreen(I)V

    .line 2127
    :cond_b
    return-void
.end method

.method startLaunchTickingLocked()V
    .registers 5

    .line 2080
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_5

    .line 2081
    return-void

    .line 2083
    :cond_5
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    .line 2084
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    .line 2085
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    .line 2087
    :cond_16
    return-void
.end method

.method public stopFreezingScreenLocked(Z)V
    .registers 3
    .param p1, "force"    # Z

    .line 2130
    if-nez p1, :cond_6

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz v0, :cond_12

    .line 2131
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 2139
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-eqz v0, :cond_12

    .line 2140
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowContainerController;->stopFreezingScreen(Z)V

    .line 2144
    :cond_12
    return-void
.end method

.method supportsFreeform()Z
    .registers 2

    .line 1347
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->supportsResizeableMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method supportsPictureInPicture()Z
    .registers 2

    .line 1326
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1327
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1326
    :goto_17
    return v0
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 2

    .line 1338
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_14

    .line 1339
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->supportsResizeableMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1338
    :goto_15
    return v0
.end method

.method takeFromHistory()V
    .registers 2

    .line 1273
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_15

    .line 1274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 1275
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_12

    .line 1276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1278
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 1280
    :cond_15
    return-void
.end method

.method takeOptionsLocked()Landroid/app/ActivityOptions;
    .registers 3

    .line 1702
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1703
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1704
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3250
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 3251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v1, :cond_19

    const/4 v1, -0x1

    goto :goto_1d

    :cond_19
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3252
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_27

    const-string v1, " f}"

    goto :goto_2a

    :cond_27
    const-string/jumbo v1, "}"

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3251
    return-object v0

    .line 3254
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3255
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ActivityRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3256
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3257
    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3258
    iget v1, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3259
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3260
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    .line 3262
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 3
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 603
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 604
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object p1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 605
    return-void
.end method

.method updateMultiWindowMode()V
    .registers 3

    .line 693
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_17

    goto :goto_36

    .line 697
    :cond_17
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 699
    return-void

    .line 703
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->inMultiWindowMode()Z

    move-result v0

    .line 704
    .local v0, "inMultiWindowMode":Z
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    if-eq v0, v1, :cond_35

    .line 705
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 706
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityRecord;->scheduleMultiWindowModeChanged(Landroid/content/res/Configuration;)V

    .line 708
    :cond_35
    return-void

    .line 694
    .end local v0    # "inMultiWindowMode":Z
    :cond_36
    :goto_36
    return-void
.end method

.method updateOptionsLocked(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 1579
    if-eqz p1, :cond_d

    .line 1580
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    .line 1581
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 1583
    :cond_b
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1585
    :cond_d
    return-void
.end method

.method updatePictureInPictureMode(Landroid/graphics/Rect;Z)V
    .registers 6
    .param p1, "targetStackBounds"    # Landroid/graphics/Rect;
    .param p2, "forceUpdate"    # Z

    .line 721
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_17

    goto :goto_3a

    .line 725
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 726
    .local v0, "inPictureInPictureMode":Z
    :goto_22
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    if-ne v0, v1, :cond_28

    if-eqz p2, :cond_39

    .line 733
    :cond_28
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 734
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 735
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/am/TaskRecord;->computeNewOverrideConfigurationForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 737
    .local v1, "newConfig":Landroid/content/res/Configuration;
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityRecord;->schedulePictureInPictureModeChanged(Landroid/content/res/Configuration;)V

    .line 738
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityRecord;->scheduleMultiWindowModeChanged(Landroid/content/res/Configuration;)V

    .line 740
    .end local v1    # "newConfig":Landroid/content/res/Configuration;
    :cond_39
    return-void

    .line 722
    .end local v0    # "inPictureInPictureMode":Z
    :cond_3a
    :goto_3a
    return-void
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 3266
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3267
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3268
    iget v2, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3269
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3270
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3271
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 3274
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3275
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    const/4 v4, 0x0

    invoke-super {p0, p1, v2, v3, v4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 3276
    const-wide v2, 0x10b00000002L

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/am/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3277
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack$ActivityState;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3278
    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3279
    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3280
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_47

    .line 3281
    const-wide v2, 0x10500000006L

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3283
    :cond_47
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3284
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3285
    return-void
.end method
