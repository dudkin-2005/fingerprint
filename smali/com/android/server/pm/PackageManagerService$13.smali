.class Lcom/android/server/pm/PackageManagerService$13;
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
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZJII[ILjava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .registers 13
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 18969
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$callingUid:I

    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$canViewInstantApps:Z

    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteAllUsers:Z

    iput-wide p6, p0, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    iput p8, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    iput p9, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$13;->val$users:[I

    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    .line 18971
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18973
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 18974
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v3, 0x1

    .line 18978
    .local v3, "doDeletePackage":Z
    const-string v0, ""

    move-object v4, v0

    .line 18980
    .local v4, "versionName":Ljava/lang/String;
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a} :catch_2c

    move-object v4, v0

    .line 18983
    goto :goto_34

    .line 18981
    :catch_2c
    move-exception v0

    .line 18982
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "PackageManager"

    const-string v6, "error while uninstall package"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18986
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_34
    const/4 v0, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4d

    .line 18987
    iget v6, v1, Lcom/android/server/pm/PackageManagerService$13;->val$callingUid:I

    .line 18988
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v6

    .line 18989
    .local v6, "targetIsInstantApp":Z
    if-eqz v6, :cond_4b

    iget-boolean v7, v1, Lcom/android/server/pm/PackageManagerService$13;->val$canViewInstantApps:Z

    if-eqz v7, :cond_49

    goto :goto_4b

    :cond_49
    move v7, v0

    goto :goto_4c

    :cond_4b
    :goto_4b
    move v7, v5

    :goto_4c
    move v3, v7

    .line 18992
    .end local v6    # "targetIsInstantApp":Z
    :cond_4d
    const/16 v6, 0x1c

    const/16 v7, 0x3e7

    if-eqz v3, :cond_114

    .line 18993
    iget-boolean v8, v1, Lcom/android/server/pm/PackageManagerService$13;->val$deleteAllUsers:Z

    if-nez v8, :cond_95

    .line 18994
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iget-wide v11, v1, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    iget v13, v1, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    iget v14, v1, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v8

    .line 18999
    .local v8, "returnCode":I
    new-array v9, v5, [I

    aput v6, v9, v0

    invoke-static {v9}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v9

    if-eqz v9, :cond_115

    sget-object v9, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    .line 19000
    invoke-virtual {v9, v7}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v9

    if-eqz v9, :cond_115

    if-ne v8, v5, :cond_115

    iget v9, v1, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    if-nez v9, :cond_115

    if-eqz v2, :cond_115

    .line 19003
    invoke-virtual {v2, v7}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v9

    if-eqz v9, :cond_115

    .line 19004
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iget-wide v12, v1, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    const/16 v14, 0x3e7

    iget v15, v1, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v8

    goto/16 :goto_115

    .line 19009
    .end local v8    # "returnCode":I
    :cond_95
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$13;->val$users:[I

    # invokes: Lcom/android/server/pm/PackageManagerService;->getBlockUninstallForUsers(Ljava/lang/String;[I)[I
    invoke-static {v8, v9, v10}, Lcom/android/server/pm/PackageManagerService;->access$5600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[I)[I

    move-result-object v8

    .line 19012
    .local v8, "blockUninstallUserIds":[I
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 19013
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iget-wide v12, v1, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    iget v14, v1, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    iget v15, v1, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v9

    .local v9, "returnCode":I
    goto/16 :goto_112

    .line 19017
    .end local v9    # "returnCode":I
    :cond_b5
    iget v9, v1, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    and-int/lit8 v9, v9, -0x3

    .line 19018
    .local v9, "userFlags":I
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$13;->val$users:[I

    array-length v14, v15

    move v12, v0

    :goto_bd
    if-ge v12, v14, :cond_10f

    aget v13, v15, v12

    .line 19019
    .local v13, "userId":I
    invoke-static {v8, v13}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v10

    if-nez v10, :cond_100

    .line 19020
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    move-object/from16 v16, v8

    iget-wide v7, v1, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    .end local v8    # "blockUninstallUserIds":[I
    .local v16, "blockUninstallUserIds":[I
    move/from16 v17, v12

    move/from16 v18, v13

    move-wide v12, v7

    .end local v13    # "userId":I
    .local v18, "userId":I
    move v7, v14

    move/from16 v14, v18

    move-object v8, v15

    move v15, v9

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v10

    .line 19022
    .local v10, "returnCode":I
    if-eq v10, v5, :cond_106

    .line 19023
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package delete failed for user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, v18

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v18    # "userId":I
    .restart local v13    # "userId":I
    const-string v14, ", returnCode "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v10    # "returnCode":I
    .end local v13    # "userId":I
    goto :goto_106

    .line 19018
    .end local v16    # "blockUninstallUserIds":[I
    .restart local v8    # "blockUninstallUserIds":[I
    :cond_100
    move-object/from16 v16, v8

    move/from16 v17, v12

    move v7, v14

    move-object v8, v15

    .end local v8    # "blockUninstallUserIds":[I
    .restart local v16    # "blockUninstallUserIds":[I
    :cond_106
    :goto_106
    add-int/lit8 v12, v17, 0x1

    move v14, v7

    move-object v15, v8

    move-object/from16 v8, v16

    const/16 v7, 0x3e7

    goto :goto_bd

    .line 19030
    .end local v16    # "blockUninstallUserIds":[I
    .restart local v8    # "blockUninstallUserIds":[I
    :cond_10f
    move-object/from16 v16, v8

    .end local v8    # "blockUninstallUserIds":[I
    .restart local v16    # "blockUninstallUserIds":[I
    const/4 v9, -0x4

    .end local v16    # "blockUninstallUserIds":[I
    .local v9, "returnCode":I
    :goto_112
    move v8, v9

    .line 19032
    .end local v9    # "returnCode":I
    .local v8, "returnCode":I
    goto :goto_115

    .line 19034
    .end local v8    # "returnCode":I
    :cond_114
    const/4 v8, -0x1

    .restart local v8    # "returnCode":I
    :cond_115
    :goto_115
    move v7, v8

    .line 19039
    .end local v8    # "returnCode":I
    .local v7, "returnCode":I
    if-ne v7, v5, :cond_12a

    new-array v8, v5, [I

    aput v6, v8, v0

    .line 19040
    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_128

    iget v6, v1, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    const/16 v8, 0x3e7

    if-eq v6, v8, :cond_12a

    :cond_128
    move v0, v5

    nop

    :cond_12a
    move v5, v0

    .line 19043
    .local v5, "isRecord":Z
    if-eqz v5, :cond_156

    .line 19044
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$5700(Lcom/android/server/pm/PackageManagerService;)Lnet/oneplus/odm/insight/FrameworkEventCollector;

    move-result-object v0

    if-nez v0, :cond_143

    .line 19045
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v6, Lnet/oneplus/odm/insight/FrameworkEventCollector;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Lnet/oneplus/odm/insight/FrameworkEventCollector;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/pm/PackageManagerService;->mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;
    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerService;->access$5702(Lcom/android/server/pm/PackageManagerService;Lnet/oneplus/odm/insight/FrameworkEventCollector;)Lnet/oneplus/odm/insight/FrameworkEventCollector;

    .line 19047
    :cond_143
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$5700(Lcom/android/server/pm/PackageManagerService;)Lnet/oneplus/odm/insight/FrameworkEventCollector;

    move-result-object v0

    .line 19048
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    .line 19047
    invoke-virtual {v0, v6, v8, v4}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordUninstallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19055
    :cond_156
    :try_start_156
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v0, v6, v7, v8}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_15e
    .catch Landroid/os/RemoteException; {:try_start_156 .. :try_end_15e} :catch_15f

    .line 19058
    goto :goto_167

    .line 19056
    :catch_15f
    move-exception v0

    .line 19057
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "PackageManager"

    const-string v8, "Observer no longer exists."

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19059
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_167
    return-void
.end method
