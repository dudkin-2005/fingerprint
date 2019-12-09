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

.field static final DEFAULT_REAL_CALLING_PID:I = 0x0

.field static final DEFAULT_REAL_CALLING_UID:I = -0x2710


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

.field originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

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
    .locals 2

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    .line 305
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    .line 307
    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    .line 308
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    .line 341
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStarter$Request;->reset()V

    .line 342
    return-void
.end method


# virtual methods
.method reset()V
    .locals 3

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 349
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 350
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 351
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 352
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 353
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 354
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 355
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 356
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 357
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 358
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    .line 359
    iput v1, p0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    .line 360
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    .line 361
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 362
    iput v1, p0, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    .line 363
    const/16 v2, -0x2710

    iput v2, p0, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    .line 364
    iput v1, p0, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    .line 365
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    .line 366
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 367
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    .line 368
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    .line 369
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    .line 370
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 371
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 372
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 373
    iput v1, p0, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    .line 374
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 375
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    .line 376
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter$Request;->avoidMoveToFront:Z

    .line 377
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 378
    iput v2, p0, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 379
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 380
    return-void
.end method

.method set(Lcom/android/server/am/ActivityStarter$Request;)V
    .locals 1

    .line 386
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 387
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 388
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 389
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 390
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 391
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 392
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 393
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 394
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 395
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 396
    iget v0, p1, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    .line 397
    iget v0, p1, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    .line 398
    iget v0, p1, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    .line 399
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 400
    iget v0, p1, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    .line 401
    iget v0, p1, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    .line 402
    iget v0, p1, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    .line 403
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    .line 404
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 405
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    .line 406
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    .line 407
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    .line 408
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 409
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 410
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 411
    iget v0, p1, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    .line 412
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 413
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    .line 414
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter$Request;->avoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter$Request;->avoidMoveToFront:Z

    .line 415
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 417
    iget v0, p1, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 418
    iget-object p1, p1, Lcom/android/server/am/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    iput-object p1, p0, Lcom/android/server/am/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 419
    return-void
.end method
