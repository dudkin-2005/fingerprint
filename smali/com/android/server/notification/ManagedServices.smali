.class public abstract Lcom/android/server/notification/ManagedServices;
.super Ljava/lang/Object;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ManagedServices$Config;,
        Lcom/android/server/notification/ManagedServices$UserProfiles;,
        Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    }
.end annotation


# static fields
.field static final APPROVAL_BY_COMPONENT:I = 0x1

.field static final APPROVAL_BY_PACKAGE:I = 0x0

.field static final ATT_APPROVED_LIST:Ljava/lang/String; = "approved"

.field static final ATT_IS_PRIMARY:Ljava/lang/String; = "primary"

.field static final ATT_USER_ID:Ljava/lang/String; = "user"

.field static final ATT_VERSION:Ljava/lang/String; = "version"

.field static final DB_VERSION:I = 0x1

.field protected static final ENABLED_SERVICES_SEPARATOR:Ljava/lang/String; = ":"

.field private static final ON_BINDING_DIED_REBIND_DELAY_MS:I = 0x2710

.field static final TAG_MANAGED_SERVICES:Ljava/lang/String; = "service_listing"


# instance fields
.field protected final DEBUG:Z

.field protected final TAG:Ljava/lang/String;

.field protected mApprovalLevel:I

.field private mApproved:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Boolean;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/android/server/notification/ManagedServices$Config;

.field protected final mContext:Landroid/content/Context;

