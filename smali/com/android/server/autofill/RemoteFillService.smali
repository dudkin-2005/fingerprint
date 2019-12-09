.class final Lcom/android/server/autofill/RemoteFillService;
.super Ljava/lang/Object;
.source "RemoteFillService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;,
        Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;,
        Lcom/android/server/autofill/RemoteFillService$PendingRequest;,
        Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;,
        Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemoteFillService"

.field private static final MSG_UNBIND:I = 0x3

.field private static final TIMEOUT_IDLE_BIND_MILLIS:J = 0x1388L

.field private static final TIMEOUT_REMOTE_REQUEST_MILLIS:J = 0x1388L


# instance fields
.field private mAutoFillService:Landroid/service/autofill/IAutoFillService;

.field private final mBindInstantServiceAllowed:Z

.field private mBinding:Z

.field private final mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

.field private mCompleted:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceDied:Z

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callbacks"    # Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
    .param p5, "bindInstantServiceAllowed"    # Z

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$1;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 121
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    .line 122
    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 123
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mIntent:Landroid/content/Intent;

    .line 125
    iput p3, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    .line 127
    iput-boolean p5, p0, Lcom/android/server/autofill/RemoteFillService;->mBindInstantServiceAllowed:Z

    .line 128
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
    .param p2, "x2"    # Landroid/service/autofill/FillResponse;
    .param p3, "x3"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Landroid/os/ICancellationSignal;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnFillRequestTimeout(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "x2"    # Landroid/content/IntentSender;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnSaveRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dispatchOnSaveRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/autofill/RemoteFillService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 67
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/RemoteFillService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 67
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/autofill/RemoteFillService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 67
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/IAutoFillService;)Landroid/service/autofill/IAutoFillService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Landroid/service/autofill/IAutoFillService;

    .line 67
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 67
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleBinderDied()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 67
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 67
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handlePendingRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/autofill/RemoteFillService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceDied:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/autofill/RemoteFillService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 67
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelScheduledUnbind()V
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    return-void
.end method

.method private checkIfDestroyed()Z
    .registers 4

    .line 431
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    if-eqz v0, :cond_25

    .line 432
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_25

    .line 433
    const-string v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not handling operation as service for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_25
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    return v0
.end method

.method private dispatchOnFillRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 329
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17MhbU6HKTSEi1dUKhwTRwYg2xA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$17MhbU6HKTSEi1dUKhwTRwYg2xA;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method

.method private dispatchOnFillRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V
    .registers 6
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "requestFlags"    # I

    .line 319
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_5v43Gwb-Yar1uuVIqDgfleCP_4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$_5v43Gwb-Yar1uuVIqDgfleCP_4;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    return-void
.end method

