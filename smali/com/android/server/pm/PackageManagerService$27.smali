.class Lcom/android/server/pm/PackageManagerService$27;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

.field final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$moveId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/CountDownLatch;Lcom/android/server/pm/PackageManagerService$PackageFreezer;I)V
    .locals 0

    .line 23306
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$27;->val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23318
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$27;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 23319
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$27;->val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    .line 23321
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result p1

    .line 23322
    if-eqz p1, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    .line 23332
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->access$5900(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object p1

    iget p2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    const/4 p3, -0x6

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$6000(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_0

    .line 23328
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->access$5900(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object p1

    iget p2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    const/4 p3, -0x1

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$6000(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 23330
    goto :goto_0

    .line 23324
    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->access$5900(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object p1

    iget p2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    const/16 p3, -0x64

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$6000(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 23326
    nop

    .line 23336
    :goto_0
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23309
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
