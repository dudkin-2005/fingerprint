.class public Lcom/android/server/search/SearchManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/search/SearchManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/search/SearchManagerService$Lifecycle;)Lcom/android/server/search/SearchManagerService;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle;->mService:Lcom/android/server/search/SearchManagerService;

    return-object p0
.end method


# virtual methods
.method public onCleanupUser(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle;->mService:Lcom/android/server/search/SearchManagerService;

    invoke-static {v0, p1}, Lcom/android/server/search/SearchManagerService;->access$200(Lcom/android/server/search/SearchManagerService;I)V

    .line 89
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 72
    new-instance v0, Lcom/android/server/search/SearchManagerService;

    invoke-virtual {p0}, Lcom/android/server/search/SearchManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle;->mService:Lcom/android/server/search/SearchManagerService;

    .line 73
    const-string/jumbo v0, "search"

    iget-object v1, p0, Lcom/android/server/search/SearchManagerService$Lifecycle;->mService:Lcom/android/server/search/SearchManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/search/SearchManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 74
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle;->mService:Lcom/android/server/search/SearchManagerService;

    iget-object v0, v0, Lcom/android/server/search/SearchManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/search/SearchManagerService$Lifecycle$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/search/SearchManagerService$Lifecycle$1;-><init>(Lcom/android/server/search/SearchManagerService$Lifecycle;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method
