.class Lcom/android/server/am/ActivityStarter$Request;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# static fields
.field private static final DEFAULT_CALLING_PID:I = 0x0

.field private static final DEFAULT_CALLING_UID:I = -0x1


# instance fields
.field activityInfo:Landroid/content/pm/ActivityInfo;

.field activityOptions:Lcom/android/server/am/SafeActivityOptions;

.field allowPendingRemoteAnimationRegistryLookup:Z

.field avoidMoveToFront:Z

.field caller:Landroid/app/IApplicationThread;

.field callingPackage:Ljava/lang/String;

.field callingPid:I

.field callingUid:I

.field componentSpecified:Z

.field ephemeralIntent:Landroid/content/Intent;

.field filterCallingUid:I

.field globalConfig:Landroid/content/res/Configuration;

.field ignoreTargetSecurity:Z

.field inTask:Lcom/android/server/am/TaskRecord;

.field intent:Landroid/content/Intent;

.field mayWait:Z

.field outActivity:[Lcom/android/server/am/ActivityRecord;

.field profilerInfo:Landroid/app/ProfilerInfo;

.field realCallingPid:I

.field realCallingUid:I

.field reason:Ljava/lang/String;

.field requestCode:I

.field resolveInfo:Landroid/content/pm/ResolveInfo;

.field resolvedType:Ljava/lang/String;

.field resultTo:Landroid/os/IBinder;

.field resultWho:Ljava/lang/String;

.field startFlags:I

.field userId:I

.field voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field waitResult:Landroid/app/WaitResult;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    .line 368
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStarter$Request;->reset()V

    .line 369
    return-void
.end method


# virtual methods
.method reset()V
    .registers 4

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 376
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 377
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 378
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 379
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 380
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 381
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 382
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 383
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 384
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 385
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    .line 386
    iput v1, p0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    .line 387
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    .line 388
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 389
    iput v1, p0, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    .line 390
    iput v1, p0, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    .line 391
    iput v1, p0, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    .line 392
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    .line 393
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 394
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    .line 395
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    .line 396
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    .line 397
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 398
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 399
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 400
    iput v1, p0, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    .line 401
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 402
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    .line 403
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter$Request;->avoidMoveToFront:Z

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 405
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 406
    return-void
.end method

.method set(Lcom/android/server/am/ActivityStarter$Request;)V
    .registers 3
    .param p1, "request"    # Lcom/android/server/am/ActivityStarter$Request;

    .line 412
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 413
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 414
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 415
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 416
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 417
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 418
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 419
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 420
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 421
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 422
    iget v0, p1, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    .line 423
    iget v0, p1, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    .line 424
    iget v0, p1, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    .line 425
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 426
    iget v0, p1, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    .line 427
    iget v0, p1, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    .line 428
    iget v0, p1, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    .line 429
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    .line 430
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 431
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    .line 432
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    .line 433
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    .line 434
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 435
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 436
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 437
    iget v0, p1, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    .line 438
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 439
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    .line 440
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter$Request;->avoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter$Request;->avoidMoveToFront:Z

    .line 441
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 443
    iget v0, p1, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 444
    return-void
.end method
