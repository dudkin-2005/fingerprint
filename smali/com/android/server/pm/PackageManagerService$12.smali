.class Lcom/android/server/pm/PackageManagerService$12;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$callingUid:I

.field final synthetic val$canViewInstantApps:Z

.field final synthetic val$deleteAllUsers:Z

.field final synthetic val$deleteFlags:I

.field final synthetic val$internalPackageName:Ljava/lang/String;

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$users:[I

.field final synthetic val$versionCode:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZJII[ILandroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .locals 0

    .line 18159
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$callingUid:I

    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$12;->val$canViewInstantApps:Z

    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteAllUsers:Z

    iput-wide p6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$versionCode:J

    iput p8, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    iput p9, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$12;->val$users:[I

    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 18161
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18163
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 18164
    nop

    .line 18165
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 18166
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$callingUid:I

    .line 18167
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    .line 18168
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$12;->val$canViewInstantApps:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 18171
    :cond_0
    move v0, v1

    goto :goto_1

    .line 18168
    :cond_1
    :goto_0
    nop

    .line 18171
    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_7

    .line 18172
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteAllUsers:Z

    if-nez v0, :cond_3

    .line 18173
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$versionCode:J

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v0

    goto :goto_4

    .line 18176
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$12;->val$users:[I

    invoke-static {v0, v3, v4}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[I)[I

    move-result-object v0

    .line 18179
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 18180
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$versionCode:J

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    iget v9, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v0

    goto :goto_3

    .line 18184
    :cond_4
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    and-int/lit8 v3, v3, -0x3

    .line 18185
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$12;->val$users:[I

    array-length v11, v10

    :goto_2
    if-ge v1, v11, :cond_6

    aget v12, v10, v1

    .line 18186
    invoke-static {v0, v12}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    if-nez v4, :cond_5

    .line 18187
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$versionCode:J

    move v8, v12

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v4

    .line 18189
    if-eq v4, v2, :cond_5

    .line 18190
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package delete failed for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", returnCode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18185
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 18197
    :cond_6
    const/4 v0, -0x4

    .line 18199
    :goto_3
    goto :goto_4

    .line 18201
    :cond_7
    const/4 v0, -0x1

    .line 18204
    :goto_4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18207
    goto :goto_5

    .line 18205
    :catch_0
    move-exception v0

    .line 18206
    const-string v0, "PackageManager"

    const-string v1, "Observer no longer exists."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18208
    :goto_5
    return-void
.end method
