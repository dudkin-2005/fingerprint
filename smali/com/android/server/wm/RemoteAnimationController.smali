.class Lcom/android/server/wm/RemoteAnimationController;
.super Ljava/lang/Object;
.source "RemoteAnimationController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;,
        Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TIMEOUT_MS:J = 0x7d0L


# instance fields
.field private mCanceled:Z

.field private mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mLinkedToDeathOfRunner:Z

.field private final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$uQS8vaPKQ-E3x_9G8NCxPQmw1fw;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$uQS8vaPKQ-E3x_9G8NCxPQmw1fw;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 72
    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 73
    iput-object p3, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/RemoteAnimationController;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/RemoteAnimationController;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/wm/RemoteAnimationController;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/wm/RemoteAnimationController;)Ljava/lang/Runnable;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/wm/RemoteAnimationController;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/wm/RemoteAnimationController;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->releaseFinishedCallback()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/RemoteAnimationController;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wm/RemoteAnimationController;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/wm/RemoteAnimationController;->sendRunningRemoteAnimation(Z)V

    return-void
.end method

.method private cancelAnimation(Ljava/lang/String;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 138
    monitor-exit p1

    return-void

    .line 140
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    .line 141
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 143
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled()V

    .line 144
    return-void

    .line 141
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private createAnimations()[Landroid/view/RemoteAnimationTarget;
    .locals 4

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 161
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 162
    invoke-virtual {v2}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->createRemoteAppAnimation()Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    .line 163
    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :cond_0
    invoke-static {v2}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 173
    invoke-static {v2}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 160
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method

.method private invokeAnimationCancelled()V
    .locals 3

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string v1, "WindowManager"

    const-string v2, "Failed to notify cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    :goto_0
    return-void
.end method

.method public static synthetic lambda$goodToGo$1(Lcom/android/server/wm/RemoteAnimationController;[Landroid/view/RemoteAnimationTarget;)V
    .locals 2

    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->linkToDeathOfRunner()V

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    invoke-interface {v0, p1, v1}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart([Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 122
    :catch_0
    move-exception p1

    .line 123
    const-string v0, "WindowManager"

    const-string v1, "Failed to start remote animation"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 130
    :goto_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/RemoteAnimationController;)V
    .locals 1

    .line 63
    const-string/jumbo v0, "timeoutRunnable"

    invoke-direct {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    return-void
.end method

.method private linkToDeathOfRunner()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    .line 236
    :cond_0
    return-void
.end method

.method private onAnimationFinished()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 186
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->unlinkToDeathOfRunner()V

    .line 187
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->releaseFinishedCallback()V

    .line 188
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 193
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 194
    invoke-static {v2}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 201
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "RemoteAnimationController#finished"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 202
    nop

    .line 203
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->sendRunningRemoteAnimation(Z)V

    .line 206
    return-void

    .line 201
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 197
    :catch_0
    move-exception v1

    .line 198
    :try_start_3
    const-string v2, "WindowManager"

    const-string v3, "Failed to finish remote animation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v3, "RemoteAnimationController#finished"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v1

    .line 203
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private releaseFinishedCallback()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    invoke-virtual {v0}, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;->release()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    .line 221
    :cond_0
    return-void
.end method

.method private sendRunningRemoteAnimation(Z)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    move-result v0

    .line 225
    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/WindowManagerService;->sendSetRunningRemoteAnimation(IZ)V

    .line 229
    return-void

    .line 226
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Calling pid of remote animation was null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private unlinkToDeathOfRunner()V
    .locals 2

    .line 239
    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 241
    iput-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    .line 243
    :cond_0
    return-void
.end method

.method private writeStartDebugStatement()V
    .locals 5

    .line 147
    const-string v0, "WindowManager"

    const-string v1, "Starting remote animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 149
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 150
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 150
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->close()V

    .line 154
    const-string v1, "WindowManager"

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 247
    const-string v0, "binderDied"

    invoke-direct {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method createAnimationAdapter(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Point;Landroid/graphics/Rect;)Lcom/android/server/wm/AnimationAdapter;
    .locals 1

    .line 88
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 90
    iget-object p1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-object v0
.end method

.method goodToGo()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const/high16 v2, 0x44fa0000    # 2000.0f

    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 109
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 108
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    .line 112
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->createAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    .line 113
    array-length v1, v0

    if-nez v1, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 116
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$f_Hsu4PN7pGOiq9Nl8vxzEA3wa0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$f_Hsu4PN7pGOiq9Nl8vxzEA3wa0;-><init>(Lcom/android/server/wm/RemoteAnimationController;[Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->sendRunningRemoteAnimation(Z)V

    .line 132
    return-void

    .line 103
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 104
    return-void
.end method
