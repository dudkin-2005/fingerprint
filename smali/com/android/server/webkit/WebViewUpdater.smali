.class Lcom/android/server/webkit/WebViewUpdater;
.super Ljava/lang/Object;
.source "WebViewUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;,
        Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VALIDITY_INCORRECT_SDK_VERSION:I = 0x1

.field private static final VALIDITY_INCORRECT_SIGNATURE:I = 0x3

.field private static final VALIDITY_INCORRECT_VERSION_CODE:I = 0x2

.field private static final VALIDITY_NO_LIBRARY_FLAG:I = 0x4

.field private static final VALIDITY_OK:I = 0x0

.field private static final WAIT_TIMEOUT_MS:I = 0x3e8


# instance fields
.field private NUMBER_OF_RELROS_UNKNOWN:I

.field private mAnyWebViewInstalled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

.field private final mLock:Ljava/lang/Object;

.field private mMinimumVersionCode:J

.field private mNumRelroCreationsFinished:I

.field private mNumRelroCreationsStarted:I

.field private mSystemInterface:Lcom/android/server/webkit/SystemInterface;

.field private mWebViewPackageDirty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 61
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 63
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 66
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdater;->NUMBER_OF_RELROS_UNKNOWN:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 76
    return-void
.end method

.method private checkIfRelrosDoneLocked()V
    .locals 2

    .line 400
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_1

    .line 401
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    if-eqz v0, :cond_0

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    .line 406
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 407
    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 414
    :goto_0
    goto :goto_1

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 419
    :cond_1
    :goto_1
    return-void
.end method

