.class Lcom/android/server/am/TaskRecord;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "TaskRecord.java"

# interfaces
.implements Lcom/android/server/wm/TaskWindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskRecord$TaskRecordFactory;,
        Lcom/android/server/am/TaskRecord$TaskActivitiesReport;,
        Lcom/android/server/am/TaskRecord$ReparentMoveStackMode;
    }
.end annotation


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PERSIST_TASK_VERSION:Ljava/lang/String; = "persist_task_version"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field private static final ATTR_SUPPORTS_PICTURE_IN_PICTURE:Ljava/lang/String; = "supports_picture_in_picture"

.field private static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field private static final INVALID_MIN_SIZE:I = -0x1

.field static final INVALID_TASK_ID:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field private static final PERSIST_TASK_VERSION:I = 0x1

.field static final REPARENT_KEEP_STACK_AT_FRONT:I = 0x1

.field static final REPARENT_LEAVE_STACK_IN_PLACE:I = 0x2

.field static final REPARENT_MOVE_STACK_TO_FRONT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static sTaskRecordFactory:Lcom/android/server/am/TaskRecord$TaskRecordFactory;


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field effectiveUid:I

.field hasBeenVisible:Z

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field mLastTimeMoved:J

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskUid:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/am/TaskRecord;

.field mNextAffiliateTaskId:I

.field mPrevAffiliate:Lcom/android/server/am/TaskRecord;

.field mPrevAffiliateTaskId:I

.field mResizeMode:I

.field private mReuseTask:Z

.field private mRootProcess:Lcom/android/server/am/ProcessRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStack:Lcom/android/server/am/ActivityStack;

.field private mSupportsPictureInPicture:Z

.field private mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;

.field mUserSetupComplete:Z

.field private mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

.field maxRecents:I

.field numFullscreen:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field final taskId:I

.field userId:I

.field final voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)V
    .registers 49
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_affinityIntent"    # Landroid/content/Intent;
    .param p5, "_affinity"    # Ljava/lang/String;
    .param p6, "_rootAffinity"    # Ljava/lang/String;
    .param p7, "_realActivity"    # Landroid/content/ComponentName;
    .param p8, "_origActivity"    # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"    # Z
    .param p10, "_autoRemoveRecents"    # Z
    .param p11, "_askedCompatMode"    # Z
    .param p12, "_userId"    # I
    .param p13, "_effectiveUid"    # I
    .param p14, "_lastDescription"    # Ljava/lang/String;
    .param p16, "lastTimeMoved"    # J
    .param p18, "neverRelinquishIdentity"    # Z
    .param p19, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p20, "taskAffiliation"    # I
    .param p21, "prevTaskId"    # I
    .param p22, "nextTaskId"    # I
    .param p23, "taskAffiliationColor"    # I
    .param p24, "callingUid"    # I
    .param p25, "callingPackage"    # Ljava/lang/String;
    .param p26, "resizeMode"    # I
    .param p27, "supportsPictureInPicture"    # Z
    .param p28, "_realActivitySuspended"    # Z
    .param p29, "userSetupComplete"    # Z
    .param p30, "minWidth"    # I
    .param p31, "minHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;JZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZII)V"
        }
    .end annotation

    .local p15, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 386
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 249
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 251
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 255
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v4}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 269
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 278
    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 282
    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 289
    iput v3, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 291
    iput v3, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 299
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 300
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 301
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 306
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 314
    iput v3, v0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 317
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 387
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 388
    iput v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 389
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 390
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 391
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 392
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 393
    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 394
    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 395
    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 396
    move/from16 v9, p28

    iput-boolean v9, v0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    .line 397
    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 398
    move/from16 v11, p9

    iput-boolean v11, v0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 399
    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 400
    move/from16 v2, p10

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    .line 401
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    .line 402
    move/from16 v13, p12

    iput v13, v0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 403
    move/from16 v14, p29

    iput-boolean v14, v0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    .line 404
    move/from16 v15, p13

    iput v15, v0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 406
    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 407
    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 408
    move-wide/from16 v2, p16

    iput-wide v2, v0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 409
    move/from16 v2, p18

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 410
    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 411
    move/from16 v2, p20

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 412
    move/from16 v2, p23

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 413
    move/from16 v2, p21

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 414
    move/from16 v2, p22

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 415
    move/from16 v2, p24

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 416
    move-object/from16 v2, p25

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 417
    move/from16 v2, p26

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 420
    iget v2, v0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v2

    if-nez v2, :cond_f3

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_f3

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 422
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 423
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_f0

    .line 424
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickReply: force init resizible for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_f0
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 429
    :cond_f3
    move/from16 v2, p27

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    .line 430
    move/from16 v3, p30

    iput v3, v0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 431
    move/from16 v4, p31

    iput v4, v0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 432
    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 433
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V
    .registers 11
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 349
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 249
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 251
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 255
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 269
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 278
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 282
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 289
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 291
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 299
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 300
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 301
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 306
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 314
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 317
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 350
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 351
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 352
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 354
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 355
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 356
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 357
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 359
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 360
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 361
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 362
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 364
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 366
    iget v1, p3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 367
    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    .line 366
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    .line 369
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 370
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 371
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 372
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 12
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 326
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 249
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 251
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 255
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 269
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 278
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 282
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 289
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 291
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 299
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 300
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 301
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 306
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 314
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 317
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 327
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 328
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 329
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 331
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 332
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 333
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 334
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 336
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 337
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 338
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 339
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 341
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 342
    return-void
.end method

.method private adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1713
    if-nez p1, :cond_3

    .line 1714
    return-void

    .line 1716
    :cond_3
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 1717
    .local v0, "minWidth":I
    iget v1, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 1721
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1722
    const/4 v2, -0x1

    if-ne v0, v2, :cond_16

    .line 1723
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v0, v3, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 1725
    :cond_16
    if-ne v1, v2, :cond_1e

    .line 1726
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 1729
    :cond_1e
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v2, :cond_28

    move v2, v4

    goto :goto_29

    :cond_28
    move v2, v3

    .line 1730
    .local v2, "adjustWidth":Z
    :goto_29
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_31

    move v3, v4

    nop

    .line 1731
    .local v3, "adjustHeight":Z
    :cond_31
    if-nez v2, :cond_36

    if-nez v3, :cond_36

    .line 1732
    return-void

    .line 1735
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1736
    .local v4, "configBounds":Landroid/graphics/Rect;
    if-eqz v2, :cond_53

    .line 1737
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4e

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-ne v5, v6, :cond_4e

    .line 1738
    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    iput v5, p1, Landroid/graphics/Rect;->left:I

    goto :goto_53

    .line 1742
    :cond_4e
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 1745
    :cond_53
    :goto_53
    if-eqz v3, :cond_6c

    .line 1746
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_67

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    if-ne v5, v6, :cond_67

    .line 1747
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    iput v5, p1, Landroid/graphics/Rect;->top:I

    goto :goto_6c

    .line 1751
    :cond_67
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 1754
    :cond_6c
    :goto_6c
    return-void
.end method

