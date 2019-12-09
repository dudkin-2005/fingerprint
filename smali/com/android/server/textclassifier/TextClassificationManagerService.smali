.class public final Lcom/android/server/textclassifier/TextClassificationManagerService;
.super Landroid/service/textclassifier/ITextClassifierService$Stub;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;,
        Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;,
        Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextClassificationManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field final mUserStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Landroid/service/textclassifier/ITextClassifierService$Stub;-><init>()V

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 119
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    .line 120
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/textclassifier/TextClassificationManagerService$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/textclassifier/TextClassificationManagerService;I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->logOnFailure(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private getCallingUserStateLocked()Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .locals 1

    .line 246
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method private getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 251
    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;-><init>(ILandroid/content/Context;Ljava/lang/Object;Lcom/android/server/textclassifier/TextClassificationManagerService$1;)V

    .line 253
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$logOnFailure$6(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 320
    const-string v0, "TextClassificationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$onClassifyText$1(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassificationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassificationCallback;)V

    return-void
.end method

.method public static synthetic lambda$onCreateTextClassificationSession$4(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method

.method public static synthetic lambda$onDestroyTextClassificationSession$5(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method

.method public static synthetic lambda$onGenerateLinks$2(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextLinksCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextLinksCallback;)V

    return-void
.end method

.method public static synthetic lambda$onSelectionEvent$3(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    return-void
.end method

.method public static synthetic lambda$onSuggestSelection$0(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextSelectionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextSelectionCallback;)V

    return-void
.end method

.method private static logOnFailure(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .line 318
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 319
    :cond_0
    new-instance v0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$AlzZLOTDy6ySI7ijsc3zdoY2qPo;

    invoke-direct {v0, p1}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$AlzZLOTDy6ySI7ijsc3zdoY2qPo;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/internal/util/FunctionalUtils;->handleExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private static validateInput(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 327
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    .line 328
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    nop

    .line 333
    return-void

    .line 329
    :catch_0
    move-exception p0

    .line 331
    new-instance p1, Landroid/os/RemoteException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassificationCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getCallingUserStateLocked()Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v6

    .line 155
    invoke-static {v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->access$400(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    invoke-interface {p3}, Landroid/service/textclassifier/ITextClassificationCallback;->onFailure()V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, v6, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {v1, p1, p2, p3}, Landroid/service/textclassifier/ITextClassifierService;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassificationCallback;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v7, v6, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    new-instance v8, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    new-instance v2, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$0ahBOnx4jsgbPYQhVmIdEMzPn5Q;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$0ahBOnx4jsgbPYQhVmIdEMzPn5Q;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassificationCallback;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/textclassifier/-$$Lambda$6tTWS9-rW6CtxVP0xKRcg3Q5kmI;

    invoke-direct {v3, p3}, Lcom/android/server/textclassifier/-$$Lambda$6tTWS9-rW6CtxVP0xKRcg3Q5kmI;-><init>(Landroid/service/textclassifier/ITextClassificationCallback;)V

    .line 162
    invoke-interface {p3}, Landroid/service/textclassifier/ITextClassificationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object v1, v8

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    .line 160
    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 164
    :goto_0
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->validateInput(Ljava/lang/String;Landroid/content/Context;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getCallingUserStateLocked()Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v6

    .line 217
    invoke-virtual {v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, v6, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {v1, p1, p2}, Landroid/service/textclassifier/ITextClassifierService;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v7, v6, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    new-instance v8, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    new-instance v2, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$BPyCtyAA7AehDOdMNqubn2TPsH0;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$BPyCtyAA7AehDOdMNqubn2TPsH0;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v8

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 225
    :goto_0
    monitor-exit v0

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getCallingUserStateLocked()Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v6

    .line 235
    invoke-virtual {v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, v6, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {v1, p1}, Landroid/service/textclassifier/ITextClassifierService;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v7, v6, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    new-instance v8, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    new-instance v2, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$pc4ryoobAsvmL5rAUjkRjLM3K84;

    invoke-direct {v2, p0, p1}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$pc4ryoobAsvmL5rAUjkRjLM3K84;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v8

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 242
    :goto_0
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextLinksCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getCallingUserStateLocked()Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v6

    .line 177
    invoke-static {v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->access$400(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    invoke-interface {p3}, Landroid/service/textclassifier/ITextLinksCallback;->onFailure()V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, v6, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {v1, p1, p2, p3}, Landroid/service/textclassifier/ITextClassifierService;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextLinksCallback;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object v7, v6, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    new-instance v8, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    new-instance v2, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$-O5SqJ3O93lhUbxb9PI9hMy-SaM;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$-O5SqJ3O93lhUbxb9PI9hMy-SaM;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextLinksCallback;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/textclassifier/-$$Lambda$WxMu2h-uKYpQBik6LDmBRWb9Y00;

    invoke-direct {v3, p3}, Lcom/android/server/textclassifier/-$$Lambda$WxMu2h-uKYpQBik6LDmBRWb9Y00;-><init>(Landroid/service/textclassifier/ITextLinksCallback;)V

    .line 184
    invoke-interface {p3}, Landroid/service/textclassifier/ITextLinksCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object v1, v8

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    .line 182
    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 186
    :goto_0
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {p2}, Landroid/view/textclassifier/SelectionEvent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->validateInput(Ljava/lang/String;Landroid/content/Context;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getCallingUserStateLocked()Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v6

    .line 197
    invoke-virtual {v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, v6, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {v1, p1, p2}, Landroid/service/textclassifier/ITextClassifierService;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v7, v6, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    new-instance v8, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    new-instance v2, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Xo8FJ3LmQoamgJ2foxZOcS-n70c;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Xo8FJ3LmQoamgJ2foxZOcS-n70c;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v8

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 204
    :goto_0
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextSelectionCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getCallingUserStateLocked()Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v6

    .line 133
    invoke-static {v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->access$400(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-interface {p3}, Landroid/service/textclassifier/ITextSelectionCallback;->onFailure()V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, v6, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {v1, p1, p2, p3}, Landroid/service/textclassifier/ITextClassifierService;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextSelectionCallback;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v7, v6, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    new-instance v8, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    new-instance v2, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Oay4QGGKO1MM7dDcB0KN_1JmqZA;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Oay4QGGKO1MM7dDcB0KN_1JmqZA;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextSelectionCallback;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/textclassifier/-$$Lambda$m88mc8F7odBzfaVb5UMVTJhRQps;

    invoke-direct {v3, p3}, Lcom/android/server/textclassifier/-$$Lambda$m88mc8F7odBzfaVb5UMVTJhRQps;-><init>(Landroid/service/textclassifier/ITextSelectionCallback;)V

    .line 140
    invoke-interface {p3}, Landroid/service/textclassifier/ITextSelectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object v1, v8

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    .line 138
    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 142
    :goto_0
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method peekUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    return-object p1
.end method