.class final Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClearStorageConnection"
.end annotation


# instance fields
.field mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 19374
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0

    .line 19374
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 19379
    monitor-enter p0

    .line 19380
    nop

    .line 19381
    :try_start_0
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 19382
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 19383
    monitor-exit p0

    .line 19384
    return-void

    .line 19383
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 19388
    return-void
.end method