.method private canResizeToBounds(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1575
    const/4 v0, 0x1

    if-eqz p1, :cond_4d

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4d

    .line 1579
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_17

    move v1, v0

    goto :goto_18

    :cond_17
    move v1, v3

    .line 1580
    .local v1, "landscape":Z
    :goto_18
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1581
    .local v2, "configBounds":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3b

    .line 1582
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    .line 1583
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_33

    move v4, v0

    goto :goto_34

    :cond_33
    move v4, v3

    :goto_34
    if-ne v1, v4, :cond_37

    goto :goto_39

    .line 1582
    :cond_37
    move v0, v3

    goto :goto_3a

    .line 1583
    :cond_39
    :goto_39
    nop

    .line 1582
    :goto_3a
    return v0

    .line 1585
    :cond_3b
    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_42

    if-nez v1, :cond_4a

    :cond_42
    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4c

    if-eqz v1, :cond_4a

    goto :goto_4c

    :cond_4a
    move v0, v3

    nop

    :cond_4c
    :goto_4c
    return v0

    .line 1577
    .end local v1    # "landscape":Z
    .end local v2    # "configBounds":Landroid/graphics/Rect;
    :cond_4d
    :goto_4d
    return v0
.end method

.method private closeRecentsChain()V
    .registers 3

    .line 1017
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_b

    .line 1018
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1020
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_16

    .line 1021
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1023
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1024
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1025
    return-void
.end method

.method static create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/am/TaskRecord;
    .registers 11
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2268
    invoke-static {}, Lcom/android/server/am/TaskRecord;->getTaskRecordFactory()Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method static create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;
    .registers 13
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 2262
    invoke-static {}, Lcom/android/server/am/TaskRecord;->getTaskRecordFactory()Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method static getTaskRecordFactory()Lcom/android/server/am/TaskRecord$TaskRecordFactory;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2249
    sget-object v0, Lcom/android/server/am/TaskRecord;->sTaskRecordFactory:Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    if-nez v0, :cond_c

    .line 2250
    new-instance v0, Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    invoke-direct {v0}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;-><init>()V

    invoke-static {v0}, Lcom/android/server/am/TaskRecord;->setTaskRecordFactory(Lcom/android/server/am/TaskRecord$TaskRecordFactory;)V

    .line 2252
    :cond_c
    sget-object v0, Lcom/android/server/am/TaskRecord;->sTaskRecordFactory:Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    return-object v0
.end method

.method private isResizeable(Z)Z
    .registers 3
    .param p1, "checkSupportsPip"    # Z

    .line 1537
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_17

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz p1, :cond_15

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_15

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

.method private static replaceWindowsOnTaskMove(II)Z
    .registers 3
    .param p0, "sourceWindowingMode"    # I
    .param p1, "targetWindowingMode"    # I

    .line 785
    const/4 v0, 0x5

    if-eq p0, v0, :cond_8

    if-ne p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .registers 3
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2273
    invoke-static {}, Lcom/android/server/am/TaskRecord;->getTaskRecordFactory()Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 10
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .line 821
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    .line 822
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    goto :goto_17

    .line 824
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-eqz v0, :cond_17

    .line 825
    return-void

    .line 828
    :cond_17
    :goto_17
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 829
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_23

    .line 833
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 835
    :cond_23
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 838
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v3, :cond_7b

    .line 839
    if-eqz p1, :cond_4a

    .line 843
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_3e

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 844
    :cond_3e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v3

    .line 845
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 846
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 849
    :cond_4a
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_6c

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting Intent of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_6c
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 851
    if-eqz p1, :cond_75

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_76

    :cond_75
    move-object v3, v0

    :goto_76
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 852
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_d0

    .line 854
    :cond_7b
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    .local v3, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_c1

    .line 857
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 858
    .local v4, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 859
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 860
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 861
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_b6

    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting Intent of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to target "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_b6
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 864
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 865
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 866
    .end local v4    # "targetIntent":Landroid/content/Intent;
    goto :goto_d0

    .line 867
    :cond_c1
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 868
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 869
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 873
    .end local v3    # "targetComponent":Landroid/content/ComponentName;
    :goto_d0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_d6

    move v0, v2

    goto :goto_dc

    :cond_d6
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 874
    .local v0, "intentFlags":I
    :goto_dc
    const/high16 v3, 0x200000

    and-int/2addr v3, v0

    if-eqz v3, :cond_e3

    .line 877
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 879
    :cond_e3
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 880
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "user_setup_complete"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_102

    move v3, v1

    goto :goto_103

    :cond_102
    move v3, v2

    :goto_103
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    .line 882
    iget v3, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_10e

    .line 884
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_122

    .line 885
    :cond_10e
    const v3, 0x82000

    and-int/2addr v3, v0

    const/high16 v4, 0x80000

    if-ne v3, v4, :cond_120

    .line 890
    iget v3, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v3, :cond_11d

    .line 891
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_122

    .line 893
    :cond_11d
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_122

    .line 896
    :cond_120
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    .line 898
    :goto_122
    iget v1, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 901
    iget v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v1

    if-nez v1, :cond_15d

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_15d

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 903
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 904
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_15a

    .line 905
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickReply: setIntent() force resizible for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_15a
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 910
    :cond_15d
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    .line 911
    return-void
.end method

.method private setLockTaskAuth(Lcom/android/server/am/ActivityRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1506
    const/4 v0, 0x1

    if-nez p1, :cond_6

    .line 1507
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 1508
    return-void

    .line 1511
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 1512
    .local v1, "pkg":Ljava/lang/String;
    :goto_12
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    .line 1513
    .local v2, "lockTaskController":Lcom/android/server/am/LockTaskController;
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->lockTaskLaunchMode:I

    packed-switch v3, :pswitch_data_6a

    goto :goto_40

    .line 1528
    :pswitch_1e
    iget v3, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1529
    const/4 v0, 0x2

    nop

    :cond_28
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_40

    .line 1524
    :pswitch_2b
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 1525
    goto :goto_40

    .line 1520
    :pswitch_2f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 1521
    goto :goto_40

    .line 1515
    :pswitch_33
    iget v3, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1516
    const/4 v0, 0x3

    nop

    :cond_3d
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 1517
    nop

    .line 1532
    :goto_40
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v0, :cond_67

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLockTaskAuth: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mLockTaskAuth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1532
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :cond_67
    return-void

    nop

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_1e
    .end packed-switch
.end method

.method private setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 915
    if-eqz p1, :cond_13

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_13

    .line 916
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 917
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    goto :goto_18

    .line 919
    :cond_13
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 920
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 922
    :goto_18
    return-void
.end method

.method static setTaskRecordFactory(Lcom/android/server/am/TaskRecord$TaskRecordFactory;)V
    .registers 1
    .param p0, "factory"    # Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    .line 2256
    sput-object p0, Lcom/android/server/am/TaskRecord;->sTaskRecordFactory:Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    .line 2257
    return-void
.end method


# virtual methods
.method addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1228
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 1229
    return-void
.end method

.method addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1250
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1251
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_28

    if-ne v0, p0, :cond_9

    goto :goto_28

    .line 1252
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not add r= to task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " current parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1256
    :cond_28
    :goto_28
    invoke-virtual {p2, p0}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 1259
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3d

    iget-boolean v1, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v1, :cond_3d

    .line 1261
    iget v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 1264
    :cond_3d
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 1265
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v1

    if-nez v1, :cond_4e

    .line 1270
    invoke-virtual {p2, v2}, Lcom/android/server/am/ActivityRecord;->setActivityType(I)V

    .line 1272
    :cond_4e
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setActivityType(I)V

    .line 1273
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 1274
    iget v1, p2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 1275
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 1277
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1278
    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v2

    .line 1277
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    goto :goto_7d

    .line 1281
    :cond_76
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/server/am/ActivityRecord;->setActivityType(I)V

    .line 1284
    :goto_7d
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1286
    .local v1, "size":I
    if-ne p1, v1, :cond_97

    if-lez v1, :cond_97

    .line 1287
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1288
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v3, :cond_97

    .line 1291
    add-int/lit8 p1, p1, -0x1

    .line 1295
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_97
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1296
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1298
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 1299
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 1300
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1304
    :cond_af
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    .line 1305
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v2

    .line 1306
    .local v2, "appController":Lcom/android/server/wm/AppWindowContainerController;
    if-eqz v2, :cond_bd

    .line 1309
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/wm/TaskWindowContainerController;->positionChildAt(Lcom/android/server/wm/AppWindowContainerController;I)V

    .line 1314
    :cond_bd
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->updateUIDsPresentOnDisplay()V

    .line 1315
    return-void
.end method

.method addActivityToTop(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1232
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 1233
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .registers 6
    .param p1, "taskSwitch"    # Z

    .line 1944
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "activityNdx":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 1945
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1946
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_1b

    .line 1947
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1944
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1950
    .end local v0    # "activityNdx":I
    :cond_1e
    return-void
.end method

.method autoRemoveFromRecents()Z
    .registers 2

    .line 1380
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    if-nez v0, :cond_11

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

.method canBeLaunchedOnDisplay(I)Z
    .registers 9
    .param p1, "displayId"    # I

    .line 1563
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 1564
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskRecord;->isResizeable(Z)Z

    move-result v3

    .line 1563
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IZIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method cancelWindowTransition()V
    .registers 2

    .line 790
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskWindowContainerController;->cancelWindowTransition()V

    .line 791
    return-void
.end method

.method clearAllPendingOptions()V
    .registers 4

    .line 1969
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_13

    .line 1970
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->getChildAt(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked(Z)V

    .line 1969
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1972
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method clearRootProcess()V
    .registers 2

    .line 1962
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_e

    .line 1963
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->recentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1964
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    .line 1966
    :cond_e
    return-void
.end method

.method computeNewOverrideConfigurationForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;
    .registers 11
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;

    .line 1763
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1764
    .local v0, "newOverrideConfig":Landroid/content/res/Configuration;
    if-eqz p1, :cond_3a

    .line 1765
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1766
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1767
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/server/am/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V

    .line 1768
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_26

    move v6, v5

    goto :goto_27

    :cond_26
    move v6, v4

    :goto_27
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_31

    move v7, v5

    goto :goto_32

    :cond_31
    move v7, v4

    :goto_32
    move-object v1, p0

    move-object v2, v0

    move-object v4, p2

    move v5, v6

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/TaskRecord;->computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 1772
    :cond_3a
    return-object v0
.end method

.method computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .registers 23
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "insetBounds"    # Landroid/graphics/Rect;
    .param p4, "overrideWidth"    # Z
    .param p5, "overrideHeight"    # Z

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 1856
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1857
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1859
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->unset()V

    .line 1860
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 1862
    .local v14, "parentConfig":Landroid/content/res/Configuration;
    iget v1, v14, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    const v2, 0x3bcccccd    # 0.00625f

    mul-float v15, v1, v2

    .line 1864
    .local v15, "density":F
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_75

    .line 1865
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v16

    .line 1866
    .local v16, "stackController":Lcom/android/server/wm/StackWindowController;
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 1868
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v11

    .line 1866
    move-object/from16 v1, v16

    move-object v2, v13

    move-object/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, v15

    move-object v9, v12

    move-object v10, v14

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/StackWindowController;->adjustConfigurationForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZFLandroid/content/res/Configuration;Landroid/content/res/Configuration;I)V

    .line 1869
    .end local v16    # "stackController":Lcom/android/server/wm/StackWindowController;
    nop

    .line 1873
    iget v1, v12, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v12, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v1, v2, :cond_4d

    .line 1874
    const/4 v1, 0x1

    goto :goto_4e

    .line 1875
    :cond_4d
    const/4 v1, 0x2

    :goto_4e
    iput v1, v12, Landroid/content/res/Configuration;->orientation:I

    .line 1880
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v15

    float-to-int v1, v1

    .line 1881
    .local v1, "compatScreenWidthDp":I
    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v15

    float-to-int v2, v2

    .line 1884
    .local v2, "compatScreenHeightDp":I
    const/16 v3, 0x24

    .line 1885
    .local v3, "sl":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1886
    .local v4, "longSize":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1887
    .local v5, "shortSize":I
    const/16 v6, 0x24

    invoke-static {v6, v4, v5}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v6

    iput v6, v12, Landroid/content/res/Configuration;->screenLayout:I

    .line 1888
    return-void

    .line 1870
    .end local v1    # "compatScreenWidthDp":I
    .end local v2    # "compatScreenHeightDp":I
    .end local v3    # "sl":I
    .end local v4    # "longSize":I
    .end local v5    # "shortSize":I
    :cond_75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected stack when calculating override config"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method createWindowContainer(ZZ)V
    .registers 16
    .param p1, "onTop"    # Z
    .param p2, "showForAllUsers"    # Z

    .line 440
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-nez v0, :cond_28

    .line 445
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 446
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v12, Lcom/android/server/wm/TaskWindowContainerController;

    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 447
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    iget v7, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    iget-boolean v8, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    iget-object v11, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object v1, v12

    move-object v3, p0

    move-object v6, v0

    move v9, p1

    move v10, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/TaskWindowContainerController;-><init>(ILcom/android/server/wm/TaskWindowContainerListener;Lcom/android/server/wm/StackWindowController;ILandroid/graphics/Rect;IZZZLandroid/app/ActivityManager$TaskDescription;)V

    .line 446
    invoke-virtual {p0, v12}, Lcom/android/server/am/TaskRecord;->setWindowContainerController(Lcom/android/server/wm/TaskWindowContainerController;)V

    .line 450
    return-void

    .line 441
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already created for task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1975
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1976
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1977
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1978
    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1979
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1980
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_68

    .line 1981
    :cond_3e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1982
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_5e

    .line 1985
    :cond_5a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_68

    .line 1983
    :cond_5e
    :goto_5e
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1988
    :cond_68
    :goto_68
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_97

    .line 1989
    :cond_70
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1990
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1991
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1992
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1994
    :cond_97
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_c1

    .line 1995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1996
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1997
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 1998
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1999
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2001
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_c1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_e6

    .line 2002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2003
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 2005
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2006
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2008
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_e6
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_fc

    .line 2009
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2010
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2012
    :cond_fc
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_112

    .line 2013
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2014
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2016
    :cond_112
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_124

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v0, :cond_124

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_124

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-eqz v0, :cond_151

    .line 2017
    :cond_124
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2018
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2019
    const-string v0, " numFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2020
    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2022
    :cond_151
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_162

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_162

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-nez v0, :cond_162

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_190

    .line 2024
    :cond_162
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2025
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2026
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2027
    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2029
    :cond_190
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, v1, :cond_1a7

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a7

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_1a7

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-ne v0, v1, :cond_1a7

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_207

    .line 2032
    :cond_1a7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2033
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2034
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2035
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_1ce

    .line 2036
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1db

    .line 2038
    :cond_1ce
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2040
    :goto_1db
    const-string v0, ") nextAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2041
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2042
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_1f5

    .line 2043
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_202

    .line 2045
    :cond_1f5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2047
    :goto_202
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2049
    :cond_207
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2050
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v0, :cond_220

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_220

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-nez v0, :cond_241

    .line 2051
    :cond_220
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2052
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2053
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2055
    :cond_241
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_253

    .line 2056
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2058
    :cond_253
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_265

    .line 2059
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2061
    :cond_265
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "stackId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "hasBeenVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mResizeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportsPictureInPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isResizeable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " lastActiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (inactive for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2068
    return-void
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1601
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1602
    .local v0, "realActivity":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "activityNdx":I
    :goto_a
    if-ltz v1, :cond_25

    .line 1603
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1604
    .local v2, "candidate":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_19

    .line 1605
    goto :goto_22

    .line 1607
    :cond_19
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1608
    return-object v2

    .line 1602
    .end local v2    # "candidate":Lcom/android/server/am/ActivityRecord;
    :cond_22
    :goto_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1611
    .end local v1    # "activityNdx":I
    :cond_25
    const/4 v1, 0x0

    return-object v1
.end method

.method findEffectiveRootIndex()I
    .registers 6

    .line 1688
    const/4 v0, 0x0

    .line 1689
    .local v0, "effectiveNdx":I
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1690
    .local v1, "topActivityNdx":I
    const/4 v2, 0x0

    .local v2, "activityNdx":I
    :goto_a
    if-gt v2, v1, :cond_26

    .line 1691
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1692
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_19

    .line 1693
    goto :goto_23

    .line 1695
    :cond_19
    move v0, v2

    .line 1696
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_23

    .line 1697
    goto :goto_26

    .line 1690
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_23
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1700
    .end local v2    # "activityNdx":I
    :cond_26
    :goto_26
    return v0
.end method

.method public getActivityType()I
    .registers 4

    .line 1238
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 1239
    .local v0, "applicationType":I
    if-nez v0, :cond_1d

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_1d

    .line 1242
    :cond_f
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v1

    return v1

    .line 1240
    :cond_1d
    :goto_1d
    return v0
.end method

.method getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 1118
    .local p1, "outActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_2a

    .line 1119
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "activityNdx":I
    :goto_c
    if-ltz v0, :cond_2a

    .line 1120
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1121
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_27

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v2, :cond_27

    .line 1122
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1126
    .end local v0    # "activityNdx":I
    :cond_2a
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .registers 2

    .line 1065
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    :goto_9
    return-object v0
.end method

.method protected getChildAt(I)Lcom/android/server/am/ActivityRecord;
    .registers 3
    .param p1, "index"    # I

    .line 1001
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->getChildAt(I)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .registers 2

    .line 996
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getInactiveDuration()J
    .registers 5

    .line 808
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .registers 4

    .line 1928
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1929
    return-object v1

    .line 1932
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    .line 1933
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x1

    if-eq v0, v2, :cond_31

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1d

    .line 1935
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_31

    .line 1937
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1938
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 1940
    :cond_2e
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1

    .line 1936
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    nop

    :cond_3e
    return-object v1
.end method

.method getNumRunningActivities(Lcom/android/server/am/TaskRecord$TaskActivitiesReport;)V
    .registers 6
    .param p1, "reportOut"    # Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    .line 1147
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->reset()V

    .line 1148
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_60

    .line 1149
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1150
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1a

    .line 1151
    goto :goto_5d

    .line 1154
    :cond_1a
    iput-object v1, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/am/ActivityRecord;

    .line 1159
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v2, :cond_34

    iget-object v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->topFullscreen:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_34

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v2, :cond_34

    const-string v2, "com.oneplus.applocker"

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1161
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 1162
    iput-object v1, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->topFullscreen:Lcom/android/server/am/ActivityRecord;

    .line 1166
    :cond_34
    iget v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numActivities:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numActivities:I

    .line 1168
    iget-object v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_48

    iget-object v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1169
    :cond_48
    iput-object v1, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    .line 1172
    const/4 v2, 0x0

    iput v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numRunning:I

    .line 1174
    :cond_4d
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_5d

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_5d

    .line 1176
    iget v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numRunning:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numRunning:I

    .line 1148
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5d
    :goto_5d
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1179
    .end local v0    # "i":I
    :cond_60
    return-void
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 1006
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getRootActivity()Lcom/android/server/am/ActivityRecord;
    .registers 4

    .line 1070
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 1071
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1072
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_19

    .line 1073
    nop

    .line 1070
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1075
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_19
    return-object v1

    .line 1077
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method getSnapshot(Z)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 5
    .param p1, "reducedResolution"    # Z

    .line 800
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshot(IIZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
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

    .line 953
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getStackId()I
    .registers 2

    .line 991
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .line 1081
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->getTopActivity(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopActivity(Z)Lcom/android/server/am/ActivityRecord;
    .registers 5
    .param p1, "includeOverlays"    # Z

    .line 1085
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_21

    .line 1086
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1087
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1e

    if-nez p1, :cond_1d

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_1d

    .line 1088
    goto :goto_1e

    .line 1090
    :cond_1d
    return-object v1

    .line 1085
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1092
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowContainerBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 587
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->getBounds(Landroid/graphics/Rect;)V

    .line 588
    return-void
.end method

.method getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;
    .registers 2

    .line 436
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    return-object v0
.end method

.method isClearingToReuseTask()Z
    .registers 2

    .line 1593
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    return v0
.end method

.method isResizeable()Z
    .registers 2

    .line 1542
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskRecord;->isResizeable(Z)Z

    move-result v0

    return v0
.end method

.method isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 929
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 933
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 934
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method isVisible()Z
    .registers 5

    .line 1108
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 1109
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1110
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_17

    .line 1111
    return v1

    .line 1108
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1114
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .registers 3

    .line 1491
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_2a

    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1496
    :pswitch_1a
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    .line 1495
    :pswitch_1d
    const-string v0, "LOCK_TASK_AUTH_WHITELISTED"

    return-object v0

    .line 1494
    :pswitch_20
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    .line 1493
    :pswitch_23
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    .line 1492
    :pswitch_26
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "newTop"    # Lcom/android/server/am/ActivityRecord;

    .line 1213
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_27

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing and adding activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to stack at top callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    .line 1215
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1213
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_27
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1218
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskWindowContainerController;->positionChildAtTop(Lcom/android/server/wm/AppWindowContainerController;)V

    .line 1222
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 1224
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 1225
    return-void
.end method

.method okToShowLocked()Z
    .registers 3

    .line 1184
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1185
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 1184
    :goto_16
    return v0
.end method

.method onActivityStateChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "state"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1833
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1835
    .local v0, "parent":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_9

    .line 1836
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->onActivityStateChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1838
    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 1842
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inMultiWindowMode()Z

    move-result v0

    .line 1843
    .local v0, "wasInMultiWindowMode":Z
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1844
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inMultiWindowMode()Z

    move-result v1

    if-eq v0, v1, :cond_14

    .line 1845
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/am/TaskRecord;)V

    .line 1848
    :cond_14
    return-void
.end method

.method protected onParentChanged()V
    .registers 2

    .line 1011
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged()V

    .line 1012
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateUIDsPresentOnDisplay()V

    .line 1013
    return-void
.end method

.method public onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V
    .registers 4
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 479
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 480
    return-void
.end method

.method onlyHasTaskOverlayActivities(Z)Z
    .registers 8
    .param p1, "excludeFinishing"    # Z

    .line 1362
    const/4 v0, 0x0

    .line 1363
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    const/4 v3, 0x0

    if-ltz v1, :cond_25

    .line 1364
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1365
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p1, :cond_1b

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1b

    .line 1366
    goto :goto_22

    .line 1368
    :cond_1b
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-nez v5, :cond_20

    .line 1369
    return v3

    .line 1371
    :cond_20
    add-int/lit8 v0, v0, 0x1

    .line 1363
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1373
    .end local v1    # "i":I
    :cond_25
    if-lez v0, :cond_28

    goto :goto_29

    :cond_28
    move v2, v3

    :goto_29
    return v2
.end method

.method final performClearTaskAtIndexLocked(IZLjava/lang/String;)V
    .registers 13
    .param p1, "activityNdx"    # I
    .param p2, "pauseImmediately"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 1389
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1390
    .local v0, "numActivities":I
    :goto_6
    if-ge p1, v0, :cond_3b

    .line 1391
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1392
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_15

    .line 1393
    goto :goto_38

    .line 1395
    :cond_15
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_26

    .line 1397
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 1398
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1399
    add-int/lit8 p1, p1, -0x1

    .line 1400
    add-int/lit8 v0, v0, -0x1

    goto :goto_38

    .line 1401
    :cond_26
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    move-object v6, p3

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1403
    add-int/lit8 p1, p1, -0x1

    .line 1404
    add-int/lit8 v0, v0, -0x1

    .line 1390
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_38
    :goto_38
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 1407
    :cond_3b
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .registers 5
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    .line 1419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 1420
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1421
    .local v0, "result":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 1422
    return-object v0
.end method

.method final performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .registers 15
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    .line 1437
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1438
    .local v0, "numActivities":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "activityNdx":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v1, :cond_7c

    .line 1439
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1440
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_18

    .line 1441
    goto :goto_79

    .line 1443
    :cond_18
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 1445
    move-object v4, v3

    .line 1447
    .local v4, "ret":Lcom/android/server/am/ActivityRecord;
    :goto_23
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_55

    .line 1448
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1449
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_35

    .line 1450
    goto :goto_54

    .line 1452
    :cond_35
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v5

    .line 1453
    .local v5, "opts":Landroid/app/ActivityOptions;
    if-eqz v5, :cond_3e

    .line 1454
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1456
    :cond_3e
    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_54

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "clear-task-stack"

    const/4 v11, 0x0

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 1458
    add-int/lit8 v1, v1, -0x1

    .line 1459
    add-int/lit8 v0, v0, -0x1

    .line 1447
    .end local v5    # "opts":Landroid/app/ActivityOptions;
    :cond_54
    :goto_54
    goto :goto_23

    .line 1466
    :cond_55
    iget v5, v4, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v5, :cond_78

    const/high16 v5, 0x20000000

    and-int/2addr v5, p2

    if-nez v5, :cond_78

    .line 1468
    invoke-static {p2}, Lcom/android/server/am/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v5

    if-nez v5, :cond_78

    .line 1469
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_78

    .line 1470
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_77

    .line 1471
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "clear-task-top"

    const/4 v10, 0x0

    move-object v6, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1474
    :cond_77
    return-object v2

    .line 1478
    :cond_78
    return-object v4

    .line 1438
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "ret":Lcom/android/server/am/ActivityRecord;
    :cond_79
    :goto_79
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1482
    .end local v1    # "activityNdx":I
    :cond_7c
    return-object v2
.end method

.method performClearTaskLocked()V
    .registers 3

    .line 1413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 1414
    const-string v0, "clear-task-all"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(IZLjava/lang/String;)V

    .line 1415
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 1416
    return-void
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v0

    return v0
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;Z)Z
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reparenting"    # Z

    .line 1327
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p0, :cond_46

    .line 1332
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Z)V

    .line 1334
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_1c

    .line 1336
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 1338
    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1339
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1342
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1346
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1349
    :cond_35
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1350
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1352
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 1353
    return v1

    .line 1328
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not belong to task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeTaskActivitiesLocked(ZLjava/lang/String;)V
    .registers 4
    .param p1, "pauseImmediately"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 1487
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(IZLjava/lang/String;)V

    .line 1488
    return-void
.end method

.method removeWindowContainer()V
    .registers 4

    .line 466
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 467
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskWindowContainerController;->removeContainer()V

    .line 468
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 471
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 473
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    .line 474
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    .line 475
    return-void
.end method

.method removedFromRecents()V
    .registers 4

    .line 1028
    invoke-direct {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    .line 1029
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_f

    .line 1030
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1031
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1034
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->clearRootProcess()V

    .line 1037
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->notifyTaskRemovedFromRecents(II)V

    .line 1038
    return-void
.end method

.method reparent(Lcom/android/server/am/ActivityStack;IIZZLjava/lang/String;)Z
    .registers 15
    .param p1, "preferredStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "position"    # I
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 615
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/am/ActivityStack;IIZZZLjava/lang/String;)Z
    .registers 35
    .param p1, "preferredStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "position"    # I
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "schedulePictureInPictureModeChange"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 641
    move-object/from16 v13, p7

    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 642
    .local v14, "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 643
    .local v15, "windowManager":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 644
    .local v12, "sourceStack":Lcom/android/server/am/ActivityStack;
    const/4 v9, 0x1

    const/4 v8, 0x0

    const v0, 0x7fffffff

    if-ne v3, v0, :cond_23

    move v0, v9

    goto :goto_24

    :cond_23
    move v0, v8

    :goto_24
    invoke-virtual {v14, v1, v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getReparentTargetStack(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 646
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    if-ne v7, v12, :cond_2b

    .line 647
    return v8

    .line 649
    :cond_2b
    iget v0, v7, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/TaskRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 650
    return v8

    .line 653
    :cond_34
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v11

    .line 654
    .local v11, "toStackWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 656
    .local v10, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_4a

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    invoke-static {v0, v11}, Lcom/android/server/am/TaskRecord;->replaceWindowsOnTaskMove(II)Z

    move-result v0

    if-eqz v0, :cond_4a

    move v0, v9

    goto :goto_4b

    :cond_4a
    move v0, v8

    :goto_4b
    move/from16 v16, v0

    .line 658
    .local v16, "mightReplaceWindow":Z
    if-eqz v16, :cond_54

    .line 667
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v15, v0, v5}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    .line 670
    :cond_54
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 671
    move/from16 v17, v9

    .line 673
    .local v17, "kept":Z
    :try_start_59
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_224

    move-object/from16 v18, v0

    .line 674
    .local v18, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v8, v18

    if-eqz v8, :cond_7c

    .end local v18    # "r":Lcom/android/server/am/ActivityRecord;
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    :try_start_63
    invoke-virtual {v14, v12}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne v0, v8, :cond_7c

    move v0, v9

    goto :goto_7d

    .line 754
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_71
    move-exception v0

    move-object v5, v2

    move/from16 v25, v3

    move-object v2, v7

    move-object v7, v10

    move v8, v11

    move-object/from16 v23, v12

    goto/16 :goto_22d

    .line 675
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7c
    const/4 v0, 0x0

    :goto_7d
    move/from16 v18, v0

    .line 676
    .local v18, "wasFocused":Z
    if-eqz v8, :cond_89

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_85
    .catchall {:try_start_63 .. :try_end_85} :catchall_71

    if-ne v0, v8, :cond_89

    move v0, v9

    goto :goto_8a

    :cond_89
    const/4 v0, 0x0

    :goto_8a
    move-object/from16 v19, v10

    move v10, v0

    .line 677
    .local v10, "wasResumed":Z
    .local v19, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v8, :cond_a1

    :try_start_8f
    iget-object v0, v12, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;
    :try_end_91
    .catchall {:try_start_8f .. :try_end_91} :catchall_95

    if-ne v0, v8, :cond_a1

    move v0, v9

    goto :goto_a2

    .line 754
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "wasResumed":Z
    .end local v18    # "wasFocused":Z
    :catchall_95
    move-exception v0

    move-object v5, v2

    move/from16 v25, v3

    move-object v2, v7

    move v8, v11

    move-object/from16 v23, v12

    move-object/from16 v7, v19

    goto/16 :goto_22d

    .line 677
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v18    # "wasFocused":Z
    :cond_a1
    const/4 v0, 0x0

    :goto_a2
    move/from16 v20, v11

    move v11, v0

    .line 682
    .local v11, "wasPaused":Z
    .local v20, "toStackWindowingMode":I
    if-eqz v8, :cond_c2

    :try_start_a7
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->isTopStackOnDisplay()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 683
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_b1
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_b5

    if-ne v0, v8, :cond_c2

    move v0, v9

    goto :goto_c3

    .line 754
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v18    # "wasFocused":Z
    :catchall_b5
    move-exception v0

    move-object v5, v2

    move/from16 v25, v3

    move-object v2, v7

    move-object/from16 v23, v12

    move-object/from16 v7, v19

    move/from16 v8, v20

    goto/16 :goto_22d

    .line 683
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v18    # "wasFocused":Z
    :cond_c2
    const/4 v0, 0x0

    :goto_c3
    move/from16 v21, v0

    .line 686
    .local v21, "wasFront":Z
    const/4 v9, 0x0

    :try_start_c6
    invoke-virtual {v7, v1, v3, v9}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result v0
    :try_end_ca
    .catchall {:try_start_c6 .. :try_end_ca} :catchall_218

    move v3, v0

    .line 690
    .end local p2    # "position":I
    .local v3, "position":I
    :try_start_cb
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v9
    :try_end_d1
    .catchall {:try_start_cb .. :try_end_d1} :catchall_20c

    if-nez v4, :cond_d5

    const/4 v2, 0x1

    goto :goto_d6

    :cond_d5
    const/4 v2, 0x0

    :goto_d6
    :try_start_d6
    invoke-virtual {v0, v9, v3, v2}, Lcom/android/server/wm/TaskWindowContainerController;->reparent(Lcom/android/server/wm/StackWindowController;IZ)V

    .line 693
    if-eqz v4, :cond_e5

    const/4 v2, 0x1

    if-ne v4, v2, :cond_e3

    if-nez v18, :cond_e6

    if-eqz v21, :cond_e3

    goto :goto_e6

    :cond_e3
    const/4 v0, 0x0

    goto :goto_e7

    :cond_e5
    const/4 v2, 0x1

    :cond_e6
    :goto_e6
    move v0, v2

    :goto_e7
    move/from16 v22, v0

    .line 696
    .local v22, "moveStackToFront":Z
    if-eqz v22, :cond_ee

    .line 697
    nop

    .line 696
    const/4 v0, 0x2

    goto :goto_f0

    .line 697
    :cond_ee
    nop

    .line 696
    move v0, v2

    :goto_f0
    invoke-virtual {v12, v1, v13, v0}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    .line 698
    const/4 v2, 0x0

    invoke-virtual {v7, v1, v3, v2, v13}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;IZLjava/lang/String;)V
    :try_end_f7
    .catchall {:try_start_d6 .. :try_end_f7} :catchall_1ff

    .line 700
    if-eqz p6, :cond_10b

    .line 702
    :try_start_f9
    invoke-virtual {v14, v1, v12}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_fd

    goto :goto_10b

    .line 754
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v18    # "wasFocused":Z
    .end local v21    # "wasFront":Z
    .end local v22    # "moveStackToFront":Z
    :catchall_fd
    move-exception v0

    move/from16 v25, v3

    move-object v2, v7

    move-object/from16 v23, v12

    .end local v3    # "position":I
    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v20    # "toStackWindowingMode":I
    .local v2, "toStack":Lcom/android/server/am/ActivityStack;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    .local v8, "toStackWindowingMode":I
    .local v23, "sourceStack":Lcom/android/server/am/ActivityStack;
    .local v25, "position":I
    :goto_103
    move-object/from16 v7, v19

    :goto_105
    move/from16 v8, v20

    :goto_107
    move-object/from16 v5, p1

    goto/16 :goto_22d

    .line 707
    .end local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v25    # "position":I
    .restart local v3    # "position":I
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v18    # "wasFocused":Z
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "toStackWindowingMode":I
    .restart local v21    # "wasFront":Z
    .restart local v22    # "moveStackToFront":Z
    :cond_10b
    :goto_10b
    :try_start_10b
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_10d
    .catchall {:try_start_10b .. :try_end_10d} :catchall_1ff

    if-eqz v0, :cond_11a

    .line 709
    :try_start_10f
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v9, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v2, v9}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_118
    .catch Landroid/os/RemoteException; {:try_start_10f .. :try_end_118} :catch_119
    .catchall {:try_start_10f .. :try_end_118} :catchall_fd

    .line 711
    goto :goto_11a

    .line 710
    :catch_119
    move-exception v0

    .line 716
    :cond_11a
    :goto_11a
    if-eqz v8, :cond_12e

    .line 717
    move-object v2, v7

    .end local v7    # "toStack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v24, v8

    const/4 v9, 0x0

    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .local v24, "r":Lcom/android/server/am/ActivityRecord;
    move/from16 v25, v3

    const/4 v3, 0x1

    move/from16 v9, v22

    .end local v3    # "position":I
    .restart local v25    # "position":I
    move-object/from16 v23, v12

    move-object v12, v13

    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :try_start_128
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->moveToFrontAndResumeStateIfNeeded(Lcom/android/server/am/ActivityRecord;ZZZLjava/lang/String;)V
    :try_end_12b
    .catchall {:try_start_128 .. :try_end_12b} :catchall_12c

    goto :goto_136

    .line 754
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v18    # "wasFocused":Z
    .end local v21    # "wasFront":Z
    .end local v22    # "moveStackToFront":Z
    .end local v24    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_12c
    move-exception v0

    goto :goto_103

    .line 720
    .end local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v25    # "position":I
    .restart local v3    # "position":I
    .restart local v7    # "toStack":Lcom/android/server/am/ActivityStack;
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v18    # "wasFocused":Z
    .restart local v21    # "wasFront":Z
    .restart local v22    # "moveStackToFront":Z
    :cond_12e
    move/from16 v25, v3

    move-object v2, v7

    move-object/from16 v24, v8

    move-object/from16 v23, v12

    const/4 v3, 0x1

    .end local v3    # "position":I
    .end local v7    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .restart local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v24    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "position":I
    :goto_136
    if-nez v5, :cond_14f

    .line 721
    :try_start_138
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;
    :try_end_13e
    .catchall {:try_start_138 .. :try_end_13e} :catchall_146

    move-object/from16 v7, v19

    :try_start_140
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_143
    .catchall {:try_start_140 .. :try_end_143} :catchall_144

    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_151

    .line 754
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v18    # "wasFocused":Z
    .end local v21    # "wasFront":Z
    .end local v22    # "moveStackToFront":Z
    .end local v24    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_144
    move-exception v0

    goto :goto_105

    .end local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_146
    move-exception v0

    move-object/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v5, p1

    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_22d

    .line 726
    .end local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v18    # "wasFocused":Z
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v21    # "wasFront":Z
    .restart local v22    # "moveStackToFront":Z
    .restart local v24    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_14f
    move-object/from16 v7, v19

    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :goto_151
    :try_start_151
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->prepareFreezingTaskBounds()V
    :try_end_154
    .catchall {:try_start_151 .. :try_end_154} :catchall_1f9

    .line 729
    const/4 v0, 0x3

    move/from16 v8, v20

    if-ne v8, v0, :cond_15b

    .end local v20    # "toStackWindowingMode":I
    .local v8, "toStackWindowingMode":I
    move v0, v3

    goto :goto_15c

    :cond_15b
    const/4 v0, 0x0

    .line 731
    .local v0, "toStackSplitScreenPrimary":Z
    :goto_15c
    :try_start_15c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 732
    .local v9, "configBounds":Landroid/graphics/Rect;
    if-eq v8, v3, :cond_165

    const/4 v12, 0x4

    if-ne v8, v12, :cond_17f

    .line 734
    :cond_165
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-static {v9, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17f

    .line 735
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v12

    if-nez v16, :cond_176

    goto :goto_177

    :cond_176
    const/4 v3, 0x0

    :goto_177
    const/4 v5, 0x0

    invoke-virtual {v1, v12, v5, v3, v6}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v3

    move/from16 v17, v3

    goto :goto_1c7

    .line 737
    :cond_17f
    const/4 v3, 0x5

    if-ne v8, v3, :cond_1a4

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 739
    .local v3, "bounds":Landroid/graphics/Rect;
    if-nez v3, :cond_196

    .line 740
    iget-object v5, v1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v5

    const/4 v12, 0x0

    invoke-virtual {v5, v1, v12}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    .line 741
    move-object v3, v9

    goto :goto_197

    .line 743
    :cond_196
    const/4 v12, 0x0

    :goto_197
    if-nez v16, :cond_19b

    const/4 v5, 0x1

    goto :goto_19c

    :cond_19b
    const/4 v5, 0x0

    :goto_19c
    const/4 v12, 0x2

    invoke-virtual {v1, v3, v12, v5, v6}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v5

    move/from16 v17, v5

    .line 744
    .end local v3    # "bounds":Landroid/graphics/Rect;
    goto :goto_1c7

    :cond_1a4
    const/4 v12, 0x2

    if-nez v0, :cond_1a9

    if-ne v8, v12, :cond_1c7

    .line 745
    :cond_1a9
    if-eqz v0, :cond_1b6

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b7

    .line 748
    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v13}, Lcom/android/server/am/ActivityStackSupervisor;->moveRecentsStackToFront(Ljava/lang/String;)V

    goto :goto_1b7

    .line 750
    :cond_1b6
    const/4 v5, 0x1

    :cond_1b7
    :goto_1b7
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v16, :cond_1bf

    move v12, v5

    goto :goto_1c0

    :cond_1bf
    const/4 v12, 0x0

    :goto_1c0
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v12, v6}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v3
    :try_end_1c5
    .catchall {:try_start_15c .. :try_end_1c5} :catchall_1f6

    move/from16 v17, v3

    .line 754
    .end local v0    # "toStackSplitScreenPrimary":Z
    .end local v9    # "configBounds":Landroid/graphics/Rect;
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v18    # "wasFocused":Z
    .end local v21    # "wasFront":Z
    .end local v22    # "moveStackToFront":Z
    .end local v24    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1c7
    :goto_1c7
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 755
    nop

    .line 757
    if-eqz v16, :cond_1d7

    .line 761
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez v17, :cond_1d3

    const/4 v3, 0x1

    goto :goto_1d4

    :cond_1d3
    const/4 v3, 0x0

    :goto_1d4
    invoke-virtual {v15, v0, v3}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 764
    :cond_1d7
    if-nez v6, :cond_1e7

    .line 767
    if-nez v16, :cond_1dd

    const/4 v0, 0x1

    goto :goto_1de

    :cond_1dd
    const/4 v0, 0x0

    :goto_1de
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v14, v5, v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 768
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto :goto_1e8

    .line 772
    :cond_1e7
    const/4 v3, 0x0

    :goto_1e8
    move-object/from16 v5, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    invoke-virtual {v14, v1, v0, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 775
    if-ne v5, v2, :cond_1f5

    const/4 v3, 0x1

    nop

    :cond_1f5
    return v3

    .line 754
    :catchall_1f6
    move-exception v0

    goto/16 :goto_107

    .end local v8    # "toStackWindowingMode":I
    .restart local v20    # "toStackWindowingMode":I
    :catchall_1f9
    move-exception v0

    move/from16 v8, v20

    move-object/from16 v5, p1

    .end local v20    # "toStackWindowingMode":I
    .restart local v8    # "toStackWindowingMode":I
    goto :goto_22d

    .end local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "toStackWindowingMode":I
    .end local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v25    # "position":I
    .local v3, "position":I
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    .restart local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "toStackWindowingMode":I
    :catchall_1ff
    move-exception v0

    move/from16 v25, v3

    move-object v2, v7

    move-object/from16 v23, v12

    move-object/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v5, p1

    goto :goto_217

    :catchall_20c
    move-exception v0

    move-object v5, v2

    move/from16 v25, v3

    move-object v2, v7

    move-object/from16 v23, v12

    move-object/from16 v7, v19

    move/from16 v8, v20

    .end local v3    # "position":I
    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v20    # "toStackWindowingMode":I
    .restart local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "toStackWindowingMode":I
    .restart local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v25    # "position":I
    :goto_217
    goto :goto_22d

    .end local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "toStackWindowingMode":I
    .end local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v25    # "position":I
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    .restart local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "toStackWindowingMode":I
    .restart local p2    # "position":I
    :catchall_218
    move-exception v0

    move-object v5, v2

    move-object v2, v7

    move-object/from16 v23, v12

    move-object/from16 v7, v19

    move/from16 v8, v20

    move/from16 v25, v3

    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v20    # "toStackWindowingMode":I
    .restart local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "toStackWindowingMode":I
    .restart local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto :goto_22d

    .end local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "toStackWindowingMode":I
    .end local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    .local v10, "topActivity":Lcom/android/server/am/ActivityRecord;
    .local v11, "toStackWindowingMode":I
    .restart local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :catchall_224
    move-exception v0

    move-object v5, v2

    move-object v2, v7

    move-object v7, v10

    move v8, v11

    move-object/from16 v23, v12

    move/from16 v25, v3

    .end local v10    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "toStackWindowingMode":I
    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local p2    # "position":I
    .restart local v2    # "toStack":Lcom/android/server/am/ActivityStack;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "toStackWindowingMode":I
    .restart local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v25    # "position":I
    :goto_22d
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z
    .registers 16
    .param p1, "preferredStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toTop"    # Z
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 596
    if-eqz p2, :cond_7

    const v0, 0x7fffffff

    :goto_5
    move v3, v0

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :goto_9
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z
    .registers 17
    .param p1, "preferredStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toTop"    # Z
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "schedulePictureInPictureModeChange"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 607
    if-eqz p2, :cond_7

    const v0, 0x7fffffff

    :goto_5
    move v3, v0

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :goto_9
    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestResize(Landroid/graphics/Rect;I)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "resizeMode"    # I

    .line 510
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 511
    return-void
.end method

.method resize(Landroid/graphics/Rect;IZZ)Z
    .registers 13
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "resizeMode"    # I
    .param p3, "preserveWindow"    # Z
    .param p4, "deferResume"    # Z

    .line 514
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 517
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_33

    .line 518
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resizeTask: task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not resizeable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_e7

    .line 519
    nop

    .line 577
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 519
    return v1

    .line 524
    :cond_33
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    move v0, v1

    goto :goto_3b

    :cond_3a
    move v0, v2

    .line 525
    .local v0, "forced":Z
    :goto_3b
    :try_start_3b
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->equivalentOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v3
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_e7

    if-eqz v3, :cond_4c

    if-nez v0, :cond_4c

    .line 527
    nop

    .line 577
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 527
    return v1

    .line 530
    :cond_4c
    :try_start_4c
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-nez v3, :cond_6a

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 535
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_61

    .line 537
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;Z)Z
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_e7

    .line 539
    :cond_61
    nop

    .line 577
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 539
    return v1

    .line 542
    :cond_6a
    :try_start_6a
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskRecord;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "am.resizeTask_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 553
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    move-result v1

    .line 559
    .local v1, "updatedConfig":Z
    const/4 v5, 0x1

    .line 560
    .local v5, "kept":Z
    if-eqz v1, :cond_ac

    .line 561
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 562
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_ac

    if-nez p4, :cond_ac

    .line 563
    invoke-virtual {v6, v2, p3}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v7

    move v5, v7

    .line 565
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v6, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 567
    if-nez v5, :cond_ac

    .line 568
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 572
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_ac
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v2, v5, v0}, Lcom/android/server/wm/TaskWindowContainerController;->resize(ZZ)V

    .line 574
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_b4
    .catchall {:try_start_6a .. :try_end_b4} :catchall_e7

    .line 575
    nop

    .line 577
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 575
    return v5

    .line 543
    .end local v1    # "updatedConfig":Z
    .end local v5    # "kept":Z
    :cond_bd
    :try_start_bd
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resizeTask: Can not resize task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " resizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e7
    .catchall {:try_start_bd .. :try_end_e7} :catchall_e7

    .line 577
    .end local v0    # "forced":Z
    :catchall_e7
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method resizeWindowContainer()V
    .registers 3

    .line 583
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/TaskWindowContainerController;->resize(ZZ)V

    .line 584
    return-void