.method private dispatchOnFillRequestTimeout(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V
    .registers 4
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 338
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PKEfnjx72TG33VenAsL_32TGLPg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PKEfnjx72TG33VenAsL_32TGLPg;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    return-void
.end method

.method private dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V
    .registers 4
    .param p1, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .line 347
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$lfx4anCMpwM99MhvsITDjU9sFRA;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$lfx4anCMpwM99MhvsITDjU9sFRA;-><init>(Landroid/os/ICancellationSignal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    return-void
.end method

.method private dispatchOnSaveRequestFailure(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 367
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$-MTWVawYUlWYzdF5tucVgNj4nNY;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$-MTWVawYUlWYzdF5tucVgNj4nNY;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    return-void
.end method

.method private dispatchOnSaveRequestSuccess(Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V
    .registers 5
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "intentSender"    # Landroid/content/IntentSender;

    .line 358
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$XMU-2wAMieOoEHWM96VKmbAYfUo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$XMU-2wAMieOoEHWM96VKmbAYfUo;-><init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method

.method private ensureBound()V
    .registers 7

    .line 272
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v0

    if-nez v0, :cond_81

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    if-eqz v0, :cond_b

    goto :goto_81

    .line 275
    :cond_b
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2c

    const-string v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] ensureBound()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    .line 278
    const v0, 0x4000001

    .line 279
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService;->mBindInstantServiceAllowed:Z

    if-eqz v1, :cond_39

    .line 280
    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    .line 283
    :cond_39
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 286
    .local v1, "willBind":Z
    if-nez v1, :cond_80

    .line 287
    const-string v2, "RemoteFillService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] could not bind to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " using flags "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    .line 291
    iget-boolean v2, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceDied:Z

    if-nez v2, :cond_80

    .line 292
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleBinderDied()V

    .line 295
    :cond_80
    return-void

    .line 273
    .end local v0    # "flags":I
    .end local v1    # "willBind":Z
    :cond_81
    :goto_81
    return-void
.end method

.method private ensureUnbound()V
    .registers 6

    .line 298
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    if-nez v0, :cond_b

    .line 299
    return-void

    .line 301
    :cond_b
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2c

    const-string v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] ensureUnbound()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_2c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mBinding:Z

    .line 303
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 305
    :try_start_35
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    invoke-interface {v1, v0}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_3b

    .line 308
    goto :goto_52

    .line 306
    :catch_3b
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "RemoteFillService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception calling onDisconnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_52
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    if-eqz v1, :cond_62

    .line 310
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    invoke-interface {v1}, Landroid/service/autofill/IAutoFillService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    .line 314
    :cond_62
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 315
    return-void
.end method

.method private handleBinderDied()V
    .registers 4

    .line 152
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 153
    :cond_7
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    if-eqz v0, :cond_1e

    .line 157
    :try_start_b
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    invoke-interface {v0}, Landroid/service/autofill/IAutoFillService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_15
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_15} :catch_16

    .line 160
    goto :goto_1e

    .line 158
    :catch_16
    move-exception v0

    .line 159
    .local v0, "ex":Ljava/util/NoSuchElementException;
    const-string v1, "RemoteFillService"

    const-string v2, "Unable to unlinkToDeath"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v0    # "ex":Ljava/util/NoSuchElementException;
    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mServiceDied:Z

    .line 165
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-interface {v0, p0}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V

    .line 166
    return-void
.end method

.method private handleDestroy()V
    .registers 2

    .line 136
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 137
    :cond_7
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v0, :cond_13

    .line 138
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 141
    :cond_13
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->ensureUnbound()V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    .line 143
    return-void
.end method

.method private handlePendingRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .registers 5
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 248
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 249
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCompleted:Z

    if-eqz v0, :cond_c

    .line 250
    return-void

    .line 252
    :cond_c
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v0

    if-nez v0, :cond_21

    .line 253
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v0, :cond_1b

    .line 254
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    .line 256
    :cond_1b
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 257
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->ensureBound()V

    goto :goto_4e

    .line 259
    :cond_21
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_42

    const-string v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] handlePendingRequest()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_42
    invoke-virtual {p1}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->run()V

    .line 261
    invoke-virtual {p1}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCompleted:Z

    .line 265
    :cond_4e
    :goto_4e
    return-void
.end method

.method private handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z
    .registers 3
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 375
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    if-eqz v0, :cond_6

    .line 376
    const/4 v0, 0x0

    return v0

    .line 378
    :cond_6
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-ne v0, p1, :cond_d

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 381
    :cond_d
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-nez v0, :cond_14

    .line 382
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->scheduleUnbind()V

    .line 384
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method private handleUnbind()V
    .registers 2

    .line 243
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->checkIfDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 244
    :cond_7
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->ensureUnbound()V

    .line 245
    return-void
.end method

