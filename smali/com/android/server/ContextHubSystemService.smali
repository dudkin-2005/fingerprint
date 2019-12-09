.class Lcom/android/server/ContextHubSystemService;
.super Lcom/android/server/SystemService;
.source "ContextHubSystemService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextHubSystemService"


# instance fields
.field private mContextHubService:Lcom/android/server/location/ContextHubService;

.field private mInit:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$ContextHubSystemService$q-5gSEKm3he-4vIHcay4DLtf85E;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$ContextHubSystemService$q-5gSEKm3he-4vIHcay4DLtf85E;-><init>(Lcom/android/server/ContextHubSystemService;Landroid/content/Context;)V

    const-string p1, "Init ContextHubSystemService"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ContextHubSystemService;->mInit:Ljava/util/concurrent/Future;

    .line 38
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/ContextHubSystemService;Landroid/content/Context;)V
    .locals 1

    .line 36
    new-instance v0, Lcom/android/server/location/ContextHubService;

    invoke-direct {v0, p1}, Lcom/android/server/location/ContextHubService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Lcom/android/server/location/ContextHubService;

    .line 37
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    .line 46
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 47
    const-string p1, "ContextHubSystemService"

    const-string v0, "onBootPhase: PHASE_SYSTEM_SERVICES_READY"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p1, p0, Lcom/android/server/ContextHubSystemService;->mInit:Ljava/util/concurrent/Future;

    const-string v0, "Wait for ContextHubSystemService init"

    invoke-static {p1, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/ContextHubSystemService;->mInit:Ljava/util/concurrent/Future;

    .line 51
    const-string p1, "contexthub"

    iget-object v0, p0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Lcom/android/server/location/ContextHubService;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ContextHubSystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 42
    return-void
.end method