.end method

.method returnsToHomeStack()Z
    .registers 4

    .line 938
    const v0, 0x10004000

    .line 939
    .local v0, "returnHomeFlags":I
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, 0x10004000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2165
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_1a

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    :cond_1a
    const-string/jumbo v0, "task_id"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2168
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_37

    .line 2169
    const-string/jumbo v0, "real_activity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2171
    :cond_37
    const-string/jumbo v0, "real_activity_suspended"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2172
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_53

    .line 2173
    const-string/jumbo v0, "orig_activity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2179
    :cond_53
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_78

    .line 2180
    const-string v0, "affinity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2181
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 2182
    const-string/jumbo v0, "root_affinity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    goto :goto_74

    :cond_72
    const-string v1, "@"

    :goto_74
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8b

    .line 2184
    :cond_78
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_8b

    .line 2185
    const-string/jumbo v0, "root_affinity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    goto :goto_88

    :cond_86
    const-string v1, "@"

    :goto_88
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2187
    :cond_8b
    :goto_8b
    const-string/jumbo v0, "root_has_reset"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2188
    const-string v0, "auto_remove_recents"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2189
    const-string v0, "asked_compat_mode"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2190
    const-string/jumbo v0, "user_id"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2191
    const-string/jumbo v0, "user_setup_complete"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2192
    const-string v0, "effective_uid"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2193
    const-string/jumbo v0, "last_time_moved"

    iget-wide v3, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2194
    const-string/jumbo v0, "never_relinquish_identity"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2195
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f8

    .line 2196
    const-string/jumbo v0, "last_description"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2198
    :cond_f8
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_101

    .line 2199
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2201
    :cond_101
    const-string/jumbo v0, "task_affiliation_color"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2202
    const-string/jumbo v0, "task_affiliation"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2203
    const-string/jumbo v0, "prev_affiliation"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2204
    const-string/jumbo v0, "next_affiliation"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2205
    const-string v0, "calling_uid"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2206
    const-string v0, "calling_package"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    if-nez v1, :cond_145

    const-string v1, ""

    goto :goto_147

    :cond_145
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    :goto_147
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2207
    const-string/jumbo v0, "resize_mode"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2208
    const-string/jumbo v0, "supports_picture_in_picture"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    .line 2209
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 2208
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2210
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_172

    .line 2211
    const-string/jumbo v0, "non_fullscreen_bounds"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 2212
    invoke-virtual {v1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 2211
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2214
    :cond_172
    const-string/jumbo v0, "min_width"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2215
    const-string/jumbo v0, "min_height"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2216
    const-string/jumbo v0, "persist_task_version"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2218
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1a8

    .line 2219
    const-string v0, "affinity_intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2220
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2221
    const-string v0, "affinity_intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2224
    :cond_1a8
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1bd

    .line 2225
    const-string/jumbo v0, "intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2226
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2227
    const-string/jumbo v0, "intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2230
    :cond_1bd
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2231
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2232
    .local v1, "numActivities":I
    const/4 v3, 0x0

    .line 2232
    .local v3, "activityNdx":I
    :goto_1c4
    if-ge v3, v1, :cond_1f8

    .line 2233
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 2234
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v5, :cond_1f8

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v5

    if-eqz v5, :cond_1f8

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2235
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    or-int/lit16 v5, v5, 0x2000

    if-ne v5, v6, :cond_1e8

    if-lez v3, :cond_1e8

    .line 2239
    goto :goto_1f8

    .line 2241
    :cond_1e8
    const-string v5, "activity"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2242
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2243
    const-string v5, "activity"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2232
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c4

    .line 2245
    .end local v3    # "activityNdx":I
    :cond_1f8
    :goto_1f8
    return-void
.end method

.method final setFrontOfTask()V
    .registers 8

    .line 1190
    const/4 v0, 0x0

    .line 1191
    .local v0, "foundFront":Z
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1192
    .local v1, "numActivities":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "activityNdx":I
    .local v3, "foundFront":Z
    :goto_a
    const/4 v4, 0x1

    if-ge v0, v1, :cond_25

    .line 1193
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1194
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v3, :cond_20

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1c

    goto :goto_20

    .line 1197
    :cond_1c
    iput-boolean v4, v5, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1199
    const/4 v3, 0x1

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_22

    .line 1195
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_20
    :goto_20
    iput-boolean v2, v5, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1192
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1202
    .end local v0    # "activityNdx":I
    :cond_25
    if-nez v3, :cond_33

    if-lez v1, :cond_33

    .line 1205
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1207
    :cond_33
    return-void
.end method

.method setIntent(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 813
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 814
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 815
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 816
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth(Lcom/android/server/am/ActivityRecord;)V

    .line 817
    return-void
.end method

.method setLockTaskAuth()V
    .registers 2

    .line 1502
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth(Lcom/android/server/am/ActivityRecord;)V

    .line 1503
    return-void
.end method

.method setNextAffiliate(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "nextAffiliate"    # Lcom/android/server/am/TaskRecord;

    .line 948
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 949
    if-nez p1, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_8
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 950
    return-void
.end method

.method setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "prevAffiliate"    # Lcom/android/server/am/TaskRecord;

    .line 943
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 944
    if-nez p1, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_8
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 945
    return-void
.end method

.method setResizeMode(I)V
    .registers 5
    .param p1, "resizeMode"    # I

    .line 483
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    if-ne v0, p1, :cond_5

    .line 484
    return-void

    .line 486
    :cond_5
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 489
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 491
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 492
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3b

    .line 493
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickReply: setResizeMode() force resizible for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_3b
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 498
    :cond_3e
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->setResizeable(I)V

    .line 499
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 500
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 501
    return-void
.end method

.method setRootProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1953
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->clearRootProcess()V

    .line 1954
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 1955
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_19

    .line 1956
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    .line 1957
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->recentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1959
    :cond_19
    return-void
.end method

.method setStack(Lcom/android/server/am/ActivityStack;)V
    .registers 6
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 961
    if-eqz p1, :cond_11

    invoke-virtual {p1, p0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 962
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task must be added as a Stack child first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    .line 965
    .local v0, "oldStack":Lcom/android/server/am/ActivityStack;
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    .line 970
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v1, :cond_34

    .line 971
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1f
    if-ltz v1, :cond_34

    .line 972
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->getChildAt(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 974
    .local v2, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2a

    .line 975
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    .line 978
    :cond_2a
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_31

    .line 979
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityStack;->onActivityAddedToStack(Lcom/android/server/am/ActivityRecord;)V

    .line 971
    .end local v2    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    .line 984
    .end local v1    # "i":I
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->onParentChanged()V

    .line 985
    return-void
.end method

.method setTaskDockedResizing(Z)V
    .registers 3
    .param p1, "resizing"    # Z

    .line 504
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->setTaskDockedResizing(Z)V

    .line 505
    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .registers 7
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    .line 1041
    invoke-direct {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    .line 1042
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 1043
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 1045
    :goto_b
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 1046
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 1047
    .local v0, "nextRecents":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_4e

    .line 1048
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " affilTaskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v2, p1, :cond_4a

    .line 1051
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1053
    :cond_4a
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1054
    goto :goto_50

    .line 1056
    :cond_4e
    move-object p1, v0

    .line 1057
    .end local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    goto :goto_b

    .line 1058
    :cond_50
    :goto_50
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1059
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1060
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1061
    return-void
.end method

.method protected setWindowContainerController(Lcom/android/server/wm/TaskWindowContainerController;)V
    .registers 5
    .param p1, "controller"    # Lcom/android/server/wm/TaskWindowContainerController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-nez v0, :cond_7

    .line 462
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    .line 463
    return-void

    .line 458
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already created for task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 3

    .line 1549
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_21

    .line 1552
    invoke-direct {p0, v1}, Lcom/android/server/am/TaskRecord;->isResizeable(Z)Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 1553
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_21
    const/4 v1, 0x1

    nop

    .line 1549
    :cond_23
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2072
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2073
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_3e

    .line 2074
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2075
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2076
    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2077
    const-string v1, " StackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2078
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2079
    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2080
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2081
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2082
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2084
    :cond_3e
    const-string v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2085
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2086
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2087
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2088
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_67

    .line 2089
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 2091
    :cond_67
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_7e

    .line 2092
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2093
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 2094
    :cond_7e
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_9d

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_9d

    .line 2095
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 2098
    :cond_9d
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2100
    :goto_a2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 2101
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .registers 4

    .line 1096
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_24

    .line 1097
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "activityNdx":I
    :goto_c
    if-ltz v0, :cond_24

    .line 1098
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1099
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_21

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1100
    return-object v1

    .line 1097
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1104
    .end local v0    # "activityNdx":I
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningActivityWithStartingWindowLocked()Lcom/android/server/am/ActivityRecord;
    .registers 5

    .line 1129
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_29

    .line 1130
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "activityNdx":I
    :goto_c
    if-ltz v0, :cond_29

    .line 1131
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1132
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    if-ne v3, v1, :cond_26

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_26

    .line 1133
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1134
    goto :goto_26

    .line 1136
    :cond_25
    return-object v2

    .line 1130
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1139
    .end local v0    # "activityNdx":I
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method touchActiveTime()V
    .registers 3

    .line 804
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 805
    return-void
.end method

.method updateEffectiveIntent()V
    .registers 3

    .line 1704
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v0

    .line 1705
    .local v0, "effectiveRootIndex":I
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1706
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1709
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateTaskDescription()V

    .line 1710
    return-void
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1781
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 15
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;

    .line 1793
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->equivalentOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1794
    return v1

    .line 1796
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1798
    .local v0, "currentBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1799
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1801
    .local v2, "newConfig":Landroid/content/res/Configuration;
    const/4 v3, 0x1

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_25

    :cond_23
    move v4, v1

    goto :goto_26

    :cond_25
    :goto_25
    move v4, v3

    :goto_26
    move v10, v4

    .line 1802
    .local v10, "matchParentBounds":Z
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v11

    .line 1803
    .local v11, "persistBounds":Z
    if-eqz v10, :cond_43

    .line 1804
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    if-eqz v11, :cond_3b

    .line 1805
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1807
    :cond_3b
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 1808
    invoke-virtual {v2}, Landroid/content/res/Configuration;->unset()V

    goto :goto_7c

    .line 1810
    :cond_43
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1811
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/android/server/am/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V

    .line 1812
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/server/am/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 1814
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_58

    if-eqz v11, :cond_5e

    .line 1815
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1817
    :cond_5e
    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    if-eq v4, v5, :cond_6a

    move v8, v3

    goto :goto_6b

    :cond_6a
    move v8, v1

    :goto_6b
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v4, v5, :cond_75

    move v9, v3

    goto :goto_76

    :cond_75
    move v9, v1

    :goto_76
    move-object v4, p0

    move-object v5, v2

    move-object v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/TaskRecord;->computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 1820
    :goto_7c
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1821
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    xor-int/2addr v1, v3

    return v1
.end method

.method updateOverrideConfigurationForStack(Lcom/android/server/am/ActivityStack;)V
    .registers 5
    .param p1, "inStack"    # Lcom/android/server/am/ActivityStack;

    .line 1904
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-ne v0, p1, :cond_9

    .line 1905
    return-void

    .line 1908
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1909
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1913
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1914
    return-void

    .line 1916
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_26

    .line 1917
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    goto :goto_59

    .line 1919
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    goto :goto_59

    .line 1910
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not position non-resizeable task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1922
    :cond_52
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 1924
    :goto_59
    return-void
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .registers 3

    .line 1891
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1892
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 1893
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1896
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1898
    :cond_16
    return-object v0
.end method

.method updateTaskDescription()V
    .registers 23

    .line 1619
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1620
    .local v1, "numActivities":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1621
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_1e

    move v2, v3

    nop

    .line 1622
    .local v2, "relinquish":Z
    :cond_1e
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "activityNdx":I
    :goto_22
    if-ge v3, v1, :cond_4c

    .line 1624
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1625
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_39

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x1000

    if-nez v5, :cond_39

    .line 1628
    add-int/lit8 v3, v3, 0x1

    .line 1629
    goto :goto_4c

    .line 1631
    :cond_39
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_49

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1632
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_49

    .line 1633
    goto :goto_4c

    .line 1623
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1636
    :cond_4c
    :goto_4c
    if-lez v3, :cond_e9

    .line 1641
    const/4 v4, 0x0

    .line 1642
    .local v4, "label":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1643
    .local v5, "iconFilename":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1644
    .local v6, "iconResource":I
    const/4 v7, 0x0

    .line 1645
    .local v7, "colorPrimary":I
    const/4 v8, 0x0

    .line 1646
    .local v8, "colorBackground":I
    const/4 v9, 0x0

    .line 1647
    .local v9, "statusBarColor":I
    const/4 v10, 0x0

    .line 1648
    .local v10, "navigationBarColor":I
    const/4 v11, 0x1

    .line 1649
    .local v11, "topActivity":Z
    add-int/lit8 v3, v3, -0x1

    move-object v13, v4

    move-object v15, v5

    move v14, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "iconFilename":Ljava/lang/String;
    .end local v6    # "iconResource":I
    .end local v7    # "colorPrimary":I
    .end local v8    # "colorBackground":I
    .end local v9    # "statusBarColor":I
    .end local v10    # "navigationBarColor":I
    .end local v11    # "topActivity":Z
    .local v13, "label":Ljava/lang/String;
    .local v14, "iconResource":I
    .local v15, "iconFilename":Ljava/lang/String;
    .local v16, "colorPrimary":I
    .local v17, "colorBackground":I
    .local v18, "statusBarColor":I
    .local v19, "navigationBarColor":I
    .local v20, "topActivity":Z
    :goto_65
    if-ltz v3, :cond_b8

    .line 1650
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1651
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v5, :cond_74

    .line 1652
    goto :goto_b5

    .line 1654
    :cond_74
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v5, :cond_b2

    .line 1655
    if-nez v13, :cond_81

    .line 1656
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v5

    .line 1658
    .end local v13    # "label":Ljava/lang/String;
    .local v5, "label":Ljava/lang/String;
    move-object v13, v5

    .end local v5    # "label":Ljava/lang/String;
    .restart local v13    # "label":Ljava/lang/String;
    :cond_81
    const/4 v5, -0x1

    if-ne v14, v5, :cond_8b

    .line 1659
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getIconResource()I

    move-result v5

    .line 1661
    .end local v14    # "iconResource":I
    .local v5, "iconResource":I
    move v14, v5

    .end local v5    # "iconResource":I
    .restart local v14    # "iconResource":I
    :cond_8b
    if-nez v15, :cond_94

    .line 1662
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v5

    .line 1664
    .end local v15    # "iconFilename":Ljava/lang/String;
    .local v5, "iconFilename":Ljava/lang/String;
    move-object v15, v5

    .end local v5    # "iconFilename":Ljava/lang/String;
    .restart local v15    # "iconFilename":Ljava/lang/String;
    :cond_94
    if-nez v16, :cond_9e

    .line 1665
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v5

    .line 1667
    .end local v16    # "colorPrimary":I
    .local v5, "colorPrimary":I
    move/from16 v16, v5

    .end local v5    # "colorPrimary":I
    .restart local v16    # "colorPrimary":I
    :cond_9e
    if-eqz v20, :cond_b2

    .line 1668
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v17

    .line 1669
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v18

    .line 1670
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v19

    .line 1673
    :cond_b2
    const/4 v4, 0x0

    .line 1649
    .end local v20    # "topActivity":Z
    .local v4, "topActivity":Z
    move/from16 v20, v4

    .end local v4    # "topActivity":Z
    .restart local v20    # "topActivity":Z
    :goto_b5
    add-int/lit8 v3, v3, -0x1

    goto :goto_65

    .line 1675
    :cond_b8
    new-instance v12, Landroid/app/ActivityManager$TaskDescription;

    const/4 v6, 0x0

    move-object v4, v12

    move-object v5, v13

    move v7, v14

    move-object v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v21, v1

    move-object v1, v12

    move/from16 v12, v19

    .end local v1    # "numActivities":I
    .local v21, "numActivities":I
    invoke-direct/range {v4 .. v12}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;IIII)V

    iput-object v1, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1677
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-eqz v1, :cond_da

    .line 1678
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskWindowContainerController;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1681
    :cond_da
    iget v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v1, v4, :cond_eb

    .line 1682
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .end local v13    # "label":Ljava/lang/String;
    .end local v14    # "iconResource":I
    .end local v15    # "iconFilename":Ljava/lang/String;
    .end local v16    # "colorPrimary":I
    .end local v17    # "colorBackground":I
    .end local v18    # "statusBarColor":I
    .end local v19    # "navigationBarColor":I
    .end local v20    # "topActivity":Z
    goto :goto_eb

    .line 1685
    .end local v21    # "numActivities":I
    .restart local v1    # "numActivities":I
    :cond_e9
    move/from16 v21, v1

    .end local v1    # "numActivities":I
    .restart local v21    # "numActivities":I
    :cond_eb
    :goto_eb
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2105
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2106
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    const/4 v4, 0x0

    invoke-super {p0, p1, v2, v3, v4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 2107
    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2108
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1f
    if-ltz v2, :cond_34

    .line 2109
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2110
    .local v3, "activity":Lcom/android/server/am/ActivityRecord;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/ActivityRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2108
    .end local v3    # "activity":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 2112
    .end local v2    # "i":I
    :cond_34
    const-wide v2, 0x10500000004L

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2113
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_4e

    .line 2114
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2116
    :cond_4e
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_60

    .line 2117
    const-wide v2, 0x10900000006L

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2119
    :cond_60
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_72

    .line 2120
    const-wide v2, 0x10900000007L

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2122
    :cond_72
    const-wide v2, 0x10500000008L

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2123
    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2125
    const-wide v2, 0x1080000000aL

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2127
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_a6

    .line 2128
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2129
    .local v2, "bounds":Landroid/graphics/Rect;
    const-wide v3, 0x10b0000000bL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2131
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_a6
    const-wide v2, 0x1050000000cL

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2132
    const-wide v2, 0x1050000000dL

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2133
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2134
    return-void
.end method