.method private isBound()Z
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mAutoFillService:Landroid/service/autofill/IAutoFillService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static synthetic lambda$1sGSxm1GNkRnOTqlIJFPKrlV6Bk(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleBinderDied()V

    return-void
.end method

.method public static synthetic lambda$KN9CcjjmJTg_PJcamzzLgVvQt9M(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleDestroy()V

    return-void
.end method

.method public static synthetic lambda$YjPsINV7QuCehWwsB0GTTg1hvr4(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->handleUnbind()V

    return-void
.end method

.method public static synthetic lambda$dispatchOnFillRequestFailure$1(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 330
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 331
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    # getter for: Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;
    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 332
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-interface {v0, v1, p2, v2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/CharSequence;Ljava/lang/String;)V

    .line 334
    :cond_19
    return-void
.end method

.method public static synthetic lambda$dispatchOnFillRequestSuccess$0(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V
    .registers 7
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "requestFlags"    # I

    .line 320
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 321
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    # getter for: Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;
    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 322
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-interface {v0, v1, p2, v2, p3}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V

    .line 324
    :cond_19
    return-void
.end method

.method public static synthetic lambda$dispatchOnFillRequestTimeout$2(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V
    .registers 5
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 340
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    # getter for: Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;
    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 341
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 340
    invoke-interface {v0, v1, v2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestTimeout(ILjava/lang/String;)V

    .line 343
    :cond_19
    return-void
.end method

.method static synthetic lambda$dispatchOnFillTimeout$3(Landroid/os/ICancellationSignal;)V
    .registers 5
    .param p0, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .line 349
    :try_start_0
    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 352
    goto :goto_1b

    .line 350
    :catch_4
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling cancellation signal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public static synthetic lambda$dispatchOnSaveRequestFailure$5(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 368
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 369
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 371
    :cond_11
    return-void
.end method

.method public static synthetic lambda$dispatchOnSaveRequestSuccess$4(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Landroid/content/IntentSender;)V
    .registers 5
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;
    .param p2, "intentSender"    # Landroid/content/IntentSender;

    .line 359
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handleResponseCallbackCommon(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 360
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 362
    :cond_11
    return-void
.end method

.method public static synthetic lambda$h6FPsdmILphrDZs953cJIyumyqg(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->handlePendingRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    return-void
.end method

.method private scheduleRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .registers 4
    .param p1, "pendingRequest"    # Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 206
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$h6FPsdmILphrDZs953cJIyumyqg;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$h6FPsdmILphrDZs953cJIyumyqg;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    return-void
.end method

.method private scheduleUnbind()V
    .registers 5

    .line 235
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelScheduledUnbind()V

    .line 236
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$YjPsINV7QuCehWwsB0GTTg1hvr4;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$YjPsINV7QuCehWwsB0GTTg1hvr4;

    .line 237
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 238
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v1

    .line 236
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 240
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$1sGSxm1GNkRnOTqlIJFPKrlV6Bk;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$1sGSxm1GNkRnOTqlIJFPKrlV6Bk;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    return-void
.end method

.method public cancelCurrentRequest()I
    .registers 3

    .line 178
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    if-eqz v0, :cond_7

    .line 179
    const/high16 v0, -0x80000000

    return v0

    .line 182
    :cond_7
    const/high16 v0, -0x80000000

    .line 183
    .local v0, "requestId":I
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v1, :cond_27

    .line 184
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    instance-of v1, v1, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    if-eqz v1, :cond_1f

    .line 185
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    check-cast v1, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    # getter for: Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;
    invoke-static {v1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v0

    .line 188
    :cond_1f
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    .line 192
    :cond_27
    return v0
.end method

.method public destroy()V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KN9CcjjmJTg_PJcamzzLgVvQt9M;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KN9CcjjmJTg_PJcamzzLgVvQt9M;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 214
    const-string v0, "  "

    .line 215
    .local v0, "tab":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "service:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 216
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "userId="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/autofill/RemoteFillService;->mUserId:I

    .line 217
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 218
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "componentName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 219
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 220
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "destroyed="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/autofill/RemoteFillService;->mDestroyed:Z

    .line 221
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 222
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "bound="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 223
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->isBound()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 224
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "hasPendingRequest="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingRequest:Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    if-eqz v2, :cond_94

    const/4 v2, 0x1

    goto :goto_95

    :cond_94
    const/4 v2, 0x0

    .line 225
    :goto_95
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 226
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "mBindInstantServiceAllowed="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/autofill/RemoteFillService;->mBindInstantServiceAllowed:Z

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 227
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 228
    return-void
.end method

.method public onFillRequest(Landroid/service/autofill/FillRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/service/autofill/FillRequest;

    .line 196
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelScheduledUnbind()V

    .line 197
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-direct {v0, p1, p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;-><init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V

    invoke-direct {p0, v0}, Lcom/android/server/autofill/RemoteFillService;->scheduleRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    .line 198
    return-void
.end method

.method public onSaveRequest(Landroid/service/autofill/SaveRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/service/autofill/SaveRequest;

    .line 201
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelScheduledUnbind()V

    .line 202
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;

    invoke-direct {v0, p1, p0}, Lcom/android/server/autofill/RemoteFillService$PendingSaveRequest;-><init>(Landroid/service/autofill/SaveRequest;Lcom/android/server/autofill/RemoteFillService;)V

    invoke-direct {p0, v0}, Lcom/android/server/autofill/RemoteFillService;->scheduleRequest(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    .line 203
    return-void
.end method
