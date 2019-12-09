.class Lcom/android/server/pm/PackageManagerService$11;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$installerPackage:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 15862
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$installerPackage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 15865
    const/4 v0, 0x0

    move v1, v0

    .line 15865
    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_77

    .line 15866
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 15867
    .local v2, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget v4, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-eq v4, v3, :cond_1e

    .line 15868
    goto :goto_74

    .line 15872
    :cond_1e
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v3, :cond_2d

    .line 15873
    const-string v3, "PackageManager"

    const-string/jumbo v4, "notifyFirstLaunch # run # pkg is null. error."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15874
    goto :goto_74

    .line 15877
    :cond_2d
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 15879
    move v3, v0

    .line 15879
    .local v3, "uIndex":I
    :goto_3e
    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    array-length v4, v4

    if-ge v3, v4, :cond_74

    .line 15880
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    aget v5, v5, v3

    if-ne v4, v5, :cond_71

    .line 15881
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz v0, :cond_70

    .line 15882
    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " being restored so deferring FIRST_LAUNCH"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15885
    :cond_70
    return-void

    .line 15879
    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 15865
    .end local v2    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v3    # "uIndex":I
    :cond_74
    :goto_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15891
    .end local v1    # "i":I
    :cond_77
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz v1, :cond_98

    .line 15892
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sending normal FIRST_LAUNCH"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15894
    :cond_98
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/PackageManagerService;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1

    .line 15895
    .local v1, "isInstantApp":Z
    if-eqz v1, :cond_a9

    # getter for: Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3900()[I

    move-result-object v2

    goto :goto_af

    :cond_a9
    new-array v2, v3, [I

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    aput v4, v2, v0

    .line 15896
    .local v2, "userIds":[I
    :goto_af
    if-eqz v1, :cond_b8

    new-array v3, v3, [I

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    aput v4, v3, v0

    goto :goto_bc

    :cond_b8
    # getter for: Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3900()[I

    move-result-object v3

    :goto_bc
    move-object v0, v3

    .line 15897
    .local v0, "instantUserIds":[I
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$11;->val$installerPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V
    invoke-static {v3, v4, v5, v2, v0}, Lcom/android/server/pm/PackageManagerService;->access$4100(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[I[I)V

    .line 15898
    return-void
.end method
