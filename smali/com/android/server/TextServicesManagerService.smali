.class public Lcom/android/server/TextServicesManagerService;
.super Lcom/android/internal/textservice/ITextServicesManager$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;,
        Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;,
        Lcom/android/server/TextServicesManagerService$InternalServiceConnection;,
        Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;,
        Lcom/android/server/TextServicesManagerService$SessionRequest;,
        Lcom/android/server/TextServicesManagerService$TextServicesMonitor;,
        Lcom/android/server/TextServicesManagerService$Lifecycle;,
        Lcom/android/server/TextServicesManagerService$TextServicesData;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

.field private final mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/TextServicesManagerService$TextServicesData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-class v0, Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 325
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 326
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 327
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    .line 328
    new-instance v0, Lcom/android/internal/textservice/LazyIntToIntMap;

    new-instance v1, Lcom/android/server/-$$Lambda$TextServicesManagerService$Gx5nx59gL-Y47MWUiJn5TqC2DLs;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$TextServicesManagerService$Gx5nx59gL-Y47MWUiJn5TqC2DLs;-><init>(Lcom/android/server/TextServicesManagerService;)V

    invoke-direct {v0, v1}, Lcom/android/internal/textservice/LazyIntToIntMap;-><init>(Ljava/util/function/IntUnaryOperator;)V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;

    .line 342
    new-instance v0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    .line 343
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 344
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/TextServicesManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Lcom/android/server/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    .locals 2

    .line 416
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    return p1

    .line 417
    :cond_1
    :goto_0
    sget-object p3, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- bind failed: service = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", conn = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", userId ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 p1, 0x0

    return p1
.end method

