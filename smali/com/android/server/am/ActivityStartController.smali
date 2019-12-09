.class public Lcom/android/server/am/ActivityStartController;
.super Ljava/lang/Object;
.source "ActivityStartController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStartController$StartHandler;
    }
.end annotation


# static fields
.field private static final DO_PENDING_ACTIVITY_LAUNCHES_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mFactory:Lcom/android/server/am/ActivityStarter$Factory;

.field private final mHandler:Landroid/os/Handler;

.field private mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

.field private mLastHomeActivityStartResult:I

.field private mLastStarter:Lcom/android/server/am/ActivityStarter;

.field private final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private tmpOutRecord:[Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 5

    .line 115
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v1, Lcom/android/server/am/ActivityStarter$DefaultFactory;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v3, Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v3, p1, v4}, Lcom/android/server/am/ActivityStartInterceptor;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/am/ActivityStarter$DefaultFactory;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStartInterceptor;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStartController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStarter$Factory;)V

    .line 118
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStarter$Factory;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->tmpOutRecord:[Lcom/android/server/am/ActivityRecord;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    .line 123
    iput-object p1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 124
    iput-object p2, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 125
    new-instance p2, Lcom/android/server/am/ActivityStartController$StartHandler;

    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/android/server/am/ActivityStartController$StartHandler;-><init>(Lcom/android/server/am/ActivityStartController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    .line 126
    iput-object p3, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    .line 127
    iget-object p2, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {p2, p0}, Lcom/android/server/am/ActivityStarter$Factory;->setController(Lcom/android/server/am/ActivityStartController;)V

    .line 128
    new-instance p2, Lcom/android/server/am/PendingRemoteAnimationRegistry;

    iget-object p3, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {p2, p1, p3}, Lcom/android/server/am/PendingRemoteAnimationRegistry;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/am/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStartController;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method


# virtual methods
.method addPendingActivityLaunch(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    return-void
.end method

.method checkTargetUser(IZIILjava/lang/String;)I
    .locals 8

    .line 239
    if-eqz p2, :cond_0

    .line 240
    iget-object p2, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    move v1, p3

    move v2, p4

    move v3, p1

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 243
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p2, p1}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    .line 244
    return p1
.end method

.method clearPendingActivityLaunches(Ljava/lang/String;)Z
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 439
    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 440
    iget-object v2, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 441
    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    .line 442
    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 439
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 446
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method doPendingActivityLaunches(Z)V
    .locals 12

    .line 417
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 419
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    .line 420
    :cond_0
    move v8, v1

    const/4 v1, 0x0

    const-string/jumbo v2, "pendingActivityLaunch"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 423
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityStarter;->startResolvedActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    goto :goto_1

    .line 425
    :catch_0
    move-exception v1

    .line 426
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during pending activity launch pal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sendErrorResult(Ljava/lang/String;)V

    .line 429
    :goto_1
    goto :goto_0

    .line 430
    :cond_1
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 459
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 460
    const-string v0, "mLastHomeActivityStartResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    iget v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 463
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    const-string v0, "mLastHomeActivityStartRecord:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 469
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 471
    move v2, v1

    goto :goto_0

    .line 469
    :cond_1
    nop

    .line 471
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    if-eqz v3, :cond_4

    .line 472
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    .line 473
    invoke-virtual {v3, p3}, Lcom/android/server/am/ActivityStarter;->relatedToPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 475
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    .line 477
    :cond_3
    :goto_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    .line 478
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 479
    iget-object p3, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/android/server/am/ActivityStarter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 481
    if-eqz v2, :cond_4

    .line 482
    return-void

    .line 487
    :cond_4
    if-eqz v2, :cond_5

    .line 488
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 489
    const-string p2, "(nothing)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    :cond_5
    return-void
.end method

.method getPendingRemoteAnimationRegistry()Lcom/android/server/am/PendingRemoteAnimationRegistry;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    return-object v0
.end method

.method obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/am/ActivityStarter$Factory;->obtain()Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStarter;->setIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityStarter;->setReason(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object p1

    return-object p1
.end method

.method onExecutionComplete(Lcom/android/server/am/ActivityStarter;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/am/ActivityStarter$Factory;->obtain()Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStarter;->set(Lcom/android/server/am/ActivityStarter;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0, p1}, Lcom/android/server/am/ActivityStarter$Factory;->recycle(Lcom/android/server/am/ActivityStarter;)V

    .line 148
    return-void
.end method

.method postStartActivityProcessingForLastStarter(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 161
    return-void
.end method

.method registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/PendingRemoteAnimationRegistry;->addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    .line 452
    return-void
.end method

.method schedulePendingActivityLaunches(J)V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 414
    return-void
.end method

.method startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;)I
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    .line 312
    if-eqz v2, :cond_11

    .line 315
    if-eqz v3, :cond_10

    .line 318
    array-length v4, v2

    array-length v5, v3

    if-ne v4, v5, :cond_f

    .line 322
    if-eqz p3, :cond_0

    .line 323
    nop

    .line 325
    move/from16 v4, p3

    goto :goto_0

    .line 324
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 325
    :goto_0
    const/16 v5, -0x2710

    move/from16 v6, p4

    if-eq v6, v5, :cond_1

    .line 326
    goto :goto_1

    .line 327
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 329
    :goto_1
    if-ltz p2, :cond_2

    .line 330
    nop

    .line 337
    move/from16 v8, p2

    :goto_2
    const/4 v9, -0x1

    goto :goto_3

    .line 331
    :cond_2
    if-nez v1, :cond_3

    .line 332
    nop

    .line 333
    nop

    .line 337
    move v9, v4

    move v8, v6

    goto :goto_3

    .line 335
    :cond_3
    nop

    .line 337
    const/4 v8, -0x1

    goto :goto_2

    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 339
    :try_start_0
    iget-object v12, v0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 340
    const/4 v13, 0x1

    new-array v14, v13, [Lcom/android/server/am/ActivityRecord;

    .line 341
    move-object/from16 v7, p8

    const/4 v15, 0x0

    :goto_4
    array-length v13, v2

    if-ge v15, v13, :cond_e

    .line 342
    aget-object v13, v2, v15

    .line 343
    if-nez v13, :cond_4

    .line 344
    nop

    .line 341
    move-object/from16 v2, p12

    move/from16 v28, v6

    move-object/from16 v17, v7

    move-wide v5, v10

    const/16 v16, 0x1

    move-object/from16 v7, p5

    move-object/from16 v10, p11

    goto/16 :goto_a

    .line 348
    :cond_4
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v17

    if-nez v17, :cond_5

    goto :goto_5

    .line 349
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_6
    :goto_5
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_7

    .line 355
    const/16 v18, 0x1

    goto :goto_6

    .line 352
    :cond_7
    nop

    .line 355
    const/16 v18, 0x0

    :goto_6
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 358
    iget-object v13, v0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    aget-object v21, v3, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 359
    move-wide/from16 v26, v10

    const/16 v10, -0x2710

    :try_start_2
    invoke-static {v8, v6, v10}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v25

    .line 358
    move-object/from16 v19, v13

    move-object/from16 v20, v5

    move/from16 v24, p10

    invoke-virtual/range {v19 .. v25}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    .line 362
    iget-object v13, v0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v10, p10

    invoke-virtual {v13, v11, v10}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    .line 364
    if-eqz v11, :cond_9

    iget-object v13, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v13, v13, 0x2

    if-nez v13, :cond_8

    goto :goto_7

    .line 367
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_9
    :goto_7
    array-length v13, v2

    const/16 v16, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ne v15, v13, :cond_a

    .line 372
    move/from16 v13, v16

    goto :goto_8

    .line 371
    :cond_a
    nop

    .line 372
    const/4 v13, 0x0

    :goto_8
    const/16 v17, 0x0

    if-eqz v13, :cond_b

    .line 373
    nop

    .line 375
    move-object/from16 v2, p9

    goto :goto_9

    .line 374
    :cond_b
    nop

    .line 375
    move-object/from16 v2, v17

    :goto_9
    move-object/from16 v10, p11

    invoke-virtual {v0, v5, v10}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v5

    .line 376
    invoke-virtual {v5, v1}, Lcom/android/server/am/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;

    move-result-object v5

    aget-object v0, v3, v15

    .line 377
    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 378
    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 379
    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 380
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStarter;->setRequestCode(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 381
    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityStarter;->setCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 382
    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 383
    move-object/from16 v7, p5

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 384
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 385
    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 386
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 387
    move/from16 v2, v18

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 388
    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityStarter;->setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 392
    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStarter;->setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 393
    move-object/from16 v2, p12

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v0

    .line 396
    if-gez v0, :cond_c

    .line 397
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-wide/from16 v1, v26

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 397
    return v0

    .line 400
    :cond_c
    move/from16 v28, v6

    move-wide/from16 v5, v26

    const/4 v0, 0x0

    :try_start_3
    aget-object v11, v14, v0

    if-eqz v11, :cond_d

    aget-object v11, v14, v0

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 341
    move-object/from16 v17, v0

    goto :goto_a

    .line 400
    :cond_d
    nop

    .line 341
    :goto_a
    add-int/lit8 v15, v15, 0x1

    move-wide v10, v5

    move/from16 v13, v16

    move-object/from16 v7, v17

    move/from16 v6, v28

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    const/16 v5, -0x2710

    goto/16 :goto_4

    .line 402
    :catchall_0
    move-exception v0

    move-wide/from16 v5, v26

    goto :goto_b

    :cond_e
    move-wide v5, v10

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 404
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    nop

    .line 407
    const/4 v0, 0x0

    return v0

    .line 402
    :catchall_1
    move-exception v0

    move-wide v5, v10

    :goto_b
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 404
    :catchall_2
    move-exception v0

    goto :goto_c

    .line 402
    :catchall_3
    move-exception v0

    goto :goto_b

    .line 404
    :catchall_4
    move-exception v0

    move-wide v5, v10

    :goto_c
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 319
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intents are length different than resolvedTypes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "resolvedTypes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "intents is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final startActivitiesInPackage(IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;)I
    .locals 19

    .line 300
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 301
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string/jumbo v5, "startActivityInPackage"

    .line 300
    move-object/from16 v0, p0

    move/from16 v1, p9

    move/from16 v2, p10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v16

    .line 304
    const-string/jumbo v17, "startActivityInPackage"

    const/4 v7, 0x0

    move-object/from16 v6, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v18, p11

    invoke-virtual/range {v6 .. v18}, Lcom/android/server/am/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;)I

    move-result v0

    return v0
.end method

.method final startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;)I
    .locals 12

    .line 289
    const/4 v2, 0x0

    const/16 v3, -0x2710

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ActivityStartController;->startActivitiesInPackage(IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;)I

    move-result v0

    return v0
.end method

.method final startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;)I
    .locals 6

    .line 254
    move-object v0, p0

    move/from16 v1, p12

    move/from16 v2, p15

    move v3, p2

    move v4, p3

    move-object/from16 v5, p14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v0

    .line 258
    move-object v1, p0

    move-object v2, p5

    move-object/from16 v3, p14

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 259
    move v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 260
    move v2, p2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 261
    move v2, p3

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 262
    move-object v2, p4

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 263
    move-object v2, p6

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 264
    move-object v2, p7

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 265
    move-object v2, p8

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 266
    move v2, p9

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setRequestCode(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 267
    move/from16 v2, p10

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setStartFlags(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 268
    move-object/from16 v2, p11

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v1

    .line 269
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStarter;->setMayWait(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 270
    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setInTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 271
    move-object/from16 v1, p16

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v0

    .line 258
    return v0
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startHomeActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/am/ActivityStartController;->tmpOutRecord:[Lcom/android/server/am/ActivityRecord;

    .line 167
    invoke-virtual {p1, p3}, Lcom/android/server/am/ActivityStarter;->setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object p1

    .line 168
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object p1

    .line 169
    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartResult:I

    .line 171
    iget-object p1, p0, Lcom/android/server/am/ActivityStartController;->tmpOutRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object p1, p1, p3

    iput-object p1, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    .line 172
    iget-object p1, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean p1, p1, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 178
    :cond_0
    return-void
.end method

.method startSetupActivity()V
    .locals 6

    .line 185
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCheckedForSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const-string v1, "device_provisioned"

    .line 194
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setCheckedForSetup(Z)V

    .line 199
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPGRADE_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v4, 0x100480

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 204
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 205
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 206
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 207
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.SETUP_VERSION"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 208
    :cond_1
    const/4 v4, 0x0

    .line 209
    :goto_0
    if-nez v4, :cond_2

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 210
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.SETUP_VERSION"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 213
    :cond_2
    const-string v5, "last_setup_shown"

    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    if-eqz v4, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 216
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    const-string/jumbo v0, "startSetupActivity"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 221
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter;->execute()I

    .line 226
    :cond_3
    return-void
.end method