.method private dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V
    .locals 13

    .line 558
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 559
    const-string v1, "  WebView packages:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 561
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    .line 562
    invoke-interface {v5, v6, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v5

    .line 563
    nop

    .line 564
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/UserPackage;

    invoke-virtual {v5}, Landroid/webkit/UserPackage;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 565
    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 566
    const-string v5, "    %s is NOT installed."

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v4, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    goto :goto_2

    .line 570
    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/android/server/webkit/WebViewUpdater;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v7

    .line 571
    const-string/jumbo v8, "versionName: %s, versionCode: %d, targetSdkVersion: %d"

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v11, v10, v2

    .line 574
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v6

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 575
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 571
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 576
    if-nez v7, :cond_2

    .line 577
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v10, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    .line 578
    invoke-interface {v7, v10, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v4

    .line 577
    invoke-static {v4}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v4

    .line 579
    const-string v7, "    Valid package %s (%s) is %s installed/enabled for all users"

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v9, v2

    aput-object v8, v9, v6

    .line 583
    if-eqz v4, :cond_1

    const-string v4, ""

    goto :goto_1

    :cond_1
    const-string v4, "NOT"

    :goto_1
    aput-object v4, v9, v12

    .line 579
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    goto :goto_2

    .line 585
    :cond_2
    const-string v4, "    Invalid package %s (%s), reason: %s"

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v9, v2

    aput-object v8, v9, v6

    .line 588
    invoke-static {v7}, Lcom/android/server/webkit/WebViewUpdater;->getInvalidityReason(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v12

    .line 585
    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 591
    :cond_3
    return-void
.end method

.method private findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
        }
    .end annotation

    .line 285
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 291
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 292
    iget-object v6, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-object v6, v6, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 294
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    iget-object v8, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 295
    invoke-interface {v6, v7, v8}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v6

    .line 297
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 298
    iget-object v0, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v0

    .line 291
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 306
    :cond_1
    array-length v1, v0

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    .line 307
    iget-object v5, v4, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-boolean v5, v5, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v5, :cond_2

    .line 309
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    iget-object v7, v4, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 310
    invoke-interface {v5, v6, v7}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v5

    .line 312
    invoke-static {v5}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 313
    iget-object v0, v4, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v0

    .line 306
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 319
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 320
    new-instance v0, Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;

    const-string v1, "Could not find a loadable WebView package"

    invoke-direct {v0, v1}, Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getInvalidityReason(I)Ljava/lang/String;
    .locals 0

    .line 594
    packed-switch p0, :pswitch_data_0

    .line 604
    const-string p0, "Unexcepted validity-reason"

    return-object p0

    .line 602
    :pswitch_0
    const-string p0, "No WebView-library manifest flag"

    return-object p0

    .line 600
    :pswitch_1
    const-string p0, "Incorrect signature"

    return-object p0

    .line 598
    :pswitch_2
    const-string p0, "Version code too low"

    return-object p0

    .line 596
    :pswitch_3
    const-string p0, "SDK version too low"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMinimumVersionCode()J
    .locals 10

    .line 482
    iget-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 483
    iget-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    return-wide v0

    .line 486
    :cond_0
    const-wide/16 v0, -0x1

    .line 487
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v4}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 488
    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-nez v8, :cond_3

    .line 490
    :try_start_0
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, v7, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 491
    invoke-interface {v8, v7}, Lcom/android/server/webkit/SystemInterface;->getFactoryPackageVersion(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    cmp-long v9, v0, v2

    if-ltz v9, :cond_1

    cmp-long v9, v7, v0

    if-gez v9, :cond_2

    .line 493
    :cond_1
    nop

    .line 497
    move-wide v0, v7

    :cond_2
    goto :goto_1

    .line 495
    :catch_0
    move-exception v7

    .line 487
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 501
    :cond_4
    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    .line 502
    iget-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    return-wide v0
.end method

.method private getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    .locals 6

    .line 262
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 266
    :try_start_0
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    aget-object v4, v0, v2

    .line 267
    invoke-interface {v3, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 268
    aget-object v4, v0, v2

    invoke-virtual {p0, v4, v3}, Lcom/android/server/webkit/WebViewUpdater;->isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    new-instance v4, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    aget-object v5, v0, v2

    invoke-direct {v4, v5, v3}, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;-><init>(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    goto :goto_1

    .line 271
    :catch_0
    move-exception v3

    .line 264
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    return-object v0
.end method

.method static isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/webkit/UserPackage;",
            ">;)Z"
        }
    .end annotation

    .line 330
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/UserPackage;

    .line 331
    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 334
    :cond_0
    goto :goto_0

    .line 332
    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0

    .line 335
    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 219
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v2, v3, :cond_0

    .line 220
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 225
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->NUMBER_OF_RELROS_UNKNOWN:I

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 226
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 227
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 228
    invoke-interface {v1, p1}, Lcom/android/server/webkit/SystemInterface;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result p1

    iput p1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 231
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->checkIfRelrosDoneLocked()V

    goto :goto_0

    .line 233
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    .line 235
    :goto_0
    monitor-exit v0

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z
    .locals 5

    .line 507
    invoke-interface {p2}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 508
    return v0

    .line 512
    :cond_0
    iget-object p2, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_5

    iget-object p2, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 515
    :cond_1
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    return v1

    .line 518
    :cond_2
    iget-object p0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_4

    aget-object v3, p0, v2

    .line 519
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    .line 518
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    :cond_4
    return v1

    .line 513
    :cond_5
    :goto_1
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0

    return p0
.end method

.method private validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I
    .locals 4

    .line 430
    invoke-static {p2}, Landroid/webkit/UserPackage;->hasCorrectTargetSdkVersion(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    const/4 p1, 0x1

    return p1

    .line 433
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->getMinimumVersionCode()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/webkit/WebViewUpdater;->versionCodeGE(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 434
    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 437
    const/4 p1, 0x2

    return p1

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-static {p1, p2, v0}, Lcom/android/server/webkit/WebViewUpdater;->providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 440
    const/4 p1, 0x3

    return p1

    .line 442
    :cond_2
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 443
    const/4 p1, 0x4

    return p1

    .line 445
    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private static versionCodeGE(JJ)Z
    .locals 2

    .line 465
    const-wide/32 v0, 0x186a0

    div-long/2addr p0, v0

    .line 466
    div-long/2addr p2, v0

    .line 468
    cmp-long p0, p0, p2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private webViewIsReadyLocked()Z
    .locals 2

    .line 391
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdater;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 166
    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 167
    :cond_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method dumpState(Ljava/io/PrintWriter;)V
    .locals 8

    .line 525
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 527
    const-string v1, "  Current WebView package is null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :cond_0
    const-string v1, "  Current WebView package (name, version): (%s, %s)"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    :goto_0
    const-string v1, "  Minimum WebView version code: %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    .line 534
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    .line 533
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    const-string v1, "  Number of relros started: %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 536
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 535
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    const-string v1, "  Number of relros finished: %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 538
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 537
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    const-string v1, "  WebView package dirty: %b"

    new-array v5, v3, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    const-string v1, "  Any WebView package installed: %b"

    new-array v5, v3, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 541
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    .line 540
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 545
    const-string v5, "  Preferred WebView package (name, version): (%s, %s)"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v6, v2, v4

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    goto :goto_1

    .line 549
    :catch_0
    move-exception v1

    .line 550
    :try_start_2
    const-string v1, "  Preferred WebView package: none"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdater;->dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V

    .line 554
    monitor-exit v0

    .line 555
    return-void

    .line 554
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    monitor-exit v0

    return-object v1

    .line 383
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 4

    .line 242
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    move-result-object v0

    .line 243
    array-length v1, v0

    new-array v1, v1, [Landroid/webkit/WebViewProviderInfo;

    .line 245
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 246
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    aput-object v3, v1, v2

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    :cond_0
    return-object v1
.end method

.method isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z
    .locals 0

    .line 425
    invoke-direct {p0, p1, p2}, Lcom/android/server/webkit/WebViewUpdater;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method notifyRelroCreationCompleted()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 341
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->checkIfRelrosDoneLocked()V

    .line 342
    monitor-exit v0

    .line 343
    return-void

    .line 342
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method packageStateChanged(Ljava/lang/String;I)V
    .locals 10

    .line 79
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, v0, v3

    .line 80
    iget-object v5, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 82
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 83
    nop

    .line 84
    nop

    .line 85
    nop

    .line 86
    nop

    .line 87
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 89
    const/4 p1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    if-nez p2, :cond_0

    :try_start_1
    iget-object p2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 93
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    .line 97
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 99
    :cond_0
    :try_start_3
    iget-object p2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iget-object p2, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-wide v8, p2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_3
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long p2, v6, v8

    if-nez p2, :cond_2

    .line 103
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 109
    :cond_1
    move-object v1, p1

    :cond_2
    :try_start_5
    iget-object p2, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 110
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 111
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p2, :cond_3

    goto :goto_1

    .line 115
    :cond_3
    move p2, v2

    goto :goto_2

    .line 111
    :cond_4
    :goto_1
    nop

    .line 115
    const/4 p2, 0x1

    :goto_2
    :try_start_6
    iget-object v3, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 116
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_6
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 117
    if-eqz p2, :cond_5

    .line 118
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_7
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 120
    :catch_0
    move-exception v0

    goto :goto_4

    .line 124
    :cond_5
    :goto_3
    goto :goto_7

    .line 120
    :catch_1
    move-exception v0

    move v3, v2

    :goto_4
    move v2, p2

    move-object p2, v0

    goto :goto_6

    :catch_2
    move-exception p2

    goto :goto_5

    .line 125
    :catchall_0
    move-exception p1

    goto :goto_8

    .line 120
    :catch_3
    move-exception p2

    move-object v1, p1

    :goto_5
    move v3, v2

    .line 121
    :goto_6
    :try_start_8
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 122
    sget-object p1, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find valid WebView package to create relro with "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    move p2, v2

    :goto_7
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 126
    if-eqz p2, :cond_6

    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    .line 132
    iget-object p1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {p1, v1}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    .line 134
    :cond_6
    return-void

    .line 125
    :goto_8
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p1

    .line 79
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 137
    :cond_8
    return-void
.end method

.method prepareWebViewInSystemServer()V
    .locals 4

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 148
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 151
    monitor-exit v0

    .line 155
    goto :goto_0

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    sget-object v1, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    const-string v2, "error preparing webview provider from system server"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    :goto_0
    return-void
.end method

.method updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 5

    .line 176
    nop

    .line 177
    nop

    .line 178
    nop

    .line 179
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, p1}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 188
    if-eqz v1, :cond_2

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 196
    :goto_1
    nop

    .line 198
    if-eqz v2, :cond_3

    .line 199
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 201
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 204
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    .line 209
    :cond_4
    return-object p1

    .line 190
    :catch_0
    move-exception p1

    .line 193
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 194
    sget-object v2, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find WebView package to use "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    monitor-exit v0

    return-object v1

    .line 201
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 9

    .line 346
    nop

    .line 348
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v0, v4

    .line 349
    nop

    .line 350
    nop

    .line 351
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 352
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->webViewIsReadyLocked()Z

    move-result v5

    .line 353
    :goto_0
    if-nez v5, :cond_1

    .line 354
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    cmp-long v8, v6, v0

    if-ltz v8, :cond_0

    goto :goto_2

    .line 357
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    sub-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    goto :goto_1

    :catch_0
    move-exception v5

    .line 359
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->webViewIsReadyLocked()Z

    move-result v5

    .line 360
    goto :goto_0

    .line 362
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 363
    if-eqz v5, :cond_2

    .line 375
    const/4 v1, 0x0

    goto :goto_3

    .line 364
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    if-nez v1, :cond_3

    .line 365
    const/4 v1, 0x4

    goto :goto_3

    .line 369
    :cond_3
    const/4 v1, 0x3

    .line 370
    sget-object v2, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timed out waiting for relro creation, relros started "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " relros finished "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " package dirty? "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 376
    if-nez v5, :cond_4

    sget-object v2, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    const-string v3, "creating relro file timed out"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_4
    new-instance v2, Landroid/webkit/WebViewProviderResponse;

    invoke-direct {v2, v0, v1}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/content/pm/PackageInfo;I)V

    return-object v2

    .line 375
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
