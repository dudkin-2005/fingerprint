.class Lcom/android/server/am/ActivityStartInterceptor;
.super Ljava/lang/Object;
.source "ActivityStartInterceptor.java"


# instance fields
.field mAInfo:Landroid/content/pm/ActivityInfo;

.field mActivityOptions:Landroid/app/ActivityOptions;

.field private mCallingPackage:Ljava/lang/String;

.field mCallingPid:I

.field mCallingUid:I

.field mInTask:Lcom/android/server/am/TaskRecord;

.field mIntent:Landroid/content/Intent;

.field mRInfo:Landroid/content/pm/ResolveInfo;

.field private mRealCallingPid:I

.field private mRealCallingUid:I

.field mResolvedType:Ljava/lang/String;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mServiceContext:Landroid/content/Context;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private final mUserController:Lcom/android/server/am/UserController;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 2

    .line 103
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/am/ActivityStartInterceptor;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;Lcom/android/server/am/UserController;)V

    .line 104
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;Lcom/android/server/am/UserController;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 110
    iput-object p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 111
    iput-object p3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    .line 112
    iput-object p4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserController:Lcom/android/server/am/UserController;

    .line 113
    return-void
.end method

.method private createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;
    .locals 12

    .line 129
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->deferCrossProfileAppsAnimationIfNecessary()Landroid/os/Bundle;

    move-result-object v11

    .line 130
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    const/4 v1, 0x1

    new-array v8, v1, [Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v3, v8, v5

    new-array v9, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    aput-object v1, v9, v5

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    move v10, p2

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object p1

    .line 135
    new-instance p2, Landroid/content/IntentSender;

    invoke-direct {p2, p1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object p2
.end method

.method private deferCrossProfileAppsAnimationIfNecessary()Landroid/os/Bundle;
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 183
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    .line 184
    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 185
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 187
    :cond_0
    return-object v1
.end method

.method private interceptHarmfulAppIfNeeded()Z
    .locals 7

    .line 322
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    .line 323
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    nop

    .line 328
    if-nez v1, :cond_0

    .line 329
    return v0

    .line 332
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v2, 0x54000000

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 335
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/app/HarmfulAppWarningActivity;->createHarmfulAppWarningIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 338
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 339
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 342
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 343
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 344
    const/4 v0, 0x1

    return v0

    .line 324
    :catch_0
    move-exception v1

    .line 325
    return v0
.end method

.method private interceptQuietProfileIfNeeded()Z
    .locals 8

    .line 192
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    return v0

    .line 196
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v1, 0x50000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 199
    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1, v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 200
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 201
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 205
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 206
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method private interceptSuspendedByAdminPackage()Z
    .locals 9

    .line 211
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 212
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 213
    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_0
    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 217
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string v1, "android.app.extra.RESTRICTION"

    const-string/jumbo v3, "policy_suspend_packages"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 220
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_1

    .line 225
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_0

    .line 228
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 232
    return v2
.end method

.method private interceptSuspendedPackageIfNeeded()Z
    .locals 7

    .line 237
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 242
    if-nez v0, :cond_1

    .line 243
    return v1

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 246
    iget v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 247
    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptSuspendedByAdminPackage()Z

    move-result v0

    return v0

    .line 250
    :cond_2
    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getSuspendedDialogMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 251
    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/app/SuspendedAppActivity;->createSuspendedAppInterceptIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 253
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 254
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 257
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 258
    const/4 v0, 0x1

    return v0

    .line 239
    :cond_3
    :goto_0
    return v1
.end method

.method private interceptWithConfirmCredentialsIfNeeded(Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p2}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 301
    return-object v1

    .line 304
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/high16 v2, 0x54000000

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v0

    .line 306
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    const-string v3, "keyguard"

    .line 307
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 308
    invoke-virtual {v2, v1, v1, p2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object p2

    .line 309
    if-nez p2, :cond_1

    .line 310
    return-object v1

    .line 312
    :cond_1
    const v1, 0x10804000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 314
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string p1, "android.intent.extra.INTENT"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 316
    return-object p2
.end method

.method private interceptWorkProfileChallengeIfNeeded()Z
    .locals 8

    .line 262
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStartInterceptor;->interceptWithConfirmCredentialsIfNeeded(Landroid/content/pm/ActivityInfo;I)Landroid/content/Intent;

    move-result-object v0

    .line 263
    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    return v0

    .line 266
    :cond_0
    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 267
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 268
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.TASK_ID"

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v1, :cond_2

    .line 278
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 285
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 288
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 290
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 291
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    .line 148
    iput-object p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 149
    iput p6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 150
    iput p7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 151
    iput-object p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 152
    iput-object p3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 153
    iput-object p4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 154
    iput-object p5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 155
    iput-object p8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 157
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptSuspendedPackageIfNeeded()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 160
    return p2

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptQuietProfileIfNeeded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 165
    return p2

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptHarmfulAppIfNeeded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 170
    return p2

    .line 172
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptWorkProfileChallengeIfNeeded()Z

    move-result p1

    return p1
.end method

.method setStates(IIIILjava/lang/String;)V
    .locals 0

    .line 121
    iput p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    .line 122
    iput p3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    .line 123
    iput p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    .line 124
    iput p4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    .line 125
    iput-object p5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    .line 126
    return-void
.end method