.field private mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledServicesPackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastSeenProfileIds:[I

.field protected final mMutex:Ljava/lang/Object;

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mServicesBinding:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mServicesRebinding:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSnoozingForCurrentProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUm:Landroid/os/UserManager;

.field private mUseXml:Z

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mutex"    # Ljava/lang/Object;
    .param p3, "userProfiles"    # Lcom/android/server/notification/ManagedServices$UserProfiles;
    .param p4, "pm"    # Landroid/content/pm/IPackageManager;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mHandler:Landroid/os/Handler;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServicesRebinding:Landroid/util/ArraySet;

    .line 130
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    .line 133
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    .line 135
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    .line 140
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 154
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 156
    iput-object p3, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 157
    iput-object p4, p0, Lcom/android/server/notification/ManagedServices;->mPm:Landroid/content/pm/IPackageManager;

    .line 158
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 159
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    .line 160
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .line 92
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServicesRebinding:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .line 92
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 8
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;
    .param p1, "x1"    # Landroid/os/IInterface;
    .param p2, "x2"    # Landroid/content/ComponentName;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Landroid/content/ServiceConnection;
    .param p6, "x6"    # I

    .line 92
    invoke-direct/range {p0 .. p6}, Lcom/android/server/notification/ManagedServices;->newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .line 92
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .line 92
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/notification/ManagedServices;Landroid/content/ComponentName;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->registerService(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/notification/ManagedServices;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .line 92
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .line 92
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;
    .param p1, "x1"    # Landroid/os/IInterface;
    .param p2, "x2"    # I

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ManagedServices;

    .line 92
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    return-object v0
.end method

.method private checkNotNull(Landroid/os/IInterface;)V
    .registers 5
    .param p1, "service"    # Landroid/os/IInterface;

    .line 1109
    if-eqz p1, :cond_3

    .line 1112
    return-void

    .line 1110
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApprovedValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "pkgOrComponent"    # Ljava/lang/String;

    .line 460
    iget v0, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 461
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 462
    return-object p1

    .line 464
    :cond_c
    const/4 v0, 0x0

    return-object v0

    .line 466
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCaption()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    return-object v0
.end method

.method private getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 8
    .param p1, "service"    # Landroid/os/IInterface;

    .line 571
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 572
    return-object v0

    .line 574
    :cond_4
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 575
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 576
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_25

    .line 577
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 578
    .local v4, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v5, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v1, :cond_22

    return-object v4

    .line 576
    .end local v4    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 580
    .end local v3    # "i":I
    :cond_25
    return-object v0
.end method

.method private hasMatchingServices(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageOrComponent"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 782
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 783
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_17

    const/4 v1, 0x1

    nop

    :cond_17
    return v1

    .line 786
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_18
    return v1
.end method

.method private loadAllowedComponentsFromSettings()V
    .registers 7

    .line 387
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 388
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 389
    .local v2, "cr":Landroid/content/ContentResolver;
    nop

    .line 391
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 389
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/notification/ManagedServices;->addApprovedList(Ljava/lang/String;IZ)V

    .line 393
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 394
    nop

    .line 396
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 394
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/notification/ManagedServices;->addApprovedList(Ljava/lang/String;IZ)V

    .line 399
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "cr":Landroid/content/ContentResolver;
    :cond_4e
    goto :goto_a

    .line 400
    :cond_4f
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string v1, "Done loading approved values from settings"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method

.method private loadComponentNamesFromValues(Landroid/util/ArraySet;I)Landroid/util/ArraySet;
    .registers 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 664
    .local p1, "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3a

    .line 666
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 667
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 668
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 669
    .local v2, "packageOrComponent":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 670
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 671
    .local v3, "component":Landroid/content/ComponentName;
    if-eqz v3, :cond_2f

    .line 672
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 674
    :cond_2f
    invoke-virtual {p0, v2, p2}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 667
    .end local v2    # "packageOrComponent":Ljava/lang/String;
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 678
    .end local v1    # "i":I
    :cond_39
    return-object v0

    .line 665
    .end local v0    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_3a
    :goto_3a
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method private newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 16
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "isSystem"    # Z
    .param p5, "connection"    # Landroid/content/ServiceConnection;
    .param p6, "targetSdkVersion"    # I

    .line 187
    new-instance v8, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;-><init>(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)V

    return-object v8
.end method

.method private registerService(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    .line 903
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 904
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;I)V

    .line 905
    monitor-exit v0

    .line 906
    return-void

    .line 905
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 11
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I

    .line 1116
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x15

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/ManagedServices;->newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 1118
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-direct {p0, v0}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    return-object v1
.end method

.method private registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1122
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1124
    :try_start_3
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1125
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_12} :catch_16
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 1126
    :try_start_12
    monitor-exit v0

    return-object p1

    .line 1130
    :catchall_14
    move-exception v1

    goto :goto_1a

    .line 1127
    :catch_16
    move-exception v1

    .line 1130
    monitor-exit v0

    .line 1131
    const/4 v0, 0x0

    return-object v0

    .line 1130
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_14

    throw v1
.end method

.method private registerServiceLocked(Landroid/content/ComponentName;I)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    .line 918
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;IZ)V

    .line 919
    return-void
.end method

.method private registerServiceLocked(Landroid/content/ComponentName;IZ)V
    .registers 20
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I
    .param p3, "isSystem"    # Z

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 923
    iget-boolean v0, v7, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_29

    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 926
    .local v10, "servicesBindingTag":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 927
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not registering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " as bind is already in progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-void

    .line 931
    :cond_65
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 934
    .local v11, "N":I
    add-int/lit8 v0, v11, -0x1

    .line 934
    .local v0, "i":I
    :goto_72
    move v1, v0

    .line 934
    .end local v0    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_d7

    .line 935
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 936
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v0, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    iget v0, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v0, v9, :cond_d4

    .line 939
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    disconnecting old "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-direct {v7, v1}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 941
    iget-object v0, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_d4

    .line 943
    :try_start_b5
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_bc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b5 .. :try_end_bc} :catch_bd

    .line 946
    goto :goto_d4

    .line 944
    :catch_bd
    move-exception v0

    .line 945
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, v7, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to unbind "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_d4
    :goto_d4
    add-int/lit8 v0, v1, -0x1

    .line 934
    .end local v1    # "i":I
    .local v0, "i":I
    goto :goto_72

    .line 951
    .end local v0    # "i":I
    :cond_d7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v7, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 952
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual {v12, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 954
    const-string v0, "android.intent.extra.client_label"

    iget-object v1, v7, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget v1, v1, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 956
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v7, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 958
    .local v13, "pendingIntent":Landroid/app/PendingIntent;
    const-string v0, "android.intent.extra.client_intent"

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 960
    const/4 v14, 0x0

    move-object v1, v14

    .line 962
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_104
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 963
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 962
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_112
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_104 .. :try_end_112} :catch_114

    move-object v1, v0

    .line 966
    goto :goto_115

    .line 964
    :catch_114
    move-exception v0

    .line 968
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v15, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_115
    move-object v15, v1

    if-eqz v15, :cond_11c

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :goto_11a
    move v6, v0

    goto :goto_11e

    :cond_11c
    const/4 v0, 0x1

    goto :goto_11a

    .line 971
    .local v6, "targetSdkVersion":I
    :goto_11e
    :try_start_11e
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v0, Lcom/android/server/notification/ManagedServices$1;

    move-object v1, v0

    move-object v2, v7

    move-object v3, v10

    move v4, v9

    move/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/ManagedServices$1;-><init>(Lcom/android/server/notification/ManagedServices;Ljava/lang/String;IZI)V

    .line 1030
    .local v0, "serviceConnection":Landroid/content/ServiceConnection;
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v1, :cond_189

    .line 1031
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " registerServiceLocked # servicesBindingTag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1032
    invoke-static {v14}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/server/am/OnePlusAppBootManager;->canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_189

    .line 1033
    iget-object v1, v7, Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1034
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forbid to to bind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    return-void

    .line 1039
    :cond_189
    iget-object v1, v7, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    const v2, 0x5000001

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v12, v0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1c1

    .line 1043
    iget-object v1, v7, Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1044
    iget-object v1, v7, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to bind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c0
    .catch Ljava/lang/SecurityException; {:try_start_11e .. :try_end_1c0} :catch_1c2

    .line 1045
    return-void

    .line 1050
    .end local v0    # "serviceConnection":Landroid/content/ServiceConnection;
    :cond_1c1
    goto :goto_1ea

    .line 1047
    :catch_1c2
    move-exception v0

    .line 1048
    .local v0, "ex":Ljava/lang/SecurityException;
    iget-object v1, v7, Lcom/android/server/notification/ManagedServices;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1049
    iget-object v1, v7, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to bind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1051
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :goto_1ea
    return-void
.end method

