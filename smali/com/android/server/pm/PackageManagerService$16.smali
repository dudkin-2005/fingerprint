.class Lcom/android/server/pm/PackageManagerService$16;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$callingUid:I

.field final synthetic val$hasAccessInstantApps:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;IIILjava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 0

    .line 19772
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$callingUid:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$hasAccessInstantApps:I

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 19774
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 19775
    :goto_0
    nop

    .line 19776
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 19777
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$callingUid:I

    .line 19778
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    .line 19779
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$16;->val$hasAccessInstantApps:I

    if-nez v0, :cond_1

    goto :goto_1

    .line 19782
    :cond_1
    move v0, v1

    goto :goto_2

    .line 19779
    :cond_2
    :goto_1
    nop

    .line 19782
    :cond_3
    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    .line 19783
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 19788
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    const/16 v6, 0x103

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->access$5200(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V

    .line 19789
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    const/16 v6, 0x203

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->access$5200(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V

    .line 19790
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19791
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    invoke-static {v0, v3, v4, v1}, Lcom/android/server/pm/PackageManagerService;->access$5000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    goto :goto_3

    .line 19790
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 19793
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v0, :cond_5

    .line 19795
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 19798
    goto :goto_4

    .line 19796
    :catch_0
    move-exception v0

    .line 19797
    const-string v0, "PackageManager"

    const-string v1, "Observer no longer exists."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19800
    :cond_5
    :goto_4
    return-void
.end method
