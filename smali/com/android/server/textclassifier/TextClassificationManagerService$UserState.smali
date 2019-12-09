.class final Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;
    }
.end annotation


# instance fields
.field mBinding:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field final mPendingRequests:Ljava/util/Queue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field mService:Landroid/service/textclassifier/ITextClassifierService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mUserId:I


# direct methods
.method private constructor <init>(ILandroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Lcom/android/server/textclassifier/TextClassificationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

    .line 338
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    .line 349
    iput p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    .line 350
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mContext:Landroid/content/Context;

    .line 351
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mLock:Ljava/lang/Object;

    .line 352
    return-void
.end method

.method synthetic constructor <init>(ILandroid/content/Context;Ljava/lang/Object;Lcom/android/server/textclassifier/TextClassificationManagerService$1;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;-><init>(ILandroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Ljava/lang/Object;
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->handlePendingRequestsLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->bindIfHasPendingRequestsLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->bindLocked()Z

    move-result p0

    return p0
.end method

.method private bindIfHasPendingRequestsLocked()Z
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->bindLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private bindLocked()Z
    .locals 7

    .line 386
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mBinding:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 394
    :try_start_0
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mContext:Landroid/content/Context;

    .line 395
    invoke-static {v2}, Landroid/service/textclassifier/TextClassifierService;->getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    if-nez v2, :cond_1

    .line 398
    const/4 v2, 0x0

    .line 409
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 398
    return v2

    .line 400
    :cond_1
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.textclassifier.TextClassifierService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 402
    const-string v3, "TextClassificationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

    const v5, 0x4000001

    iget v6, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    .line 406
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 403
    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    .line 407
    iput-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mBinding:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    nop

    .line 411
    return v2

    .line 409
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 387
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private handlePendingRequestsLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 362
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    if-eqz v0, :cond_3

    .line 363
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$800(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 366
    :cond_1
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$900(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 367
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$900(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 371
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1000(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 372
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1000(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 375
    :cond_3
    return-void
.end method


# virtual methods
.method isBoundLocked()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