.method private removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 11
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    .line 1087
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeServiceImpl service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_23
    const/4 v0, 0x0

    .line 1089
    .local v0, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1090
    :try_start_27
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1091
    .local v2, "N":I
    add-int/lit8 v3, v2, -0x1

    .line 1091
    .local v3, "i":I
    :goto_2f
    if-ltz v3, :cond_69

    .line 1092
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1093
    .local v4, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v5, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v5, v6, :cond_66

    iget v5, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v5, p2, :cond_66

    .line 1094
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing active service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-direct {p0, v3}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v5

    move-object v0, v5

    .line 1091
    .end local v4    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_66
    add-int/lit8 v3, v3, -0x1

    goto :goto_2f

    .line 1098
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_69
    monitor-exit v1

    .line 1099
    return-object v0

    .line 1098
    :catchall_6b
    move-exception v2

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_27 .. :try_end_6d} :catchall_6b

    throw v2
.end method

.method private removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 3
    .param p1, "i"    # I

    .line 1103
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1104
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1105
    return-object v0
.end method

.method private removeUninstalledItemsFromApprovedLists(ILjava/lang/String;)Z
    .registers 15
    .param p1, "uninstalledUserId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 747
    .local v1, "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_5c

    .line 748
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 749
    .local v2, "M":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_14
    if-ge v3, v2, :cond_5c

    .line 750
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 751
    .local v4, "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 752
    .local v5, "O":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "k":I
    :goto_22
    if-ltz v6, :cond_59

    .line 753
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 754
    .local v7, "packageOrComponent":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 755
    .local v8, "packageName":Ljava/lang/String;
    invoke-static {p2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_56

    .line 756
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 757
    iget-boolean v9, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v9, :cond_56

    .line 758
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from approved list; uninstalled"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    .end local v7    # "packageOrComponent":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_56
    add-int/lit8 v6, v6, -0x1

    goto :goto_22

    .line 749
    .end local v4    # "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "O":I
    .end local v6    # "k":I
    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 765
    .end local v2    # "M":I
    .end local v3    # "j":I
    :cond_5c
    return v0
.end method

.method private trimApprovedListsAccordingToInstalledServices()V
    .registers 15

    .line 719
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 720
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_86

    .line 721
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 722
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 723
    .local v4, "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 724
    .local v5, "M":I
    move v6, v1

    .local v6, "j":I
    :goto_23
    if-ge v6, v5, :cond_83

    .line 725
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 726
    .local v7, "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    .line 727
    .local v8, "P":I
    add-int/lit8 v9, v8, -0x1

    .local v9, "k":I
    :goto_31
    if-ltz v9, :cond_80

    .line 728
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 729
    .local v10, "approvedPackageOrComponent":Ljava/lang/String;
    invoke-virtual {p0, v10, v3}, Lcom/android/server/notification/ManagedServices;->isValidEntry(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_5e

    .line 730
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 731
    iget-object v11, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " from approved list; no matching services found"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 734
    :cond_5e
    iget-boolean v11, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v11, :cond_7d

    .line 735
    iget-object v11, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Keeping "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " on approved list; matching services found"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    .end local v10    # "approvedPackageOrComponent":Ljava/lang/String;
    :cond_7d
    :goto_7d
    add-int/lit8 v9, v9, -0x1

    goto :goto_31

    .line 724
    .end local v7    # "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "P":I
    .end local v9    # "k":I
    :cond_80
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 720
    .end local v3    # "userId":I
    .end local v4    # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v5    # "M":I
    .end local v6    # "j":I
    :cond_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 742
    .end local v2    # "i":I
    :cond_86
    return-void
.end method

.method private unregisterService(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    .line 1057
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1058
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->unregisterServiceLocked(Landroid/content/ComponentName;I)V

    .line 1059
    monitor-exit v0

    .line 1060
    return-void

    .line 1059
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private unregisterServiceImpl(Landroid/os/IInterface;I)V
    .registers 6
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    .line 1138
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 1139
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_17

    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_17

    invoke-virtual {v0, p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1140
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1142
    :cond_17
    return-void
.end method

.method private unregisterServiceLocked(Landroid/content/ComponentName;I)V
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    .line 1063
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1064
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_56

    .line 1065
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1066
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v3, p2, :cond_53

    .line 1067
    invoke-direct {p0, v1}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1068
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_53

    .line 1070
    :try_start_25
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_2c} :catch_2d

    .line 1075
    goto :goto_53

    .line 1071
    :catch_2d
    move-exception v3

    .line 1074
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " could not be unbound: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_53
    :goto_53
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1079
    .end local v1    # "i":I
    :cond_56
    return-void
.end method


# virtual methods
.method protected addApprovedList(Ljava/lang/String;IZ)V
    .registers 11
    .param p1, "approved"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isPrimary"    # Z

    .line 404
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 405
    const-string p1, ""

    .line 407
    :cond_8
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 408
    .local v0, "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-nez v0, :cond_25

    .line 409
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 410
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_25
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 414
    .local v1, "approvedList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_3e

    .line 415
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 416
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_3e
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "approvedArray":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_46
    if-ge v4, v3, :cond_56

    aget-object v5, v2, v4

    .line 421
    .local v5, "pkgOrComponent":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/notification/ManagedServices;->getApprovedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 422
    .local v6, "approvedItem":Ljava/lang/String;
    if-eqz v6, :cond_53

    .line 423
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v5    # "pkgOrComponent":Ljava/lang/String;
    .end local v6    # "approvedItem":Ljava/lang/String;
    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 426
    :cond_56
    return-void
.end method

.method protected abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method protected checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 6
    .param p1, "service"    # Landroid/os/IInterface;

    .line 595
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 596
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 597
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_a

    .line 598
    return-object v0

    .line 600
    :cond_a
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed call from unknown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract checkType(Landroid/os/IInterface;)Z
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 20
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 236
    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000001L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 237
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 238
    .local v3, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19
    if-ge v5, v3, :cond_99

    .line 239
    iget-object v6, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 240
    .local v6, "userId":I
    iget-object v7, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 241
    .local v7, "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-eqz v7, :cond_94

    .line 242
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 243
    .local v8, "M":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_36
    if-ge v9, v8, :cond_94

    .line 244
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 245
    .local v10, "isPrimary":Z
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 246
    .local v11, "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v7, :cond_8d

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-lez v12, :cond_8d

    .line 247
    const-wide v12, 0x20b00000002L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 248
    .local v12, "sToken":J
    invoke-virtual {v11}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_77

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 249
    .local v15, "s":Ljava/lang/String;
    move/from16 v16, v5

    const-wide v4, 0x20900000001L

    .end local v5    # "i":I
    .local v16, "i":I
    invoke-virtual {v1, v4, v5, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 250
    .end local v15    # "s":Ljava/lang/String;
    nop

    .line 248
    move/from16 v5, v16

    goto :goto_5d

    .line 251
    .end local v16    # "i":I
    .restart local v5    # "i":I
    :cond_77
    move/from16 v16, v5

    .end local v5    # "i":I
    .restart local v16    # "i":I
    const-wide v4, 0x10500000002L

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 252
    const-wide v4, 0x10800000003L

    invoke-virtual {v1, v4, v5, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 253
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .end local v10    # "isPrimary":Z
    .end local v11    # "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "sToken":J
    goto :goto_8f

    .line 243
    .end local v16    # "i":I
    .restart local v5    # "i":I
    :cond_8d
    move/from16 v16, v5

    .end local v5    # "i":I
    .restart local v16    # "i":I
    :goto_8f
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v16

    goto :goto_36

    .line 238
    .end local v6    # "userId":I
    .end local v7    # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v8    # "M":I
    .end local v9    # "j":I
    .end local v16    # "i":I
    .restart local v5    # "i":I
    :cond_94
    move/from16 v16, v5

    .end local v5    # "i":I
    .restart local v16    # "i":I
    add-int/lit8 v5, v16, 0x1

    .end local v16    # "i":I
    .restart local v5    # "i":I
    goto :goto_19

    .line 259
    .end local v5    # "i":I
    :cond_99
    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 260
    .local v5, "cmpt":Landroid/content/ComponentName;
    if-eqz v2, :cond_b4

    invoke-virtual {v2, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_b4

    .end local v5    # "cmpt":Landroid/content/ComponentName;
    goto :goto_9f

    .line 261
    .restart local v5    # "cmpt":Landroid/content/ComponentName;
    :cond_b4
    const-wide v6, 0x20b00000003L

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 262
    .end local v5    # "cmpt":Landroid/content/ComponentName;
    goto :goto_9f

    .line 264
    :cond_bd
    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 265
    .local v5, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v2, :cond_da

    iget-object v6, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_da

    .end local v5    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_c3

    .line 266
    .restart local v5    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_da
    const-wide v6, 0x20b00000004L

    invoke-virtual {v5, v1, v6, v7, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/ManagedServices;)V

    .line 267
    .end local v5    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_c3

    .line 269
    :cond_e3
    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_fe

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 270
    .local v5, "name":Landroid/content/ComponentName;
    const-wide v6, 0x20b00000005L

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 271
    .end local v5    # "name":Landroid/content/ComponentName;
    goto :goto_e9

    .line 272
    :cond_fe
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Allowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 196
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .line 196
    .local v2, "i":I
    :goto_26
    if-ge v2, v0, :cond_92

    .line 197
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 198
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 199
    .local v4, "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-eqz v4, :cond_8f

    .line 200
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 201
    .local v5, "M":I
    move v6, v1

    .line 201
    .local v6, "j":I
    :goto_43
    if-ge v6, v5, :cond_8f

    .line 202
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 203
    .local v7, "isPrimary":Z
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 204
    .local v8, "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v4, :cond_8c

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-lez v9, :cond_8c

    .line 205
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "      "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-static {v10, v8}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (user: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " isPrimary: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    .end local v7    # "isPrimary":Z
    .end local v8    # "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_8c
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    .line 196
    .end local v3    # "userId":I
    .end local v4    # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v5    # "M":I
    .end local v6    # "j":I
    :cond_8f
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 212
    .end local v2    # "i":I
    :cond_92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    All "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") enabled for current profiles:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ee

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 215
    .local v2, "cmpt":Landroid/content/ComponentName;
    if-eqz p2, :cond_d9

    invoke-virtual {p2, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_d9

    .line 215
    .end local v2    # "cmpt":Landroid/content/ComponentName;
    goto :goto_c4

    .line 216
    .restart local v2    # "cmpt":Landroid/content/ComponentName;
    :cond_d9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    .end local v2    # "cmpt":Landroid/content/ComponentName;
    goto :goto_c4

    .line 219
    :cond_ee
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Live "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_120
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 221
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz p2, :cond_137

    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_137

    .line 221
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_120

    .line 222
    .restart local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    iget-boolean v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v4, :cond_161

    const-string v4, " SYSTEM"

    goto :goto_163

    :cond_161
    const-string v4, ""

    :goto_163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v2, p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    move-result v4

    if-eqz v4, :cond_16f

    const-string v4, " GUEST"

    goto :goto_171

    :cond_16f
    const-string v4, ""

    :goto_171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_120

    .line 228
    :cond_17c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Snoozed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    .line 229
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1ae
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 231
    .local v2, "name":Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    .end local v2    # "name":Landroid/content/ComponentName;
    goto :goto_1ae

    .line 233
    :cond_1d3
    return-void
.end method

.method protected getAllowedComponents(I)Ljava/util/List;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v0, "allowedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 480
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 481
    .local v1, "allowedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_18
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_40

    .line 482
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 483
    .local v4, "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move v5, v2

    .local v5, "j":I
    :goto_25
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_3d

    .line 484
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 485
    .local v6, "cn":Landroid/content/ComponentName;
    if-eqz v6, :cond_3a

    .line 486
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    .end local v6    # "cn":Landroid/content/ComponentName;
    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 481
    .end local v4    # "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "j":I
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 490
    .end local v3    # "i":I
    :cond_40
    return-object v0
.end method

.method protected getAllowedPackages(I)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v0, "allowedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 496
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 497
    .local v1, "allowedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_18
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_44

    .line 498
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 499
    .local v4, "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move v5, v2

    .local v5, "j":I
    :goto_25
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_41

    .line 500
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 501
    .local v6, "pkgName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 502
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 497
    .end local v4    # "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "j":I
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 506
    .end local v3    # "i":I
    :cond_44
    return-object v0
.end method

.method protected getApproved(IZ)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "primary"    # Z

    .line 471
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 472
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 473
    .local v0, "allowedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 474
    .local v1, "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v2, ":"

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected abstract getConfig()Lcom/android/server/notification/ManagedServices$Config;
.end method

.method protected getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageOrComponent"    # Ljava/lang/String;

    .line 769
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 770
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_b

    .line 771
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 773
    :cond_b
    return-object p1
.end method

.method protected getServices()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    monitor-exit v0

    return-object v1

    .line 179
    .end local v1    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public isComponentEnabledForCurrentProfiles(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 1248
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isComponentEnabledForPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPackageOrComponentAllowed(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkgOrComponent"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 510
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 511
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 512
    .local v0, "allowedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_13
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 513
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 514
    .local v3, "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 515
    const/4 v1, 0x1

    return v1

    .line 512
    .end local v3    # "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 518
    .end local v2    # "i":I
    :cond_2a
    return v1
.end method

.method protected isServiceTokenValidLocked(Landroid/os/IInterface;)Z
    .registers 4
    .param p1, "service"    # Landroid/os/IInterface;

    .line 584
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 585
    return v0

    .line 587
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    .line 588
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v1, :cond_c

    .line 589
    const/4 v0, 0x1

    return v0

    .line 591
    :cond_c
    return v0
.end method

.method protected isValidEntry(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageOrComponent"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 778
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->hasMatchingServices(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected migrateToXml()V
    .registers 1

    .line 342
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->loadAllowedComponentsFromSettings()V

    .line 343
    return-void
.end method

.method public onBootPhaseAppsCanStart()V
    .registers 1

    .line 191
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;[I)V
    .registers 10
    .param p1, "removingPackage"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;
    .param p3, "uidList"    # [I

    .line 522
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackagesChanged removingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " pkgList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    if-nez p2, :cond_1d

    const/4 v2, 0x0

    goto :goto_21

    :cond_1d
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mEnabledServicesPackageNames="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_35
    if-eqz p2, :cond_70

    array-length v0, p2

    if-lez v0, :cond_70

    .line 527
    const/4 v0, 0x0

    .line 529
    .local v0, "anyServicesInvolved":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_58

    .line 530
    array-length v2, p2

    array-length v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 531
    .local v2, "size":I
    move v3, v0

    move v0, v1

    .line 531
    .local v0, "i":I
    .local v3, "anyServicesInvolved":Z
    :goto_46
    if-ge v0, v2, :cond_57

    .line 532
    aget-object v4, p2, v0

    .line 533
    .local v4, "pkg":Ljava/lang/String;
    aget v5, p3, v0

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 534
    .local v5, "userId":I
    invoke-direct {p0, v5, v4}, Lcom/android/server/notification/ManagedServices;->removeUninstalledItemsFromApprovedLists(ILjava/lang/String;)Z

    move-result v3

    .line 531
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "userId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 537
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_57
    move v0, v3

    .line 537
    .end local v3    # "anyServicesInvolved":Z
    .local v0, "anyServicesInvolved":Z
    :cond_58
    array-length v2, p2

    move v3, v0

    move v0, v1

    .line 537
    .end local v0    # "anyServicesInvolved":Z
    .restart local v3    # "anyServicesInvolved":Z
    :goto_5b
    if-ge v0, v2, :cond_6b

    aget-object v4, p2, v0

    .line 538
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 539
    const/4 v3, 0x1

    .line 537
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 543
    :cond_6b
    if-eqz v3, :cond_70

    .line 545
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ManagedServices;->rebindServices(Z)V

    .line 548
    .end local v3    # "anyServicesInvolved":Z
    :cond_70
    return-void
.end method

.method protected abstract onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 2
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 182
    return-void
.end method

.method protected onSettingRestored(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "backupSdkInt"    # I
    .param p4, "userId"    # I

    .line 275
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->mUseXml:Z

    if-nez v0, :cond_76

    .line 276
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored managed service setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    .line 279
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 280
    :cond_34
    const/16 v0, 0x1a

    if-ge p3, v0, :cond_66

    .line 283
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 284
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/notification/ManagedServices;->getApproved(IZ)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "currentSetting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 286
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_66

    .line 289
    :cond_65
    move-object p2, v0

    .line 293
    .end local v0    # "currentSetting":Ljava/lang/String;
    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 293
    invoke-static {v0, p1, p2, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 295
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->loadAllowedComponentsFromSettings()V

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->rebindServices(Z)V

    .line 299
    :cond_76
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 5
    .param p1, "user"    # I

    .line 551
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing approved services for removed user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->rebindServices(Z)V

    .line 554
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 5
    .param p1, "user"    # I

    .line 557
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitched u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_1b
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mLastSeenProfileIds:[I

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 559
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string v1, "Current profile IDs didn\'t change, skipping rebindServices()."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_34
    return-void

    .line 562
    :cond_35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->rebindServices(Z)V

    .line 563
    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 5
    .param p1, "user"    # I

    .line 566
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->rebindServices(Z)V

    .line 568
    return-void
.end method

.method protected queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 682
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extraFlags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 687
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 688
    .local v0, "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 689
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 690
    .local v2, "queryIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 691
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    :cond_1d
    const/16 v3, 0x84

    or-int/2addr v3, p2

    invoke-virtual {v1, v2, v3, p3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 697
    .local v3, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-boolean v4, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v4, :cond_45

    .line 698
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " services: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_45
    if-eqz v3, :cond_ac

    .line 700
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "count":I
    :goto_4c
    if-ge v4, v5, :cond_ac

    .line 701
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 702
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 704
    .local v7, "info":Landroid/content/pm/ServiceInfo;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    .local v8, "component":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v9, v9, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a6

    .line 706
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": it does not require the permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v11, v11, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    goto :goto_a9

    .line 712
    :cond_a6
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 700
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "info":Landroid/content/pm/ServiceInfo;
    .end local v8    # "component":Landroid/content/ComponentName;
    :goto_a9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 715
    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_ac
    return-object v0
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/function/Predicate;)V
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    .local p2, "allowedManagedServicePackages":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    const-string/jumbo v0, "version"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 349
    .local v0, "xmlVersion":I
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 350
    .local v2, "activeUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 351
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {p0, v0, v6}, Lcom/android/server/notification/ManagedServices;->upgradeXml(II)V

    .line 352
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_13

    .line 356
    :cond_2b
    :goto_2b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .line 356
    .local v5, "type":I
    if-eq v4, v3, :cond_9f

    .line 357
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "tag":Ljava/lang/String;
    const/4 v6, 0x3

    if-ne v5, v6, :cond_46

    .line 359
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 360
    goto :goto_9f

    .line 362
    :cond_46
    const/4 v6, 0x2

    if-ne v5, v6, :cond_9e

    .line 363
    const-string/jumbo v6, "service_listing"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 364
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v8, v8, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " permissions from xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v6, "approved"

    invoke-static {p1, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 367
    .local v6, "approved":Ljava/lang/String;
    const-string/jumbo v7, "user"

    invoke-static {p1, v7, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 368
    .local v7, "userId":I
    const-string/jumbo v8, "primary"

    .line 369
    invoke-static {p1, v8, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    .line 371
    .local v8, "isPrimary":Z
    if-eqz p2, :cond_91

    .line 372
    invoke-virtual {p0, v6}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9e

    .line 373
    :cond_91
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    invoke-virtual {v9, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    if-eqz v9, :cond_9c

    .line 374
    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/notification/ManagedServices;->addApprovedList(Ljava/lang/String;IZ)V

    .line 376
    :cond_9c
    iput-boolean v3, p0, Lcom/android/server/notification/ManagedServices;->mUseXml:Z

    .line 380
    .end local v4    # "tag":Ljava/lang/String;
    .end local v6    # "approved":Ljava/lang/String;
    .end local v7    # "userId":I
    .end local v8    # "isPrimary":Z
    :cond_9e
    goto :goto_2b

    .line 381
    :cond_9f
    :goto_9f
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ManagedServices;->rebindServices(Z)V

    .line 382
    return-void
.end method

.method protected rebindServices(Z)V
    .registers 16
    .param p1, "forceRebind"    # Z

    .line 794
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "rebindServices"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v0

    .line 796
    .local v0, "userIds":[I
    array-length v1, v0

    .line 798
    .local v1, "nUserIds":I
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 800
    .local v2, "componentsByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Landroid/content/ComponentName;>;>;"
    const/4 v3, 0x0

    move v4, v3

    .line 800
    .local v4, "i":I
    :goto_1a
    if-ge v4, v1, :cond_5a

    .line 801
    aget v5, v0, v4

    .line 802
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    aget v7, v0, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 803
    .local v6, "approvedLists":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-eqz v6, :cond_57

    .line 804
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 805
    .local v7, "N":I
    move v8, v3

    .line 805
    .local v8, "j":I
    :goto_33
    if-ge v8, v7, :cond_57

    .line 806
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 807
    .local v9, "approvedByUser":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-nez v9, :cond_46

    .line 808
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v9, v10

    .line 809
    invoke-virtual {v2, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 811
    :cond_46
    nop

    .line 812
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    invoke-direct {p0, v10, v5}, Lcom/android/server/notification/ManagedServices;->loadComponentNamesFromValues(Landroid/util/ArraySet;I)Landroid/util/ArraySet;

    move-result-object v10

    .line 811
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 805
    .end local v9    # "approvedByUser":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    .line 800
    .end local v5    # "userId":I
    .end local v6    # "approvedLists":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v7    # "N":I
    .end local v8    # "j":I
    :cond_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 817
    .end local v4    # "i":I
    :cond_5a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .local v4, "removableBoundServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 820
    .local v5, "toAdd":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v6

    .line 822
    :try_start_67
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_87

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 823
    .local v8, "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-boolean v9, v8, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-nez v9, :cond_86

    invoke-virtual {v8, p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    move-result v9

    if-nez v9, :cond_86

    .line 824
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    .end local v8    # "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_86
    goto :goto_6d

    .line 828
    :cond_87
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->clear()V

    .line 829
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->clear()V

    .line 831
    move v7, v3

    .line 831
    .local v7, "i":I
    :goto_92
    if-ge v7, v1, :cond_d9

    .line 833
    aget v8, v0, v7

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 834
    .local v8, "userComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-nez v8, :cond_a9

    .line 835
    aget v9, v0, v7

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v5, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 836
    goto :goto_d6

    .line 839
    :cond_a9
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 840
    .local v9, "add":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v10, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-interface {v9, v10}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 842
    aget v10, v0, v7

    invoke-virtual {v5, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 844
    iget-object v10, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 846
    move v10, v3

    .line 846
    .local v10, "j":I
    :goto_be
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v11

    if-ge v10, v11, :cond_d6

    .line 847
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 848
    .local v11, "component":Landroid/content/ComponentName;
    iget-object v12, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 846
    .end local v11    # "component":Landroid/content/ComponentName;
    add-int/lit8 v10, v10, 0x1

    goto :goto_be

    .line 831
    .end local v8    # "userComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v9    # "add":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v10    # "j":I
    :cond_d6
    :goto_d6
    add-int/lit8 v7, v7, 0x1

    goto :goto_92

    .line 851
    .end local v7    # "i":I
    :cond_d9
    monitor-exit v6
    :try_end_da
    .catchall {:try_start_67 .. :try_end_da} :catchall_1fb

    .line 853
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_de
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_132

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 854
    .local v7, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v8, v7, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 855
    .local v8, "component":Landroid/content/ComponentName;
    iget v9, v7, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 856
    .local v9, "oldUser":I
    iget v10, v7, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 857
    .local v10, "allowedComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    if-eqz v10, :cond_131

    .line 858
    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_104

    if-nez p1, :cond_104

    .line 860
    invoke-interface {v10, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_131

    .line 863
    :cond_104
    iget-object v11, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "disabling "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " for user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-direct {p0, v8, v9}, Lcom/android/server/notification/ManagedServices;->unregisterService(Landroid/content/ComponentName;I)V

    .line 868
    .end local v7    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v9    # "oldUser":I
    .end local v10    # "allowedComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_131
    :goto_131
    goto :goto_de

    .line 870
    :cond_132
    nop

    .line 870
    .local v3, "i":I
    :goto_133
    if-ge v3, v1, :cond_1f8

    .line 871
    aget v6, v0, v3

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 872
    .local v6, "add":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_141
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 874
    .restart local v8    # "component":Landroid/content/ComponentName;
    :try_start_14d
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->mPm:Landroid/content/pm/IPackageManager;

    const/high16 v10, 0xc0000

    aget v11, v0, v3

    invoke-interface {v9, v8, v10, v11}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v9

    .line 877
    .local v9, "info":Landroid/content/pm/ServiceInfo;
    if-nez v9, :cond_181

    .line 878
    iget-object v10, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not binding "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": service not found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    goto :goto_141

    .line 882
    :cond_181
    iget-object v10, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v10, v10, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1bc

    .line 883
    iget-object v10, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not binding "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": it does not require the permission "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v12, v12, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    goto :goto_141

    .line 887
    :cond_1bc
    iget-object v10, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "enabling "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 887
    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    aget v10, v0, v3

    invoke-direct {p0, v8, v10}, Lcom/android/server/notification/ManagedServices;->registerService(Landroid/content/ComponentName;I)V
    :try_end_1ed
    .catch Landroid/os/RemoteException; {:try_start_14d .. :try_end_1ed} :catch_1ee

    .line 892
    .end local v9    # "info":Landroid/content/pm/ServiceInfo;
    goto :goto_1f2

    .line 890
    :catch_1ee
    move-exception v9

    .line 891
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 893
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_1f2
    goto/16 :goto_141

    .line 870
    .end local v6    # "add":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_1f4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_133

    .line 896
    .end local v3    # "i":I
    :cond_1f8
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mLastSeenProfileIds:[I

    .line 897
    return-void

    .line 851
    :catchall_1fb
    move-exception v3

    :try_start_1fc
    monitor-exit v6
    :try_end_1fd
    .catchall {:try_start_1fc .. :try_end_1fd} :catchall_1fb

    throw v3
.end method

.method protected registerGuestService(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 3
    .param p1, "guest"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 624
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-direct {p0, v0}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 625
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->checkType(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 628
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 629
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 631
    :cond_16
    return-void

    .line 626
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I

    .line 612
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 613
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 614
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_c

    .line 615
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 617
    :cond_c
    return-void
.end method

.method public registerSystemService(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userid"    # I

    .line 912
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 913
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;IZ)V

    .line 914
    monitor-exit v0

    .line 915
    return-void

    .line 914
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method protected setComponentState(Landroid/content/ComponentName;Z)V
    .registers 9
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 634
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 635
    .local v0, "previous":Z
    if-ne v0, p2, :cond_b

    .line 636
    return-void

    .line 639
    :cond_b
    if-eqz p2, :cond_13

    .line 640
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    .line 642
    :cond_13
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 646
    :goto_18
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_24

    const-string v3, "Enabling "

    goto :goto_26

    :cond_24
    const-string v3, "Disabling "

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 646
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 650
    :try_start_3f
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v2

    .line 652
    .local v2, "userIds":[I
    array-length v3, v2

    const/4 v4, 0x0

    :goto_47
    if-ge v4, v3, :cond_57

    aget v5, v2, v4

    .line 653
    .local v5, "userId":I
    if-eqz p2, :cond_51

    .line 654
    invoke-direct {p0, p1, v5}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;I)V

    goto :goto_54

    .line 656
    :cond_51
    invoke-direct {p0, p1, v5}, Lcom/android/server/notification/ManagedServices;->unregisterServiceLocked(Landroid/content/ComponentName;I)V

    .line 652
    .end local v5    # "userId":I
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 659
    .end local v2    # "userIds":[I
    :cond_57
    monitor-exit v1

    .line 660
    return-void

    .line 659
    :catchall_59
    move-exception v2

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_3f .. :try_end_5b} :catchall_59

    throw v2
.end method

.method protected setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V
    .registers 9
    .param p1, "pkgOrComponent"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isPrimary"    # Z
    .param p4, "enabled"    # Z

    .line 434
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    if-eqz p4, :cond_c

    const-string v2, " Allowing "

    goto :goto_e

    :cond_c
    const-string v2, "Disallowing "

    :goto_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 437
    .local v0, "allowedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-nez v0, :cond_44

    .line 438
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 439
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_44
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 442
    .local v1, "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_5d

    .line 443
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 444
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_5d
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->getApprovedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "approvedItem":Ljava/lang/String;
    if-eqz v2, :cond_6c

    .line 449
    if-eqz p4, :cond_69

    .line 450
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 452
    :cond_69
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 456
    :cond_6c
    :goto_6c
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/notification/ManagedServices;->rebindServices(Z)V

    .line 457
    return-void
.end method

.method public unregisterService(Landroid/os/IInterface;I)V
    .registers 3
    .param p1, "service"    # Landroid/os/IInterface;
    .param p2, "userid"    # I

    .line 605
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->unregisterServiceImpl(Landroid/os/IInterface;I)V

    .line 609
    return-void
.end method

.method protected upgradeXml(II)V
    .registers 3
    .param p1, "xmlVersion"    # I
    .param p2, "userId"    # I

    .line 384
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 16
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    const-string/jumbo v0, "version"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    if-eqz p2, :cond_1a

    .line 307
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->trimApprovedListsAccordingToInstalledServices()V

    .line 310
    :cond_1a
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 311
    .local v0, "N":I
    const/4 v2, 0x0

    move v3, v2

    .line 311
    .local v3, "i":I
    :goto_22
    if-ge v3, v0, :cond_97

    .line 312
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 313
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 314
    .local v5, "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-eqz v5, :cond_94

    .line 315
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 316
    .local v6, "M":I
    move v7, v2

    .line 316
    .local v7, "j":I
    :goto_3f
    if-ge v7, v6, :cond_94

    .line 317
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 318
    .local v8, "isPrimary":Z
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 319
    .local v9, "approved":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v9, :cond_91

    .line 320
    const-string v10, ":"

    invoke-static {v10, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    .line 321
    .local v10, "allowedItems":Ljava/lang/String;
    const-string/jumbo v11, "service_listing"

    invoke-interface {p1, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    const-string v11, "approved"

    invoke-interface {p1, v1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    const-string/jumbo v11, "user"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v1, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    const-string/jumbo v11, "primary"

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v1, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    const-string/jumbo v11, "service_listing"

    invoke-interface {p1, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    if-nez p2, :cond_91

    if-eqz v8, :cond_91

    .line 329
    iget-object v11, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 330
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 329
    invoke-static {v11, v12, v10, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 316
    .end local v8    # "isPrimary":Z
    .end local v9    # "approved":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "allowedItems":Ljava/lang/String;
    :cond_91
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    .line 311
    .end local v4    # "userId":I
    .end local v5    # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v6    # "M":I
    .end local v7    # "j":I
    :cond_94
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 338
    .end local v3    # "i":I
    :cond_97
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    return-void
.end method