.method private findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 11

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    invoke-static {p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1500(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/SpellCheckerInfo;

    .line 437
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_0
    goto :goto_0

    .line 442
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 443
    if-nez p2, :cond_2

    .line 444
    sget-object p1, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string p2, "no available spell checker services found"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 p1, 0x0

    return-object p1

    .line 447
    :cond_2
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 448
    move v3, v1

    :goto_1
    if-ge v3, p2, :cond_4

    .line 449
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/textservice/SpellCheckerInfo;

    .line 450
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 454
    return-object v4

    .line 448
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 462
    :cond_4
    iget-object p1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 463
    nop

    .line 464
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;

    move-result-object p1

    .line 469
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 470
    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_8

    .line 471
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    .line 472
    move v6, v1

    :goto_3
    if-ge v6, p2, :cond_7

    .line 474
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/textservice/SpellCheckerInfo;

    .line 475
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v8

    .line 476
    move v9, v1

    :goto_4
    if-ge v9, v8, :cond_6

    .line 477
    invoke-virtual {v7, v9}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v10

    .line 478
    nop

    .line 479
    invoke-virtual {v10}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    .line 478
    invoke-static {v10}, Lcom/android/internal/inputmethod/InputMethodUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v10

    .line 480
    invoke-virtual {v5, v10}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 484
    return-object v7

    .line 476
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 473
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 470
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 490
    :cond_8
    if-le p2, v2, :cond_9

    .line 491
    sget-object p1, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string p2, "more than one spell checker service found, picking first"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/textservice/SpellCheckerInfo;

    return-object p1
.end method

.method private getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/textservice/LazyIntToIntMap;->get(I)I

    move-result v0

    .line 777
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 779
    if-eq v0, p1, :cond_2

    .line 781
    const/4 p1, 0x0

    if-nez v1, :cond_0

    .line 782
    return-object p1

    .line 784
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 785
    if-nez v0, :cond_1

    .line 786
    return-object p1

    .line 788
    :cond_1
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 789
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 792
    return-object p1

    .line 796
    :cond_2
    return-object v1
.end method

.method private initializeInternalStateLocked(I)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;

    .line 350
    invoke-virtual {v0, p1}, Lcom/android/internal/textservice/LazyIntToIntMap;->get(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 351
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 355
    if-nez v0, :cond_1

    .line 356
    new-instance v0, Lcom/android/server/TextServicesManagerService$TextServicesData;

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/android/server/TextServicesManagerService$TextServicesData;-><init>(ILandroid/content/Context;)V

    .line 357
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    :cond_1
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$900(Lcom/android/server/TextServicesManagerService$TextServicesData;)V

    .line 361
    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    .line 362
    if-nez p1, :cond_2

    .line 363
    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    .line 367
    invoke-direct {p0, p1, v0}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)V

    .line 369
    :cond_2
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/TextServicesManagerService;I)I
    .locals 3

    .line 330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 332
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 333
    if-eqz v2, :cond_0

    iget p1, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 333
    return p1

    .line 335
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)V
    .locals 2

    .line 717
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    nop

    .line 721
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 723
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 726
    nop

    .line 727
    return-void

    .line 725
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .locals 4

    .line 651
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 652
    new-instance v1, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    .line 653
    invoke-static {p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 654
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.textservice.SpellCheckerService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 659
    nop

    .line 660
    invoke-static {p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1700(Lcom/android/server/TextServicesManagerService$TextServicesData;)I

    move-result p1

    .line 659
    const v3, 0x800001

    invoke-direct {p0, v2, v1, v3, p1}, Lcom/android/server/TextServicesManagerService;->bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 661
    sget-object p1, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string p2, "Failed to get a spell checker service."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 p1, 0x0

    return-object p1

    .line 664
    :cond_0
    new-instance p1, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-direct {p1, p0, v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)V

    .line 666
    invoke-static {p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    return-object p1
.end method

.method private unbindServiceLocked(Lcom/android/server/TextServicesManagerService$TextServicesData;)V
    .locals 2

    .line 425
    invoke-static {p1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object p1

    .line 426
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 427
    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 428
    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 430
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 731
    iget-object p1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 733
    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    array-length p1, p3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    aget-object p1, p3, v0

    const-string v2, "-a"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 745
    :cond_1
    array-length p1, p3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    aget-object p1, p3, v0

    const-string v0, "--user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 749
    :cond_2
    aget-object p1, p3, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 750
    iget-object p3, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p3

    .line 751
    if-nez p3, :cond_3

    .line 752
    const-string p1, "Non-existent user."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    return-void

    .line 755
    :cond_3
    iget-object p3, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 756
    if-nez p3, :cond_4

    .line 757
    const-string p1, "User needs to unlock first."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    return-void

    .line 760
    :cond_4
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 761
    :try_start_0
    const-string v1, "Current Text Services Manager state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    invoke-static {p3, p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1800(Lcom/android/server/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 764
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 746
    :cond_5
    :goto_0
    const-string p1, "Invalid arguments to text services."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    return-void

    .line 735
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 736
    :try_start_1
    const-string p3, "Current Text Services Manager state:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 737
    const-string p3, "  Users:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    iget-object p3, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 739
    :goto_2
    if-ge v0, p3, :cond_7

    .line 740
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 741
    invoke-static {v1, p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1800(Lcom/android/server/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 739
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 743
    :cond_7
    monitor-exit p1

    .line 767
    :goto_3
    return-void

    .line 743
    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2
.end method

.method public finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .locals 5

    .line 695
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 697
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 698
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v0

    .line 699
    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    .line 701
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 702
    nop

    .line 703
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    .line 704
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 705
    if-nez v3, :cond_1

    goto :goto_0

    .line 707
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    goto :goto_0

    .line 709
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 710
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    .line 711
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v4, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 710
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 713
    :cond_3
    monitor-exit v1

    .line 714
    return-void

    .line 713
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    .line 500
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 501
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object p1

    .line 503
    if-nez p1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 505
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 506
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 7

    .line 517
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 519
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object p1

    .line 521
    const/4 v1, 0x0

    if-nez p1, :cond_0

    monitor-exit v0

    return-object v1

    .line 523
    :cond_0
    nop

    .line 524
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getSelectedSpellCheckerSubtype(I)I

    move-result v3

    .line 528
    invoke-virtual {p1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    .line 529
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 530
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 537
    :cond_1
    if-nez v3, :cond_2

    if-nez p2, :cond_2

    .line 539
    return-object v1

    .line 541
    :cond_2
    nop

    .line 542
    if-nez v3, :cond_4

    .line 544
    iget-object p2, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 545
    if-eqz p2, :cond_3

    .line 546
    nop

    .line 547
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p2

    .line 548
    if-eqz p2, :cond_3

    .line 549
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object p2

    .line 550
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 552
    goto :goto_0

    .line 556
    :cond_3
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_5

    .line 558
    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 561
    :cond_4
    move-object p2, v1

    .line 562
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    if-ge v2, v0, :cond_a

    .line 563
    invoke-virtual {p1, v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    .line 564
    if-nez v3, :cond_8

    .line 565
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    .line 566
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 567
    return-object v0

    .line 568
    :cond_6
    if-nez v1, :cond_7

    .line 569
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_7

    .line 570
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 572
    goto :goto_2

    .line 575
    :cond_7
    move-object v0, v1

    .line 562
    :goto_2
    move-object v1, v0

    goto :goto_3

    .line 575
    :cond_8
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v4

    if-ne v4, v3, :cond_9

    .line 581
    return-object v0

    .line 562
    :cond_9
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 587
    :cond_a
    return-object v1

    .line 535
    :cond_b
    :goto_4
    return-object v1

    .line 530
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .locals 3

    .line 672
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 674
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 675
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v0

    .line 676
    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 678
    :cond_0
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1500(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object v0

    .line 686
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/textservice/SpellCheckerInfo;

    monitor-exit v1

    return-object v0

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    .locals 9

    .line 594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    if-nez p4, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 600
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 601
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v0

    .line 602
    if-nez v0, :cond_1

    monitor-exit v1

    return-void

    .line 604
    :cond_1
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v2

    .line 605
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 606
    monitor-exit v1

    return-void

    .line 608
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/SpellCheckerInfo;

    .line 609
    nop

    .line 610
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v3

    .line 611
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 612
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 613
    if-nez p1, :cond_3

    .line 614
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 616
    :try_start_1
    invoke-direct {p0, v2, v0}, Lcom/android/server/TextServicesManagerService;->startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 619
    nop

    .line 620
    if-nez p1, :cond_3

    .line 622
    monitor-exit v1

    return-void

    .line 618
    :catchall_0
    move-exception p1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 628
    :cond_3
    new-instance v0, Lcom/android/server/TextServicesManagerService$SessionRequest;

    move-object v3, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/TextServicesManagerService$SessionRequest;-><init>(ILjava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->getISpellCheckerSessionOrQueueLocked(Lcom/android/server/TextServicesManagerService$SessionRequest;)V

    .line 630
    monitor-exit v1

    .line 631
    return-void

    .line 630
    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 595
    :cond_4
    :goto_0
    sget-object p1, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string p2, "getSpellCheckerService: Invalid input."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void
.end method

.method public isSpellCheckerEnabled()Z
    .locals 2

    .line 635
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 637
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 638
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v0

    .line 639
    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 641
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->isSpellCheckerEnabled()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onStopUser(I)V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/textservice/LazyIntToIntMap;->delete(I)V

    .line 310
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 311
    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 313
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/TextServicesManagerService;->unbindServiceLocked(Lcom/android/server/TextServicesManagerService$TextServicesData;)V

    .line 314
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 315
    monitor-exit v0

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method onUnlockUser(I)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->initializeInternalStateLocked(I)V

    .line 322
    monitor-exit v0

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
