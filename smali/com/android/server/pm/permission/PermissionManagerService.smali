.class public Lcom/android/server/pm/permission/PermissionManagerService;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final GRANT_DENIED:I = 0x1

.field private static final GRANT_INSTALL:I = 0x2

.field private static final GRANT_RUNTIME:I = 0x3

.field private static final GRANT_UPGRADE:I = 0x4

.field private static final MAX_PERMISSION_TREE_FOOTPRINT:I = 0x8000

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final UPDATE_PERMISSIONS_ALL:I = 0x1

.field private static final UPDATE_PERMISSIONS_REPLACE_ALL:I = 0x4

.field private static final UPDATE_PERMISSIONS_REPLACE_PKG:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field private final mGlobalGids:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field private mPrivappPermissionsViolations:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/android/server/pm/permission/PermissionSettings;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUserManagerInt:Landroid/os/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 106
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Ljava/lang/Object;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultGrantCallback"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;
    .param p3, "externalLock"    # Ljava/lang/Object;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 147
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 148
    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 149
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 150
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    .line 151
    new-instance v0, Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/permission/PermissionSettings;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 153
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PackageManager"

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 155
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 156
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    .line 157
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 159
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 160
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Lcom/android/server/pm/permission/PermissionManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 161
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 162
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    .line 163
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    .line 167
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v1

    .line 168
    .local v1, "permConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$PermissionEntry;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 169
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7b
    :try_start_7b
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_b0

    .line 170
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 171
    .local v5, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 172
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v6, :cond_a2

    .line 173
    new-instance v7, Lcom/android/server/pm/permission/BasePermission;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string v9, "android"

    invoke-direct {v7, v8, v9, v2}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v7

    .line 174
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 176
    :cond_a2
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v7, :cond_ad

    .line 177
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    iget-boolean v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/BasePermission;->setGids([IZ)V

    .line 169
    .end local v5    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_ad
    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    .line 180
    .end local v4    # "i":I
    :cond_b0
    monitor-exit v3
    :try_end_b1
    .catchall {:try_start_7b .. :try_end_b1} :catchall_bd

    .line 182
    const-class v2, Lcom/android/server/pm/permission/PermissionManagerInternal;

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 184
    return-void

    .line 180
    :catchall_bd
    move-exception v2

    :try_start_be
    monitor-exit v3
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw v2
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 91
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # [I
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 91
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionsGrantedToDisabledPackageLocked(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 91
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/util/Collection;
    .param p5, "x5"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 91
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/util/Collection;
    .param p4, "x4"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 91
    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/pm/permission/PermissionManagerService;IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    .registers 8
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/util/Collection;
    .param p6, "x6"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 91
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;

    .line 91
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # I

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/pm/permission/PermissionManagerService;II)Ljava/util/List;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllPermissionGroups(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Ljava/util/List;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 91
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 91
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 91
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Z

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Z

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Z

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PermissionInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->addDynamicPermission(Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 91
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method private addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 15
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 513
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 514
    .local v0, "N":I
    const/4 v1, 0x0

    .line 515
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_b9

    .line 516
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 517
    .local v3, "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v5, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 518
    .local v4, "cur":Landroid/content/pm/PackageParser$PermissionGroup;
    if-nez v4, :cond_24

    const/4 v5, 0x0

    goto :goto_28

    :cond_24
    iget-object v5, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 519
    .local v5, "curPackageName":Ljava/lang/String;
    :goto_28
    iget-object v6, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 520
    .local v6, "isPackageUpdate":Z
    const/16 v7, 0x20

    const/16 v8, 0x100

    if-eqz v4, :cond_8a

    if-eqz v6, :cond_39

    goto :goto_8a

    .line 534
    :cond_39
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission group "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ignored: original from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    if-eqz p2, :cond_b5

    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v9, :cond_b5

    .line 538
    if-nez v1, :cond_7a

    .line 539
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v7

    goto :goto_7d

    .line 541
    :cond_7a
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 543
    :goto_7d
    const-string v7, "DUP:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-object v7, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v3    # "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v4    # "cur":Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v5    # "curPackageName":Ljava/lang/String;
    .end local v6    # "isPackageUpdate":Z
    goto :goto_b5

    .line 521
    .restart local v3    # "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    .restart local v4    # "cur":Landroid/content/pm/PackageParser$PermissionGroup;
    .restart local v5    # "curPackageName":Ljava/lang/String;
    .restart local v6    # "isPackageUpdate":Z
    :cond_8a
    :goto_8a
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v9, v9, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v10, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    if-eqz p2, :cond_b5

    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v9, :cond_b5

    .line 523
    if-nez v1, :cond_a4

    .line 524
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v7

    goto :goto_a7

    .line 526
    :cond_a4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 528
    :goto_a7
    if-eqz v6, :cond_ae

    .line 529
    const-string v7, "UPD:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_ae
    iget-object v7, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .end local v3    # "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v4    # "cur":Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v5    # "curPackageName":Ljava/lang/String;
    .end local v6    # "isPackageUpdate":Z
    :cond_b5
    :goto_b5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 548
    .end local v2    # "i":I
    :cond_b9
    if-eqz v1, :cond_d5

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_d5

    .line 549
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Permission Groups: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_d5
    return-void
.end method

.method private addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 475
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 476
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_bd

    .line 477
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    .line 480
    .local v2, "p":Landroid/content/pm/PackageParser$Permission;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v4, v5

    iput v4, v3, Landroid/content/pm/PermissionInfo;->flags:I

    .line 482
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 487
    :try_start_1e
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x16

    if-le v4, v5, :cond_76

    .line 488
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    iput-object v4, v2, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    .line 490
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_76

    iget-object v4, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v4, :cond_76

    iget-object v4, v2, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-nez v4, :cond_76

    .line 492
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in an unknown group "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_76
    iget-boolean v4, v2, Landroid/content/pm/PackageParser$Permission;->tree:Z

    if-eqz v4, :cond_98

    .line 498
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 499
    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionTreeLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 500
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v5

    .line 498
    invoke-static {v4, v2, p1, v5, p2}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/PackageParser$Permission;Landroid/content/pm/PackageParser$Package;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 501
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionTreeLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 502
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_b5

    .line 503
    :cond_98
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 504
    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 505
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v5

    .line 503
    invoke-static {v4, v2, p1, v5, p2}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/PackageParser$Permission;Landroid/content/pm/PackageParser$Package;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 506
    .restart local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 508
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :goto_b5
    monitor-exit v3

    .line 476
    .end local v2    # "p":Landroid/content/pm/PackageParser$Permission;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 508
    .restart local v2    # "p":Landroid/content/pm/PackageParser$Permission;
    :catchall_ba
    move-exception v4

    monitor-exit v3
    :try_end_bc
    .catchall {:try_start_1e .. :try_end_bc} :catchall_ba

    throw v4

    .line 510
    .end local v1    # "i":I
    .end local v2    # "p":Landroid/content/pm/PackageParser$Permission;
    :cond_bd
    return-void
.end method

.method private addDynamicPermission(Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    .registers 13
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "callingUid"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 609
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_82

    .line 612
    iget v0, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v0, :cond_19

    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    goto :goto_19

    .line 613
    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Label must be specified in permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 618
    .local v0, "tree":Lcom/android/server/pm/permission/BasePermission;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 619
    :try_start_24
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 620
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v2, :cond_30

    const/4 v3, 0x1

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    .line 621
    .local v3, "added":Z
    :goto_31
    iget v4, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v4}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v4

    .line 622
    .local v4, "fixedLevel":I
    if-eqz v3, :cond_4a

    .line 623
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V

    .line 624
    new-instance v5, Lcom/android/server/pm/permission/BasePermission;

    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v5

    goto :goto_50

    .line 626
    :cond_4a
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 630
    :goto_50
    invoke-virtual {v2, v4, p1, v0}, Lcom/android/server/pm/permission/BasePermission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)Z

    move-result v5

    .line 631
    .local v5, "changed":Z
    if-eqz v3, :cond_5d

    .line 632
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 634
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "fixedLevel":I
    :cond_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_24 .. :try_end_5e} :catchall_7f

    .line 635
    if-eqz v5, :cond_65

    if-eqz p3, :cond_65

    .line 636
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionChanged()V

    .line 638
    :cond_65
    return v3

    .line 627
    .end local v5    # "changed":Z
    .restart local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v4    # "fixedLevel":I
    :cond_66
    :try_start_66
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 634
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "added":Z
    .end local v4    # "fixedLevel":I
    :catchall_7f
    move-exception v2

    monitor-exit v1
    :try_end_81
    .catchall {:try_start_66 .. :try_end_81} :catchall_7f

    throw v2

    .line 610
    .end local v0    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_82
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant apps can\'t add permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I
    .registers 9
    .param p1, "protectionLevel"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 365
    and-int/lit8 v0, p1, 0x3

    .line 369
    .local v0, "protectionLevelMasked":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 370
    return p1

    .line 373
    :cond_6
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 374
    .local v1, "appId":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_36

    if-eqz v1, :cond_36

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_15

    goto :goto_36

    .line 379
    :cond_15
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 380
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_1e

    .line 381
    return p1

    .line 383
    :cond_1e
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_27

    .line 384
    return v0

    .line 387
    :cond_27
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 388
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_2e

    .line 389
    return p1

    .line 391
    :cond_2e
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    if-eq v4, v1, :cond_35

    .line 392
    return p1

    .line 394
    :cond_35
    return p1

    .line 376
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_36
    :goto_36
    return p1
.end method

.method private calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I
    .registers 6
    .param p1, "tree"    # Lcom/android/server/pm/permission/BasePermission;

    .line 2036
    const/4 v0, 0x0

    .line 2037
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 2038
    .local v2, "perm":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/BasePermission;->calculateFootprint(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2039
    .end local v2    # "perm":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_d

    .line 2040
    :cond_1f
    return v0
.end method

.method private static canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z
    .registers 6
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "permission"    # Ljava/lang/String;

    .line 1274
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1275
    return v1

    .line 1279
    :cond_8
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1280
    .local v0, "granted":Ljava/lang/Boolean;
    if-eqz v0, :cond_21

    .line 1284
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v0, :cond_20

    const/4 v1, 0x1

    nop

    :cond_20
    return v1

    .line 1281
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requested by package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be explicitly declared granted or not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 14
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 214
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    .line 215
    return v1

    .line 218
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 219
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_5e

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v2, :cond_5e

    .line 220
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 221
    return v1

    .line 223
    :cond_1f
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 224
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2, p4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v3

    .line 225
    .local v3, "instantApp":Z
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 226
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4d

    .line 227
    if-eqz v3, :cond_4c

    .line 228
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 229
    :try_start_37
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v7, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v7

    .line 230
    .local v7, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v7, :cond_47

    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v8

    if-eqz v8, :cond_47

    .line 231
    monitor-exit v5

    return v6

    .line 233
    .end local v7    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_47
    monitor-exit v5

    goto :goto_4d

    :catchall_49
    move-exception v1

    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_49

    throw v1

    .line 235
    :cond_4c
    return v6

    .line 239
    :cond_4d
    :goto_4d
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    .line 240
    invoke-virtual {v4, v5, p4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 241
    return v6

    .line 245
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "instantApp":Z
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_5e
    return v1
.end method

.method private checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .registers 13
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "uid"    # I
    .param p4, "callingUid"    # I

    .line 250
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 251
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 252
    invoke-virtual {v1, p4}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    .line 253
    .local v1, "isCallerInstantApp":Z
    :goto_11
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 254
    invoke-virtual {v4, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v2, v3

    .line 255
    .local v2, "isUidInstantApp":Z
    :goto_1b
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 256
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v5, v4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_29

    .line 257
    return v6

    .line 260
    :cond_29
    if-eqz p2, :cond_67

    .line 261
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v5, :cond_32

    .line 262
    if-eqz v1, :cond_3b

    .line 263
    return v6

    .line 265
    :cond_32
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, p2, p4, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 266
    return v6

    .line 268
    :cond_3b
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 269
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 270
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v5, p1, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 271
    if-eqz v2, :cond_54

    .line 272
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v7, p1}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionInstant(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 273
    return v3

    .line 276
    :cond_54
    return v3

    .line 280
    :cond_55
    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    .line 281
    invoke-virtual {v5, v7, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 282
    return v3

    .line 284
    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_66
    goto :goto_89

    .line 285
    :cond_67
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 286
    .local v5, "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_89

    .line 287
    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 288
    return v3

    .line 290
    :cond_78
    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_89

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    .line 291
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 292
    return v3

    .line 296
    .end local v5    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_89
    :goto_89
    return v6
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Ljava/lang/Object;)Lcom/android/server/pm/permission/PermissionManagerInternal;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultGrantCallback"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;
    .param p2, "externalLock"    # Ljava/lang/Object;

    .line 198
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerInternal;

    .line 199
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerInternal;

    .line 200
    .local v0, "permMgrInt":Lcom/android/server/pm/permission/PermissionManagerInternal;
    if-eqz v0, :cond_b

    .line 201
    return-object v0

    .line 203
    :cond_b
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Ljava/lang/Object;)V

    .line 204
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerInternal;

    return-object v1
.end method

.method private enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .registers 10
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z
    .param p6, "message"    # Ljava/lang/String;

    .line 2003
    if-ltz p2, :cond_47

    .line 2006
    if-eqz p4, :cond_a

    .line 2007
    const-string/jumbo v0, "no_debugging_features"

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Ljava/lang/String;II)V

    .line 2010
    :cond_a
    if-nez p5, :cond_13

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p2, v0, :cond_13

    return-void

    .line 2013
    :cond_13
    const/16 v0, 0x3e7

    if-ne p2, v0, :cond_1d

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eqz v1, :cond_25

    :cond_1d
    if-nez p2, :cond_26

    .line 2015
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, v0, :cond_26

    .line 2016
    :cond_25
    return-void

    .line 2019
    :cond_26
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_46

    if-eqz p1, :cond_46

    .line 2020
    if-eqz p3, :cond_36

    .line 2021
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 2025
    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_3d} :catch_3e

    .line 2030
    goto :goto_46

    .line 2027
    :catch_3e
    move-exception v0

    .line 2028
    .local v0, "se":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    .end local v0    # "se":Ljava/lang/SecurityException;
    :cond_46
    :goto_46
    return-void

    .line 2004
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 1984
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 1986
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_3b

    .line 1988
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1992
    :cond_3b
    :goto_3b
    return-void
.end method

.method private enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V
    .registers 6
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "tree"    # Lcom/android/server/pm/permission/BasePermission;

    .line 2046
    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1f

    .line 2047
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    .line 2048
    .local v0, "curTreeSize":I
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v1, v0

    const v2, 0x8000

    if-gt v1, v2, :cond_17

    .end local v0    # "curTreeSize":I
    goto :goto_1f

    .line 2049
    .restart local v0    # "curTreeSize":I
    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission tree size cap exceeded"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2052
    .end local v0    # "curTreeSize":I
    :cond_1f
    :goto_1f
    return-void
.end method

.method private getAllPermissionGroups(II)Ljava/util/List;
    .registers 9
    .param p1, "flags"    # I
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 312
    const/4 v0, 0x0

    return-object v0

    .line 314
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_d
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 316
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 318
    .local v2, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 319
    .local v4, "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    invoke-static {v4, p1}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .end local v4    # "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    goto :goto_26

    .line 321
    :cond_3a
    monitor-exit v0

    return-object v2

    .line 322
    .end local v1    # "N":I
    .end local v2    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "permName"    # Ljava/lang/String;

    .line 1688
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1689
    return-object v1

    .line 1691
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1692
    :try_start_11
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1693
    .local v2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_1f

    .line 1694
    monitor-exit v0

    return-object v1

    .line 1696
    :cond_1f
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1697
    .end local v2    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 14
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 1702
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1703
    return v1

    .line 1706
    :cond_a
    const-string v0, "getPermissionFlags"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 1708
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "getPermissionFlags"

    move-object v2, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1714
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1715
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_4e

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v2, :cond_27

    goto :goto_4e

    .line 1718
    :cond_27
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1719
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    if-nez v3, :cond_34

    .line 1720
    monitor-exit v2

    return v1

    .line 1722
    :cond_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_4b

    .line 1723
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1724
    return v1

    .line 1726
    :cond_3e
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1727
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 1728
    .local v2, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v2, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 1722
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1

    .line 1716
    :cond_4e
    :goto_4e
    return v1
.end method

.method private getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .registers 6
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callingUid"    # I

    .line 301
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 302
    const/4 v0, 0x0

    return-object v0

    .line 304
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_d
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 306
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 305
    invoke-static {v1, p2}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 307
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .registers 9
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callingUid"    # I

    .line 327
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p4}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 328
    return-object v1

    .line 331
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 333
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v2, :cond_17

    .line 334
    monitor-exit v0

    return-object v1

    .line 336
    :cond_17
    nop

    .line 337
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v1

    .line 336
    invoke-direct {p0, v1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I

    move-result v1

    .line 338
    .local v1, "adjustedProtectionLevel":I
    invoke-virtual {v2, v1, p3}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 339
    .end local v1    # "adjustedProtectionLevel":I
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_26

    throw v1
.end method

.method private getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;
    .registers 9
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 345
    return-object v1

    .line 347
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    if-eqz p1, :cond_1d

    :try_start_f
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 349
    monitor-exit v0

    return-object v1

    .line 359
    :catchall_1b
    move-exception v1

    goto :goto_48

    .line 351
    :cond_1d
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    .local v1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 353
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 354
    .local v4, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v4, :cond_45

    .line 355
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_45
    goto :goto_30

    .line 358
    :cond_46
    monitor-exit v0

    return-object v1

    .line 359
    .end local v1    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_f .. :try_end_49} :catchall_1b

    throw v1
.end method

.method private static getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .registers 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 2063
    if-nez p0, :cond_5

    .line 2064
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    .line 2066
    :cond_5
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2067
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2068
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 2070
    :cond_17
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    return-object v0

    .line 2073
    :cond_1a
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private grantPermissions(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 42
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "replace"    # Z
    .param p3, "packageOfInterest"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    .line 677
    move-object/from16 v5, p4

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 678
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v6, :cond_10

    .line 679
    return-void

    .line 681
    :cond_10
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->isLegacySystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    .line 683
    .local v7, "isLegacySystemApp":Z
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v8

    .line 684
    .local v8, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move-object v9, v8

    .line 686
    .local v9, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v10

    .line 688
    .local v10, "currentUserIds":[I
    const/4 v11, 0x0

    .line 689
    .local v11, "runtimePermissionsRevoked":Z
    sget-object v12, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 691
    .local v12, "updatedUserIds":[I
    const/4 v13, 0x0

    .line 693
    .local v13, "changedInstallPermission":Z
    const/4 v0, 0x0

    if-eqz p2, :cond_5f

    .line 694
    invoke-virtual {v6, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V

    .line 695
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v14

    if-nez v14, :cond_3d

    .line 696
    new-instance v14, Lcom/android/server/pm/permission/PermissionsState;

    invoke-direct {v14, v8}, Lcom/android/server/pm/permission/PermissionsState;-><init>(Lcom/android/server/pm/permission/PermissionsState;)V

    move-object v9, v14

    .line 697
    invoke-virtual {v8}, Lcom/android/server/pm/permission/PermissionsState;->reset()V

    goto :goto_5f

    .line 704
    :cond_3d
    iget-object v14, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 705
    nop

    .line 706
    :try_start_41
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v15

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 705
    invoke-direct {v1, v15, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I

    move-result-object v0

    move-object v12, v0

    .line 707
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 708
    const/4 v0, 0x1

    .line 710
    .end local v11    # "runtimePermissionsRevoked":Z
    .local v0, "runtimePermissionsRevoked":Z
    move v11, v0

    .end local v0    # "runtimePermissionsRevoked":Z
    .restart local v11    # "runtimePermissionsRevoked":Z
    :cond_5a
    monitor-exit v14

    goto :goto_5f

    :catchall_5c
    move-exception v0

    monitor-exit v14
    :try_end_5e
    .catchall {:try_start_41 .. :try_end_5e} :catchall_5c

    throw v0

    .line 714
    :cond_5f
    :goto_5f
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    invoke-virtual {v8, v0}, Lcom/android/server/pm/permission/PermissionsState;->setGlobalGids([I)V

    .line 716
    iget-object v14, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 717
    :try_start_67
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_5d5

    .line 718
    .local v0, "N":I
    move-object v15, v12

    const/4 v12, 0x0

    .local v12, "i":I
    .local v15, "updatedUserIds":[I
    :goto_6f
    move/from16 v16, v11

    .end local v11    # "runtimePermissionsRevoked":Z
    .local v16, "runtimePermissionsRevoked":Z
    if-ge v12, v0, :cond_582

    .line 719
    :try_start_73
    iget-object v11, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 720
    .local v11, "permName":Ljava/lang/String;
    move/from16 v18, v0

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .end local v0    # "N":I
    .local v18, "N":I
    invoke-virtual {v0, v11}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0
    :try_end_83
    .catchall {:try_start_73 .. :try_end_83} :catchall_572

    .line 721
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    move-object/from16 v19, v15

    :try_start_85
    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .end local v15    # "updatedUserIds":[I
    .local v19, "updatedUserIds":[I
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_564

    const/16 v5, 0x17

    if-lt v15, v5, :cond_8f

    const/4 v5, 0x1

    goto :goto_90

    :cond_8f
    const/4 v5, 0x0

    .line 724
    .local v5, "appSupportsRuntimePermissions":Z
    :goto_90
    :try_start_90
    sget-boolean v15, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z
    :try_end_92
    .catchall {:try_start_90 .. :try_end_92} :catchall_555

    if-eqz v15, :cond_d7

    .line 725
    :try_start_94
    const-string v15, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_c7

    move/from16 v20, v13

    :try_start_9d
    const-string v13, "Package "

    .end local v13    # "changedInstallPermission":Z
    .local v20, "changedInstallPermission":Z
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " checking "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catchall {:try_start_9d .. :try_end_be} :catchall_bf

    goto :goto_d9

    .line 1007
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v5    # "appSupportsRuntimePermissions":Z
    .end local v11    # "permName":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v18    # "N":I
    :catchall_bf
    move-exception v0

    move-object v3, v6

    move/from16 v24, v7

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v19    # "updatedUserIds":[I
    .end local v20    # "changedInstallPermission":Z
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    .local v11, "runtimePermissionsRevoked":Z
    .local v12, "updatedUserIds":[I
    .restart local v13    # "changedInstallPermission":Z
    .local v24, "isLegacySystemApp":Z
    .local v31, "currentUserIds":[I
    :goto_c3
    move-object/from16 v31, v10

    goto/16 :goto_5a6

    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v11    # "runtimePermissionsRevoked":Z
    .end local v12    # "updatedUserIds":[I
    .end local v24    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v19    # "updatedUserIds":[I
    :catchall_c7
    move-exception v0

    move/from16 v20, v13

    move-object v3, v6

    move/from16 v24, v7

    move-object/from16 v31, v10

    move/from16 v11, v16

    move-object/from16 v12, v19

    move-object/from16 v5, p4

    .end local v13    # "changedInstallPermission":Z
    .restart local v20    # "changedInstallPermission":Z
    goto/16 :goto_5db

    .line 728
    .end local v20    # "changedInstallPermission":Z
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v5    # "appSupportsRuntimePermissions":Z
    .local v11, "permName":Ljava/lang/String;
    .local v12, "i":I
    .restart local v13    # "changedInstallPermission":Z
    .restart local v18    # "N":I
    :cond_d7
    move/from16 v20, v13

    .end local v13    # "changedInstallPermission":Z
    .restart local v20    # "changedInstallPermission":Z
    :goto_d9
    if-eqz v0, :cond_4fc

    :try_start_db
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v3

    if-nez v3, :cond_ec

    .line 729
    move-object/from16 v33, v6

    move/from16 v24, v7

    move-object/from16 v31, v10

    move/from16 v25, v12

    const/4 v1, 0x0

    goto/16 :goto_505

    .line 739
    :cond_ec
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3
    :try_end_f2
    .catchall {:try_start_db .. :try_end_f2} :catchall_4ec

    if-eqz v3, :cond_12d

    :try_start_f4
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v3

    if-nez v3, :cond_12d

    .line 740
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v3, :cond_122

    .line 741
    const-string v3, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Denying non-ephemeral permission "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catchall {:try_start_f4 .. :try_end_122} :catchall_bf

    .line 718
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v5    # "appSupportsRuntimePermissions":Z
    .end local v11    # "permName":Ljava/lang/String;
    :cond_122
    :goto_122
    move-object/from16 v33, v6

    move/from16 v24, v7

    move-object/from16 v31, v10

    move/from16 v25, v12

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .end local v12    # "i":I
    .restart local v24    # "isLegacySystemApp":Z
    .local v25, "i":I
    .restart local v31    # "currentUserIds":[I
    .local v33, "ps":Lcom/android/server/pm/PackageSetting;
    :cond_12a
    :goto_12a
    const/4 v1, 0x0

    goto/16 :goto_53f

    .line 747
    .end local v24    # "isLegacySystemApp":Z
    .end local v25    # "i":I
    .end local v31    # "currentUserIds":[I
    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v5    # "appSupportsRuntimePermissions":Z
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    .restart local v11    # "permName":Ljava/lang/String;
    .restart local v12    # "i":I
    :cond_12d
    :try_start_12d
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v3
    :try_end_131
    .catchall {:try_start_12d .. :try_end_131} :catchall_4ec

    if-eqz v3, :cond_15e

    if-nez v5, :cond_15e

    .line 748
    :try_start_135
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v3, :cond_122

    .line 749
    const-string v3, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Denying runtime-only permission "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15d
    .catchall {:try_start_135 .. :try_end_15d} :catchall_bf

    goto :goto_122

    .line 755
    :cond_15e
    :try_start_15e
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v3

    .line 756
    .local v3, "perm":Ljava/lang/String;
    const/4 v13, 0x0

    .line 757
    .local v13, "allowedSig":Z
    const/4 v15, 0x1

    .line 760
    .local v15, "grant":I
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result v21
    :try_end_168
    .catchall {:try_start_15e .. :try_end_168} :catchall_4ec

    if-eqz v21, :cond_176

    .line 761
    move/from16 v22, v13

    :try_start_16c
    iget-object v13, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .end local v13    # "allowedSig":Z
    .local v22, "allowedSig":Z
    move/from16 v23, v15

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .end local v15    # "grant":I
    .local v23, "grant":I
    invoke-virtual {v13, v3, v15}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_175
    .catchall {:try_start_16c .. :try_end_175} :catchall_bf

    goto :goto_17a

    .line 764
    .end local v22    # "allowedSig":Z
    .end local v23    # "grant":I
    .restart local v13    # "allowedSig":Z
    .restart local v15    # "grant":I
    :cond_176
    move/from16 v22, v13

    move/from16 v23, v15

    .end local v13    # "allowedSig":Z
    .end local v15    # "grant":I
    .restart local v22    # "allowedSig":Z
    .restart local v23    # "grant":I
    :goto_17a
    :try_start_17a
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isNormal()Z

    move-result v13

    if-eqz v13, :cond_185

    .line 766
    const/4 v15, 0x2

    .line 804
    .end local v7    # "isLegacySystemApp":Z
    .end local v23    # "grant":I
    .restart local v15    # "grant":I
    .restart local v24    # "isLegacySystemApp":Z
    :goto_181
    move/from16 v24, v7

    goto/16 :goto_1e8

    .line 767
    .end local v15    # "grant":I
    .end local v24    # "isLegacySystemApp":Z
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v23    # "grant":I
    :cond_185
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v13
    :try_end_189
    .catchall {:try_start_17a .. :try_end_189} :catchall_4ec

    if-eqz v13, :cond_1a7

    .line 772
    if-nez v5, :cond_195

    :try_start_18d
    iget-object v13, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v13, v13, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-nez v13, :cond_195

    .line 774
    const/4 v15, 0x2

    goto :goto_181

    .line 775
    :cond_195
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v13
    :try_end_19d
    .catchall {:try_start_18d .. :try_end_19d} :catchall_bf

    if-eqz v13, :cond_1a1

    .line 777
    const/4 v15, 0x4

    goto :goto_181

    .line 778
    :cond_1a1
    if-eqz v7, :cond_1a5

    .line 782
    const/4 v15, 0x4

    goto :goto_181

    .line 785
    :cond_1a5
    const/4 v15, 0x3

    goto :goto_181

    .line 787
    :cond_1a7
    :try_start_1a7
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isSignature()Z

    move-result v13
    :try_end_1ab
    .catchall {:try_start_1a7 .. :try_end_1ab} :catchall_4ec

    if-eqz v13, :cond_1e4

    .line 789
    :try_start_1ad
    invoke-direct {v1, v3, v2, v0, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->grantSignaturePermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z

    move-result v13
    :try_end_1b1
    .catchall {:try_start_1ad .. :try_end_1b1} :catchall_1d4

    .line 792
    .end local v22    # "allowedSig":Z
    .restart local v13    # "allowedSig":Z
    move/from16 v24, v7

    const/4 v15, 0x1

    :try_start_1b4
    new-array v7, v15, [I

    .end local v7    # "isLegacySystemApp":Z
    .restart local v24    # "isLegacySystemApp":Z
    const/4 v15, 0x0

    aput v15, v7, v15

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    if-eqz v7, :cond_1c9

    .line 793
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v7, v7, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v7}, Lcom/android/server/pm/OemPackageManagerHelper;->isTrustedSystemSignature([Landroid/content/pm/Signature;)Z

    move-result v7
    :try_end_1c7
    .catchall {:try_start_1b4 .. :try_end_1c7} :catchall_208

    or-int/2addr v7, v13

    .line 796
    .end local v13    # "allowedSig":Z
    .local v7, "allowedSig":Z
    move v13, v7

    .end local v7    # "allowedSig":Z
    .restart local v13    # "allowedSig":Z
    :cond_1c9
    if-eqz v13, :cond_1cf

    .line 797
    const/4 v15, 0x2

    .line 804
    .end local v23    # "grant":I
    .restart local v15    # "grant":I
    move/from16 v22, v13

    goto :goto_1e8

    .end local v15    # "grant":I
    .restart local v23    # "grant":I
    :cond_1cf
    move/from16 v22, v13

    move/from16 v15, v23

    goto :goto_1e8

    .line 1007
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "perm":Ljava/lang/String;
    .end local v5    # "appSupportsRuntimePermissions":Z
    .end local v11    # "permName":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "allowedSig":Z
    .end local v18    # "N":I
    .end local v23    # "grant":I
    .end local v24    # "isLegacySystemApp":Z
    .local v7, "isLegacySystemApp":Z
    :catchall_1d4
    move-exception v0

    move/from16 v24, v7

    move-object v3, v6

    move-object/from16 v31, v10

    move/from16 v11, v16

    move-object/from16 v12, v19

    move/from16 v13, v20

    move-object/from16 v5, p4

    .end local v7    # "isLegacySystemApp":Z
    .restart local v24    # "isLegacySystemApp":Z
    goto/16 :goto_5db

    .line 804
    .end local v24    # "isLegacySystemApp":Z
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "perm":Ljava/lang/String;
    .restart local v5    # "appSupportsRuntimePermissions":Z
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v11    # "permName":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v18    # "N":I
    .restart local v22    # "allowedSig":Z
    .restart local v23    # "grant":I
    :cond_1e4
    move/from16 v24, v7

    move/from16 v15, v23

    .end local v7    # "isLegacySystemApp":Z
    .end local v23    # "grant":I
    .restart local v15    # "grant":I
    .restart local v24    # "isLegacySystemApp":Z
    :goto_1e8
    const/4 v7, 0x1

    :try_start_1e9
    new-array v13, v7, [I

    const/4 v7, 0x0

    aput v7, v13, v7

    invoke-static {v13}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7
    :try_end_1f2
    .catchall {:try_start_1e9 .. :try_end_1f2} :catchall_4de

    if-eqz v7, :cond_20c

    :try_start_1f4
    const-string v7, "com.vfuchongcontrol"

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 805
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20c

    const-string v7, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 806
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_204
    .catchall {:try_start_1f4 .. :try_end_204} :catchall_208

    if-eqz v7, :cond_20c

    .line 807
    const/4 v15, 0x2

    goto :goto_20c

    .line 1007
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "perm":Ljava/lang/String;
    .end local v5    # "appSupportsRuntimePermissions":Z
    .end local v11    # "permName":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v15    # "grant":I
    .end local v18    # "N":I
    .end local v22    # "allowedSig":Z
    :catchall_208
    move-exception v0

    move-object v3, v6

    goto/16 :goto_c3

    .line 811
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "perm":Ljava/lang/String;
    .restart local v5    # "appSupportsRuntimePermissions":Z
    .restart local v11    # "permName":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v15    # "grant":I
    .restart local v18    # "N":I
    .restart local v22    # "allowedSig":Z
    :cond_20c
    :goto_20c
    :try_start_20c
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z
    :try_end_20e
    .catchall {:try_start_20c .. :try_end_20e} :catchall_4de

    if-eqz v7, :cond_233

    .line 812
    :try_start_210
    const-string v7, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v12

    const-string v12, "Granting permission "

    .end local v12    # "i":I
    .restart local v25    # "i":I
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to package "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_232
    .catchall {:try_start_210 .. :try_end_232} :catchall_208

    goto :goto_235

    .line 815
    .end local v25    # "i":I
    .restart local v12    # "i":I
    :cond_233
    move/from16 v25, v12

    .end local v12    # "i":I
    .restart local v25    # "i":I
    :goto_235
    const/4 v12, -0x1

    const/4 v13, 0x1

    if-eq v15, v13, :cond_428

    .line 816
    :try_start_239
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v13
    :try_end_23d
    .catchall {:try_start_239 .. :try_end_23d} :catchall_4de

    if-nez v13, :cond_25c

    :try_start_23f
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v13

    if-eqz v13, :cond_25c

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 819
    invoke-static {v13}, Lcom/android/server/pm/OemPackageManagerHelper;->isReserveApp(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_25c

    .line 823
    if-nez v22, :cond_25c

    invoke-virtual {v9, v3}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_25c

    .line 827
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->isNewPlatformPermissionForPackage(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v13
    :try_end_259
    .catchall {:try_start_23f .. :try_end_259} :catchall_208

    if-nez v13, :cond_25c

    .line 828
    const/4 v15, 0x1

    .line 833
    :cond_25c
    packed-switch v15, :pswitch_data_5e0

    .line 962
    move-object/from16 v33, v6

    move-object/from16 v31, v10

    move/from16 v29, v15

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "currentUserIds":[I
    .end local v15    # "grant":I
    .local v29, "grant":I
    .restart local v31    # "currentUserIds":[I
    .restart local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_3fd

    :try_start_267
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;
    :try_end_269
    .catchall {:try_start_267 .. :try_end_269} :catchall_510

    goto/16 :goto_3f7

    .line 931
    .end local v29    # "grant":I
    .end local v31    # "currentUserIds":[I
    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "currentUserIds":[I
    .restart local v15    # "grant":I
    :pswitch_26b
    nop

    .line 932
    :try_start_26c
    invoke-virtual {v9, v3}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v13
    :try_end_270
    .catchall {:try_start_26c .. :try_end_270} :catchall_4de

    .line 934
    .local v13, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v13, :cond_277

    :try_start_272
    invoke-virtual {v13}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v17
    :try_end_276
    .catchall {:try_start_272 .. :try_end_276} :catchall_208

    goto :goto_279

    :cond_277
    const/16 v17, 0x0

    :goto_279
    move/from16 v26, v17

    .line 936
    .local v26, "flags":I
    :try_start_27b
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v7
    :try_end_27f
    .catchall {:try_start_27b .. :try_end_27f} :catchall_4de

    if-eq v7, v12, :cond_28c

    .line 939
    move-object/from16 v27, v13

    const/4 v7, 0x0

    const/16 v13, 0xff

    :try_start_286
    invoke-virtual {v9, v0, v12, v13, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_289
    .catchall {:try_start_286 .. :try_end_289} :catchall_208

    .line 941
    .end local v13    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v27, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    const/4 v7, 0x1

    .line 946
    .end local v20    # "changedInstallPermission":Z
    .local v7, "changedInstallPermission":Z
    move v13, v7

    goto :goto_290

    .end local v7    # "changedInstallPermission":Z
    .end local v27    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v13    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v20    # "changedInstallPermission":Z
    :cond_28c
    move-object/from16 v27, v13

    move/from16 v13, v20

    .end local v20    # "changedInstallPermission":Z
    .local v13, "changedInstallPermission":Z
    .restart local v27    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :goto_290
    move/from16 v7, v26

    and-int/lit8 v17, v7, 0x8

    .end local v26    # "flags":I
    .local v7, "flags":I
    if-nez v17, :cond_2f6

    .line 947
    :try_start_296
    array-length v12, v10
    :try_end_297
    .catchall {:try_start_296 .. :try_end_297} :catchall_2e8

    move/from16 v28, v13

    move/from16 v29, v15

    move-object/from16 v15, v19

    const/4 v13, 0x0

    .end local v13    # "changedInstallPermission":Z
    .end local v19    # "updatedUserIds":[I
    .local v15, "updatedUserIds":[I
    .local v28, "changedInstallPermission":Z
    .restart local v29    # "grant":I
    :goto_29e
    if-ge v13, v12, :cond_2e3

    :try_start_2a0
    aget v17, v10, v13
    :try_end_2a2
    .catchall {:try_start_2a0 .. :try_end_2a2} :catchall_2d8

    move/from16 v30, v17

    .line 948
    .local v30, "userId":I
    move-object/from16 v31, v10

    move/from16 v32, v12

    move/from16 v10, v30

    :try_start_2aa
    invoke-virtual {v8, v0, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v12
    :try_end_2ae
    .catchall {:try_start_2aa .. :try_end_2ae} :catchall_2cd

    .end local v30    # "userId":I
    .local v10, "userId":I
    .restart local v31    # "currentUserIds":[I
    move-object/from16 v33, v6

    const/4 v6, -0x1

    if-eq v12, v6, :cond_2c4

    .line 951
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_2b3
    invoke-virtual {v8, v0, v10, v7, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 954
    invoke-static {v15, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6
    :try_end_2ba
    .catchall {:try_start_2b3 .. :try_end_2ba} :catchall_2bc

    move-object v15, v6

    .end local v10    # "userId":I
    goto :goto_2c4

    .line 1007
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "perm":Ljava/lang/String;
    .end local v5    # "appSupportsRuntimePermissions":Z
    .end local v7    # "flags":I
    .end local v11    # "permName":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v22    # "allowedSig":Z
    .end local v25    # "i":I
    .end local v27    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v29    # "grant":I
    :catchall_2bc
    move-exception v0

    move-object v12, v15

    move/from16 v11, v16

    move/from16 v13, v28

    goto/16 :goto_517

    .line 947
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "perm":Ljava/lang/String;
    .restart local v5    # "appSupportsRuntimePermissions":Z
    .restart local v7    # "flags":I
    .restart local v11    # "permName":Ljava/lang/String;
    .restart local v18    # "N":I
    .restart local v22    # "allowedSig":Z
    .restart local v25    # "i":I
    .restart local v27    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v29    # "grant":I
    :cond_2c4
    :goto_2c4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v31

    move/from16 v12, v32

    move-object/from16 v6, v33

    goto :goto_29e

    .line 1007
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "perm":Ljava/lang/String;
    .end local v5    # "appSupportsRuntimePermissions":Z
    .end local v7    # "flags":I
    .end local v11    # "permName":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v22    # "allowedSig":Z
    .end local v25    # "i":I
    .end local v27    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v29    # "grant":I
    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_2cd
    move-exception v0

    move-object v3, v6

    move-object v12, v15

    move/from16 v11, v16

    move/from16 v13, v28

    move-object/from16 v5, p4

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_5db

    .end local v31    # "currentUserIds":[I
    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v10, "currentUserIds":[I
    :catchall_2d8
    move-exception v0

    move-object/from16 v31, v10

    move-object v3, v6

    move-object v12, v15

    move/from16 v11, v16

    move/from16 v13, v28

    goto/16 :goto_4e8

    .line 959
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "perm":Ljava/lang/String;
    .restart local v5    # "appSupportsRuntimePermissions":Z
    .restart local v11    # "permName":Ljava/lang/String;
    .restart local v18    # "N":I
    .restart local v22    # "allowedSig":Z
    .restart local v25    # "i":I
    .restart local v29    # "grant":I
    :cond_2e3
    move-object/from16 v33, v6

    move-object/from16 v31, v10

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "currentUserIds":[I
    .restart local v31    # "currentUserIds":[I
    .restart local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_300

    .line 1007
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "perm":Ljava/lang/String;
    .end local v5    # "appSupportsRuntimePermissions":Z
    .end local v11    # "permName":Ljava/lang/String;
    .end local v15    # "updatedUserIds":[I
    .end local v18    # "N":I
    .end local v22    # "allowedSig":Z
    .end local v25    # "i":I
    .end local v28    # "changedInstallPermission":Z
    .end local v29    # "grant":I
    .end local v31    # "currentUserIds":[I
    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "currentUserIds":[I
    .restart local v13    # "changedInstallPermission":Z
    .restart local v19    # "updatedUserIds":[I
    :catchall_2e8
    move-exception v0

    move-object/from16 v31, v10

    move/from16 v28, v13

    move-object v3, v6

    move/from16 v11, v16

    move-object/from16 v12, v19

    move-object/from16 v5, p4

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "currentUserIds":[I
    .end local v13    # "changedInstallPermission":Z
    .restart local v28    # "changedInstallPermission":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_5db

    .line 959
    .end local v28    # "changedInstallPermission":Z
    .end local v31    # "currentUserIds":[I
    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "perm":Ljava/lang/String;
    .restart local v5    # "appSupportsRuntimePermissions":Z
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "currentUserIds":[I
    .restart local v11    # "permName":Ljava/lang/String;
    .restart local v13    # "changedInstallPermission":Z
    .local v15, "grant":I
    .restart local v18    # "N":I
    .restart local v22    # "allowedSig":Z
    .restart local v25    # "i":I
    :cond_2f6
    move-object/from16 v33, v6

    move-object/from16 v31, v10

    move/from16 v28, v13

    move/from16 v29, v15

    move-object/from16 v15, v19

    .line 718
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "currentUserIds":[I
    .end local v13    # "changedInstallPermission":Z
    .end local v19    # "updatedUserIds":[I
    .local v15, "updatedUserIds":[I
    .restart local v28    # "changedInstallPermission":Z
    .restart local v29    # "grant":I
    .restart local v31    # "currentUserIds":[I
    .restart local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_300
    move/from16 v13, v28

    goto/16 :goto_3b5

    .line 860
    .end local v28    # "changedInstallPermission":Z
    .end local v29    # "grant":I
    .end local v31    # "currentUserIds":[I
    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "currentUserIds":[I
    .local v15, "grant":I
    .restart local v19    # "updatedUserIds":[I
    .restart local v20    # "changedInstallPermission":Z
    :pswitch_304
    move-object/from16 v33, v6

    move-object/from16 v31, v10

    move/from16 v29, v15

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "currentUserIds":[I
    .end local v15    # "grant":I
    .restart local v29    # "grant":I
    .restart local v31    # "currentUserIds":[I
    .restart local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_30a
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v6

    array-length v7, v6
    :try_end_313
    .catchall {:try_start_30a .. :try_end_313} :catchall_510

    move-object/from16 v12, v19

    const/4 v10, 0x0

    .end local v19    # "updatedUserIds":[I
    .local v12, "updatedUserIds":[I
    :goto_316
    if-ge v10, v7, :cond_3b1

    :try_start_318
    aget v13, v6, v10

    .line 861
    .local v13, "userId":I
    nop

    .line 862
    invoke-virtual {v9, v3, v13}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v15

    .line 863
    .local v15, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v15, :cond_326

    .line 864
    invoke-virtual {v15}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v19

    goto :goto_328

    :cond_326
    const/16 v19, 0x0

    .line 865
    .local v19, "flags":I
    :goto_328
    invoke-virtual {v9, v3, v13}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_373

    .line 873
    and-int/lit8 v21, v19, 0x8

    if-eqz v21, :cond_335

    const/16 v21, 0x1

    goto :goto_337

    :cond_335
    const/16 v21, 0x0

    .line 875
    .local v21, "revokeOnUpgrade":Z
    :goto_337
    if-eqz v21, :cond_341

    .line 876
    and-int/lit8 v19, v19, -0x9

    .line 878
    invoke-static {v12, v13}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v23

    move-object/from16 v12, v23

    .line 881
    :cond_341
    move-object/from16 v34, v6

    iget-object v6, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-eqz v6, :cond_34f

    if-nez v21, :cond_34c

    goto :goto_34f

    .line 892
    :cond_34c
    move/from16 v35, v7

    goto :goto_35d

    .line 882
    :cond_34f
    :goto_34f
    invoke-virtual {v8, v0, v13}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v6

    move/from16 v35, v7

    const/4 v7, -0x1

    if-ne v6, v7, :cond_35d

    .line 886
    invoke-static {v12, v13}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    .line 892
    .end local v12    # "updatedUserIds":[I
    .local v6, "updatedUserIds":[I
    move-object v12, v6

    .end local v6    # "updatedUserIds":[I
    .restart local v12    # "updatedUserIds":[I
    :cond_35d
    :goto_35d
    iget-object v6, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-eqz v6, :cond_372

    if-eqz v5, :cond_372

    and-int/lit8 v6, v19, 0x40

    if-eqz v6, :cond_372

    .line 896
    and-int/lit8 v6, v19, -0x41

    .line 898
    .end local v19    # "flags":I
    .local v6, "flags":I
    invoke-static {v12, v13}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    move-object v12, v7

    .line 901
    .end local v21    # "revokeOnUpgrade":Z
    move/from16 v19, v6

    .end local v6    # "flags":I
    .restart local v19    # "flags":I
    :cond_372
    goto :goto_3a4

    :cond_373
    move-object/from16 v34, v6

    move/from16 v35, v7

    iget-object v6, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-eqz v6, :cond_3a4

    if-nez v5, :cond_3a4

    .line 909
    const-string v6, "android"

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_398

    .line 910
    and-int/lit8 v6, v19, 0x40

    if-nez v6, :cond_398

    .line 911
    or-int/lit8 v6, v19, 0x40

    .line 913
    .end local v19    # "flags":I
    .restart local v6    # "flags":I
    invoke-static {v12, v13}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    .line 917
    .end local v12    # "updatedUserIds":[I
    .local v7, "updatedUserIds":[I
    move/from16 v19, v6

    move-object v12, v7

    .end local v6    # "flags":I
    .end local v7    # "updatedUserIds":[I
    .restart local v12    # "updatedUserIds":[I
    .restart local v19    # "flags":I
    :cond_398
    invoke-virtual {v8, v0, v13}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3a4

    .line 920
    invoke-static {v12, v13}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    .line 925
    .end local v12    # "updatedUserIds":[I
    .local v6, "updatedUserIds":[I
    move-object v12, v6

    .end local v19    # "flags":I
    .local v6, "flags":I
    .restart local v12    # "updatedUserIds":[I
    :cond_3a4
    :goto_3a4
    move/from16 v6, v19

    invoke-virtual {v8, v0, v13, v6, v6}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_3a9
    .catchall {:try_start_318 .. :try_end_3a9} :catchall_3e7

    .line 860
    .end local v6    # "flags":I
    .end local v13    # "userId":I
    .end local v15    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v34

    move/from16 v7, v35

    goto/16 :goto_316

    .line 927
    :cond_3b1
    nop

    .line 718
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "perm":Ljava/lang/String;
    .end local v5    # "appSupportsRuntimePermissions":Z
    .end local v11    # "permName":Ljava/lang/String;
    .end local v12    # "updatedUserIds":[I
    .end local v20    # "changedInstallPermission":Z
    .end local v22    # "allowedSig":Z
    .end local v29    # "grant":I
    .local v13, "changedInstallPermission":Z
    .local v15, "updatedUserIds":[I
    :cond_3b2
    move-object v15, v12

    move/from16 v13, v20

    :goto_3b5
    const/4 v1, 0x0

    goto/16 :goto_543

    .line 839
    .end local v13    # "changedInstallPermission":Z
    .end local v31    # "currentUserIds":[I
    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "perm":Ljava/lang/String;
    .restart local v5    # "appSupportsRuntimePermissions":Z
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "currentUserIds":[I
    .restart local v11    # "permName":Ljava/lang/String;
    .local v15, "grant":I
    .local v19, "updatedUserIds":[I
    .restart local v20    # "changedInstallPermission":Z
    .restart local v22    # "allowedSig":Z
    :pswitch_3b8
    move-object/from16 v33, v6

    move-object/from16 v31, v10

    move/from16 v29, v15

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "currentUserIds":[I
    .end local v15    # "grant":I
    .restart local v29    # "grant":I
    .restart local v31    # "currentUserIds":[I
    .restart local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_3be
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v6

    array-length v7, v6
    :try_end_3c7
    .catchall {:try_start_3be .. :try_end_3c7} :catchall_510

    move-object/from16 v12, v19

    const/4 v10, 0x0

    .end local v19    # "updatedUserIds":[I
    .restart local v12    # "updatedUserIds":[I
    :goto_3ca
    if-ge v10, v7, :cond_3ec

    :try_start_3cc
    aget v13, v6, v10

    .line 840
    .local v13, "userId":I
    invoke-virtual {v9, v3, v13}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v15

    if-eqz v15, :cond_3e2

    .line 843
    invoke-virtual {v9, v0, v13}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 844
    const/16 v1, 0xff

    const/4 v15, 0x0

    invoke-virtual {v9, v0, v13, v1, v15}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 847
    invoke-static {v12, v13}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    move-object v12, v1

    .line 839
    .end local v13    # "userId":I
    :cond_3e2
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    goto :goto_3ca

    .line 1007
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "perm":Ljava/lang/String;
    .end local v5    # "appSupportsRuntimePermissions":Z
    .end local v11    # "permName":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v22    # "allowedSig":Z
    .end local v25    # "i":I
    .end local v29    # "grant":I
    :catchall_3e7
    move-exception v0

    move/from16 v11, v16

    goto/16 :goto_515

    .line 852
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "perm":Ljava/lang/String;
    .restart local v5    # "appSupportsRuntimePermissions":Z
    .restart local v11    # "permName":Ljava/lang/String;
    .restart local v18    # "N":I
    .restart local v22    # "allowedSig":Z
    .restart local v25    # "i":I
    .restart local v29    # "grant":I
    :cond_3ec
    invoke-virtual {v8, v0}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v1
    :try_end_3f0
    .catchall {:try_start_3cc .. :try_end_3f0} :catchall_3e7

    const/4 v6, -0x1

    if-eq v1, v6, :cond_3b2

    .line 854
    const/4 v1, 0x1

    .line 718
    .end local v20    # "changedInstallPermission":Z
    .local v1, "changedInstallPermission":Z
    move v13, v1

    move-object v15, v12

    goto :goto_3b5

    .line 963
    .end local v1    # "changedInstallPermission":Z
    .end local v12    # "updatedUserIds":[I
    .restart local v19    # "updatedUserIds":[I
    .restart local v20    # "changedInstallPermission":Z
    :goto_3f7
    :try_start_3f7
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 964
    :cond_3fd
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v1, :cond_12a

    .line 965
    const-string v1, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not granting permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " because it was previously installed without"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12a

    .line 973
    .end local v29    # "grant":I
    .end local v31    # "currentUserIds":[I
    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "currentUserIds":[I
    .restart local v15    # "grant":I
    :cond_428
    move-object/from16 v33, v6

    move-object/from16 v31, v10

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "currentUserIds":[I
    .restart local v31    # "currentUserIds":[I
    .restart local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v8, v0}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_486

    .line 976
    const/4 v1, 0x0

    const/16 v7, 0xff

    invoke-virtual {v8, v0, v6, v7, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_439
    .catchall {:try_start_3f7 .. :try_end_439} :catchall_510

    .line 978
    const/4 v13, 0x1

    .line 979
    .end local v20    # "changedInstallPermission":Z
    .local v13, "changedInstallPermission":Z
    :try_start_43a
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Un-granting permission "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " from package "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (protectionLevel="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " flags=0x"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 982
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 979
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47b
    .catchall {:try_start_43a .. :try_end_47b} :catchall_47f

    .line 718
    move-object/from16 v15, v19

    goto/16 :goto_543

    .line 1007
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "perm":Ljava/lang/String;
    .end local v5    # "appSupportsRuntimePermissions":Z
    .end local v11    # "permName":Ljava/lang/String;
    .end local v15    # "grant":I
    .end local v18    # "N":I
    .end local v22    # "allowedSig":Z
    .end local v25    # "i":I
    :catchall_47f
    move-exception v0

    move/from16 v11, v16

    move-object/from16 v12, v19

    goto/16 :goto_517

    .line 984
    .end local v13    # "changedInstallPermission":Z
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "perm":Ljava/lang/String;
    .restart local v5    # "appSupportsRuntimePermissions":Z
    .restart local v11    # "permName":Ljava/lang/String;
    .restart local v15    # "grant":I
    .restart local v18    # "N":I
    .restart local v20    # "changedInstallPermission":Z
    .restart local v22    # "allowedSig":Z
    .restart local v25    # "i":I
    :cond_486
    const/4 v1, 0x0

    :try_start_487
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result v6

    if-eqz v6, :cond_53f

    .line 987
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v6, :cond_53f

    if-eqz v4, :cond_49b

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 989
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53f

    .line 990
    :cond_49b
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not granting permission "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to package "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (protectionLevel="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " flags=0x"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 993
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 990
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "perm":Ljava/lang/String;
    .end local v5    # "appSupportsRuntimePermissions":Z
    .end local v11    # "permName":Ljava/lang/String;
    .end local v15    # "grant":I
    .end local v22    # "allowedSig":Z
    goto/16 :goto_53f

    .line 1007
    .end local v18    # "N":I
    .end local v25    # "i":I
    .end local v31    # "currentUserIds":[I
    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "currentUserIds":[I
    :catchall_4de
    move-exception v0

    move-object/from16 v31, v10

    move-object v3, v6

    move/from16 v11, v16

    move-object/from16 v12, v19

    move/from16 v13, v20

    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v19    # "updatedUserIds":[I
    .end local v20    # "changedInstallPermission":Z
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    .local v11, "runtimePermissionsRevoked":Z
    .restart local v12    # "updatedUserIds":[I
    .restart local v13    # "changedInstallPermission":Z
    :goto_4e8
    move-object/from16 v5, p4

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "currentUserIds":[I
    .restart local v31    # "currentUserIds":[I
    .restart local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_5db

    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v11    # "runtimePermissionsRevoked":Z
    .end local v12    # "updatedUserIds":[I
    .end local v13    # "changedInstallPermission":Z
    .end local v24    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v7, "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v19    # "updatedUserIds":[I
    .restart local v20    # "changedInstallPermission":Z
    :catchall_4ec
    move-exception v0

    move/from16 v24, v7

    move-object/from16 v31, v10

    move-object v3, v6

    move/from16 v11, v16

    move-object/from16 v12, v19

    move/from16 v13, v20

    move-object/from16 v5, p4

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .restart local v24    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_5db

    .line 729
    .end local v24    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v5    # "appSupportsRuntimePermissions":Z
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    .local v11, "permName":Ljava/lang/String;
    .local v12, "i":I
    .restart local v18    # "N":I
    :cond_4fc
    move-object/from16 v33, v6

    move/from16 v24, v7

    move-object/from16 v31, v10

    move/from16 v25, v12

    const/4 v1, 0x0

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .end local v12    # "i":I
    .restart local v24    # "isLegacySystemApp":Z
    .restart local v25    # "i":I
    .restart local v31    # "currentUserIds":[I
    .restart local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_505
    if-eqz v4, :cond_51b

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53f

    goto :goto_51b

    .line 1007
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v5    # "appSupportsRuntimePermissions":Z
    .end local v11    # "permName":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v25    # "i":I
    :catchall_510
    move-exception v0

    move/from16 v11, v16

    move-object/from16 v12, v19

    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v19    # "updatedUserIds":[I
    .end local v20    # "changedInstallPermission":Z
    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v11, "runtimePermissionsRevoked":Z
    .local v12, "updatedUserIds":[I
    .restart local v13    # "changedInstallPermission":Z
    :goto_515
    move/from16 v13, v20

    :goto_517
    move-object/from16 v3, v33

    goto/16 :goto_5ac

    .line 730
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v12    # "updatedUserIds":[I
    .end local v13    # "changedInstallPermission":Z
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v5    # "appSupportsRuntimePermissions":Z
    .local v11, "permName":Ljava/lang/String;
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v18    # "N":I
    .restart local v19    # "updatedUserIds":[I
    .restart local v20    # "changedInstallPermission":Z
    .restart local v25    # "i":I
    .restart local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_51b
    :goto_51b
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v3, :cond_53f

    .line 731
    const-string v3, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53f
    .catchall {:try_start_487 .. :try_end_53f} :catchall_510

    .line 718
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v5    # "appSupportsRuntimePermissions":Z
    .end local v11    # "permName":Ljava/lang/String;
    :cond_53f
    :goto_53f
    move-object/from16 v15, v19

    move/from16 v13, v20

    .end local v19    # "updatedUserIds":[I
    .end local v20    # "changedInstallPermission":Z
    .restart local v13    # "changedInstallPermission":Z
    .local v15, "updatedUserIds":[I
    :goto_543
    add-int/lit8 v12, v25, 0x1

    .end local v25    # "i":I
    .local v12, "i":I
    move/from16 v11, v16

    move/from16 v0, v18

    move/from16 v7, v24

    move-object/from16 v10, v31

    move-object/from16 v6, v33

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    goto/16 :goto_6f

    .line 1007
    .end local v12    # "i":I
    .end local v15    # "updatedUserIds":[I
    .end local v18    # "N":I
    .end local v24    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    .restart local v19    # "updatedUserIds":[I
    :catchall_555
    move-exception v0

    move/from16 v24, v7

    move-object/from16 v31, v10

    move/from16 v20, v13

    move-object v3, v6

    move/from16 v11, v16

    move-object/from16 v12, v19

    move-object/from16 v5, p4

    goto :goto_570

    :catchall_564
    move-exception v0

    move/from16 v24, v7

    move-object/from16 v31, v10

    move/from16 v20, v13

    move-object v3, v6

    move/from16 v11, v16

    move-object/from16 v12, v19

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .end local v13    # "changedInstallPermission":Z
    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v19    # "updatedUserIds":[I
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v11, "runtimePermissionsRevoked":Z
    .local v12, "updatedUserIds":[I
    .restart local v20    # "changedInstallPermission":Z
    .restart local v24    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_570
    goto/16 :goto_5db

    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v11    # "runtimePermissionsRevoked":Z
    .end local v12    # "updatedUserIds":[I
    .end local v20    # "changedInstallPermission":Z
    .end local v24    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    .restart local v13    # "changedInstallPermission":Z
    .restart local v15    # "updatedUserIds":[I
    .restart local v16    # "runtimePermissionsRevoked":Z
    :catchall_572
    move-exception v0

    move/from16 v24, v7

    move-object/from16 v31, v10

    move/from16 v20, v13

    move-object/from16 v19, v15

    move-object v3, v6

    move/from16 v11, v16

    move-object/from16 v12, v19

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .end local v13    # "changedInstallPermission":Z
    .end local v15    # "updatedUserIds":[I
    .restart local v19    # "updatedUserIds":[I
    .restart local v20    # "changedInstallPermission":Z
    .restart local v24    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_5db

    .line 1000
    .end local v19    # "updatedUserIds":[I
    .end local v20    # "changedInstallPermission":Z
    .end local v24    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v0, "N":I
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    .restart local v13    # "changedInstallPermission":Z
    .restart local v15    # "updatedUserIds":[I
    :cond_582
    move/from16 v18, v0

    move-object/from16 v33, v6

    move/from16 v24, v7

    move-object/from16 v31, v10

    move/from16 v20, v13

    move-object/from16 v19, v15

    .end local v0    # "N":I
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .end local v13    # "changedInstallPermission":Z
    .end local v15    # "updatedUserIds":[I
    .restart local v18    # "N":I
    .restart local v19    # "updatedUserIds":[I
    .restart local v20    # "changedInstallPermission":Z
    .restart local v24    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v20, :cond_596

    if-eqz p2, :cond_593

    goto :goto_596

    .line 1001
    :cond_593
    move-object/from16 v3, v33

    goto :goto_5af

    .line 1000
    :cond_596
    :goto_596
    move-object/from16 v3, v33

    :try_start_598
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v0
    :try_end_59c
    .catchall {:try_start_598 .. :try_end_59c} :catchall_5cb

    .end local v33    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_5af

    .line 1001
    :try_start_59e
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0
    :try_end_5a2
    .catchall {:try_start_59e .. :try_end_5a2} :catchall_5a5

    if-eqz v0, :cond_5b5

    goto :goto_5af

    .line 1007
    .end local v18    # "N":I
    :catchall_5a5
    move-exception v0

    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v19    # "updatedUserIds":[I
    .end local v20    # "changedInstallPermission":Z
    .restart local v11    # "runtimePermissionsRevoked":Z
    .restart local v12    # "updatedUserIds":[I
    .restart local v13    # "changedInstallPermission":Z
    :goto_5a6
    move/from16 v11, v16

    move-object/from16 v12, v19

    move/from16 v13, v20

    :goto_5ac
    move-object/from16 v5, p4

    goto :goto_5db

    .line 1001
    .end local v11    # "runtimePermissionsRevoked":Z
    .end local v12    # "updatedUserIds":[I
    .end local v13    # "changedInstallPermission":Z
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v18    # "N":I
    .restart local v19    # "updatedUserIds":[I
    .restart local v20    # "changedInstallPermission":Z
    :cond_5af
    :goto_5af
    :try_start_5af
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystem()Z

    move-result v0
    :try_end_5b3
    .catchall {:try_start_5af .. :try_end_5b3} :catchall_5cb

    if-eqz v0, :cond_5b9

    .line 1005
    :cond_5b5
    const/4 v0, 0x1

    :try_start_5b6
    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V
    :try_end_5b9
    .catchall {:try_start_5b6 .. :try_end_5b9} :catchall_5a5

    .line 1007
    .end local v18    # "N":I
    :cond_5b9
    :try_start_5b9
    monitor-exit v14
    :try_end_5ba
    .catchall {:try_start_5b9 .. :try_end_5ba} :catchall_5cb

    .line 1012
    move-object/from16 v5, p4

    if-eqz v5, :cond_5c6

    .line 1013
    move/from16 v11, v16

    move-object/from16 v12, v19

    invoke-virtual {v5, v12, v11}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    goto :goto_5ca

    .line 1015
    :cond_5c6
    move/from16 v11, v16

    move-object/from16 v12, v19

    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v19    # "updatedUserIds":[I
    .restart local v11    # "runtimePermissionsRevoked":Z
    .restart local v12    # "updatedUserIds":[I
    :goto_5ca
    return-void

    .line 1007
    .end local v11    # "runtimePermissionsRevoked":Z
    .end local v12    # "updatedUserIds":[I
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v19    # "updatedUserIds":[I
    :catchall_5cb
    move-exception v0

    move/from16 v11, v16

    move-object/from16 v12, v19

    move-object/from16 v5, p4

    move/from16 v13, v20

    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v19    # "updatedUserIds":[I
    .restart local v11    # "runtimePermissionsRevoked":Z
    .restart local v12    # "updatedUserIds":[I
    goto :goto_5db

    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v20    # "changedInstallPermission":Z
    .end local v24    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    .restart local v13    # "changedInstallPermission":Z
    :catchall_5d5
    move-exception v0

    move-object v3, v6

    move/from16 v24, v7

    move-object/from16 v31, v10

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v24    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    :goto_5db
    :try_start_5db
    monitor-exit v14
    :try_end_5dc
    .catchall {:try_start_5db .. :try_end_5dc} :catchall_5dd

    throw v0

    :catchall_5dd
    move-exception v0

    goto :goto_5db

    nop

    :pswitch_data_5e0
    .packed-switch 0x2
        :pswitch_3b8
        :pswitch_304
        :pswitch_26b
    .end packed-switch
.end method

.method private grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 14
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userIds"    # [I
    .param p3, "grantedPermissions"    # [Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 1357
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget v4, p2, v1

    .line 1358
    .local v4, "userId":I
    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissionsForUser(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_e} :catch_12

    .line 1357
    .end local v4    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1365
    :cond_11
    goto :goto_29

    .line 1363
    :catch_12
    move-exception v0

    .line 1364
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occured while grant permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_29
    return-void
.end method

.method private grantRequestedRuntimePermissionsForUser(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 27
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I
    .param p3, "grantedPermissions"    # [Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    .line 1371
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 1372
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v13, :cond_10

    .line 1373
    return-void

    .line 1376
    :cond_10
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v14

    .line 1378
    .local v14, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    const/16 v15, 0x14

    .line 1381
    .local v15, "immutableFlags":I
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    move/from16 v16, v0

    .line 1384
    .local v16, "supportsRuntimePermissions":Z
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v11}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v17

    .line 1386
    .local v17, "instantApp":Z
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 1388
    .local v8, "permission":Ljava/lang/String;
    iget-object v1, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1389
    :try_start_41
    iget-object v2, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    move-object v7, v2

    .line 1390
    .local v7, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_a7

    .line 1391
    if-eqz v7, :cond_a6

    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1

    if-nez v1, :cond_57

    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v1

    if-eqz v1, :cond_a6

    :cond_57
    if-eqz v17, :cond_5f

    .line 1392
    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v1

    if-eqz v1, :cond_a6

    :cond_5f
    if-nez v16, :cond_67

    .line 1393
    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v1

    if-nez v1, :cond_a6

    :cond_67
    if-eqz v12, :cond_6f

    .line 1395
    invoke-static {v12, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 1396
    :cond_6f
    invoke-virtual {v14, v8, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v18

    .line 1397
    .local v18, "flags":I
    if-eqz v16, :cond_89

    .line 1399
    and-int/lit8 v1, v18, 0x14

    if-nez v1, :cond_a6

    .line 1400
    iget-object v3, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v1, v9

    move-object v2, v8

    move/from16 v5, p4

    move v6, v11

    move-object/from16 v19, v7

    move-object/from16 v7, p5

    .end local v7    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v19, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    goto :goto_a6

    .line 1403
    .end local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_89
    move-object/from16 v19, v7

    .end local v7    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v1, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-eqz v1, :cond_a6

    .line 1406
    and-int/lit8 v1, v18, 0x40

    if-eqz v1, :cond_a6

    .line 1407
    iget-object v3, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v4, 0x40

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, v8

    move/from16 v6, p4

    move v7, v11

    move-object/from16 v20, v8

    move-object/from16 v8, p5

    .end local v8    # "permission":Ljava/lang/String;
    .local v20, "permission":Ljava/lang/String;
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1413
    .end local v18    # "flags":I
    .end local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v20    # "permission":Ljava/lang/String;
    :cond_a6
    :goto_a6
    goto :goto_31

    .line 1390
    .restart local v8    # "permission":Ljava/lang/String;
    :catchall_a7
    move-exception v0

    move-object/from16 v20, v8

    .end local v8    # "permission":Ljava/lang/String;
    .restart local v20    # "permission":Ljava/lang/String;
    :goto_aa
    :try_start_aa
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ac

    throw v0

    :catchall_ac
    move-exception v0

    goto :goto_aa

    .line 1414
    .end local v20    # "permission":Ljava/lang/String;
    :cond_ae
    return-void
.end method

.method private grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 27
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    .line 1418
    move-object/from16 v12, p6

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v11}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1419
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    return-void

    .line 1423
    :cond_29
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "grantRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "grantRuntimePermission"

    move-object v1, v8

    move/from16 v2, p4

    move v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1433
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1434
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1df

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v0, :cond_1df

    .line 1438
    iget-object v2, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1439
    :try_start_4f
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    move-object v3, v0

    .line 1440
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_1d6

    .line 1441
    if-eqz v3, :cond_1bb

    .line 1444
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move/from16 v4, p4

    invoke-virtual {v0, v1, v4, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v0

    if-nez v0, :cond_1a2

    .line 1448
    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Landroid/content/pm/PackageParser$Package;)V

    .line 1454
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v0, v0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    const/16 v2, 0x17

    if-eqz v0, :cond_7b

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v2, :cond_7b

    .line 1456
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1457
    return-void

    .line 1460
    :cond_7b
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 1462
    .local v5, "uid":I
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 1463
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 1465
    .local v7, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v7, v9, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v13

    .line 1466
    .local v13, "flags":I
    and-int/lit8 v0, v13, 0x10

    if-nez v0, :cond_181

    .line 1470
    if-nez p3, :cond_ba

    and-int/lit8 v0, v13, 0x4

    if-nez v0, :cond_9b

    goto :goto_ba

    .line 1471
    :cond_9b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot grant policy fixed permission "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for package "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1475
    :cond_ba
    :goto_ba
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    const/4 v14, -0x1

    if-eqz v0, :cond_cd

    .line 1478
    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    if-eq v0, v14, :cond_cc

    .line 1480
    if-eqz v12, :cond_cc

    .line 1481
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onInstallPermissionGranted()V

    .line 1484
    :cond_cc
    return-void

    .line 1487
    :cond_cd
    invoke-virtual {v6, v11}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    if-eqz v0, :cond_f9

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v0

    if-eqz v0, :cond_da

    goto :goto_f9

    .line 1488
    :cond_da
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot grant non-ephemeral permission"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for package "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1492
    :cond_f9
    :goto_f9
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v2, :cond_107

    .line 1493
    const-string v0, "PackageManager"

    const-string v2, "Cannot grant runtime permission to a legacy app"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    return-void

    .line 1497
    :cond_107
    invoke-virtual {v7, v3, v11}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v2

    .line 1498
    .local v2, "result":I
    if-eq v2, v14, :cond_17c

    const/4 v0, 0x1

    if-eq v2, v0, :cond_111

    goto :goto_11e

    .line 1504
    :cond_111
    if-eqz v12, :cond_11e

    .line 1505
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {v12, v0, v11}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onGidsChanged(II)V

    .line 1511
    :cond_11e
    :goto_11e
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_129

    .line 1512
    const/16 v0, 0x4db

    invoke-direct {v8, v0, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1515
    :cond_129
    if-eqz v12, :cond_12e

    .line 1516
    invoke-virtual {v12, v5, v11}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionGranted(II)V

    .line 1522
    :cond_12e
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_144

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1523
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13f

    goto :goto_144

    .line 1536
    :cond_13f
    move-object/from16 v18, v1

    move/from16 v19, v2

    goto :goto_170

    .line 1524
    :cond_144
    :goto_144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    move-wide/from16 v16, v14

    .line 1526
    .local v16, "token":J
    :try_start_14a
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v11}, Landroid/os/UserManagerInternal;->isUserInitialized(I)Z

    move-result v0
    :try_end_150
    .catchall {:try_start_14a .. :try_end_150} :catchall_171

    if-eqz v0, :cond_166

    .line 1527
    :try_start_152
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 1529
    .local v0, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-virtual {v0, v5, v10}, Landroid/os/storage/StorageManagerInternal;->onExternalStoragePolicyChanged(ILjava/lang/String;)V
    :try_end_15d
    .catchall {:try_start_152 .. :try_end_15d} :catchall_15e

    .line 1529
    .end local v0    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    goto :goto_166

    .line 1532
    :catchall_15e
    move-exception v0

    move-object/from16 v18, v1

    move/from16 v19, v2

    move-wide/from16 v1, v16

    goto :goto_178

    :cond_166
    :goto_166
    move-object/from16 v18, v1

    move/from16 v19, v2

    move-wide/from16 v1, v16

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1533
    .end local v2    # "result":I
    .end local v16    # "token":J
    .local v1, "token":J
    .local v18, "pkg":Landroid/content/pm/PackageParser$Package;
    .local v19, "result":I
    nop

    .line 1536
    .end local v1    # "token":J
    :goto_170
    return-void

    .line 1532
    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v19    # "result":I
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v2    # "result":I
    .restart local v16    # "token":J
    :catchall_171
    move-exception v0

    move-object/from16 v18, v1

    move/from16 v19, v2

    move-wide/from16 v1, v16

    .line 1532
    .end local v2    # "result":I
    .end local v16    # "token":J
    .local v1, "token":J
    .restart local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v19    # "result":I
    :goto_178
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1500
    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v19    # "result":I
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v2    # "result":I
    :cond_17c
    move-object/from16 v18, v1

    move/from16 v19, v2

    .line 1500
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "result":I
    .restart local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v19    # "result":I
    return-void

    .line 1467
    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v19    # "result":I
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_181
    move-object/from16 v18, v1

    .line 1467
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant system fixed permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1445
    .end local v5    # "uid":I
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v13    # "flags":I
    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1a2
    move-object/from16 v18, v1

    .line 1445
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1442
    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1bb
    move/from16 v4, p4

    move-object/from16 v18, v1

    .line 1442
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1440
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_1d6
    move-exception v0

    move/from16 v4, p4

    move-object/from16 v18, v1

    .line 1440
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_1db
    :try_start_1db
    monitor-exit v2
    :try_end_1dc
    .catchall {:try_start_1db .. :try_end_1dc} :catchall_1dd

    throw v0

    :catchall_1dd
    move-exception v0

    goto :goto_1db

    .line 1435
    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1df
    move/from16 v4, p4

    move-object/from16 v18, v1

    .line 1435
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private grantRuntimePermissionsGrantedToDisabledPackageLocked(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 24
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "callingUid"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1320
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_9

    .line 1321
    return-void

    .line 1323
    :cond_9
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 1324
    return-void

    .line 1326
    :cond_e
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1327
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 1328
    .local v9, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_9e

    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v0, :cond_20

    goto/16 :goto_9e

    .line 1331
    :cond_20
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 1332
    .local v10, "disabledPs":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->hasChildPackages()Z

    move-result v0

    if-eqz v0, :cond_33

    goto/16 :goto_9d

    .line 1335
    :cond_33
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1336
    .local v11, "permCount":I
    const/4 v12, 0x0

    move v0, v12

    .local v0, "i":I
    :goto_3b
    move v13, v0

    .end local v0    # "i":I
    .local v13, "i":I
    if-ge v13, v11, :cond_9c

    .line 1337
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 1338
    .local v14, "permission":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v15

    .line 1339
    .local v15, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v15, :cond_99

    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1340
    goto :goto_99

    .line 1342
    :cond_5c
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v6

    array-length v5, v6

    move v4, v12

    :goto_64
    if-ge v4, v5, :cond_99

    aget v3, v6, v4

    .line 1343
    .local v3, "userId":I
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    invoke-virtual {v0, v14, v3}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1344
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v14

    move/from16 v17, v3

    move/from16 v3, v16

    .end local v3    # "userId":I
    .local v17, "userId":I
    move/from16 v16, v4

    move/from16 v4, p2

    move/from16 v18, v5

    move/from16 v5, v17

    move-object/from16 v19, v6

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .end local v17    # "userId":I
    goto :goto_92

    .line 1342
    :cond_8c
    move/from16 v16, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    :goto_92
    add-int/lit8 v4, v16, 0x1

    move/from16 v5, v18

    move-object/from16 v6, v19

    goto :goto_64

    .line 1336
    .end local v14    # "permission":Ljava/lang/String;
    .end local v15    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_99
    :goto_99
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "i":I
    .restart local v0    # "i":I
    goto :goto_3b

    .line 1349
    .end local v0    # "i":I
    :cond_9c
    return-void

    .line 1333
    .end local v11    # "permCount":I
    :cond_9d
    :goto_9d
    return-void

    .line 1329
    .end local v10    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_9e
    :goto_9e
    return-void
.end method

.method private grantSignaturePermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z
    .registers 26
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .param p4, "origPermissions"    # Lcom/android/server/pm/permission/PermissionsState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1061
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isOEM()Z

    move-result v3

    .line 1062
    .local v3, "oemPermission":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v4

    .line 1063
    .local v4, "vendorPrivilegedPermission":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPrivileged()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_1f

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_1f

    :cond_1d
    move v5, v7

    goto :goto_20

    :cond_1f
    :goto_1f
    move v5, v6

    .line 1064
    .local v5, "privilegedPermission":Z
    :goto_20
    sget-boolean v8, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    .line 1066
    .local v8, "privappPermissionsDisable":Z
    const-string v9, "android"

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1067
    .local v9, "platformPermission":Z
    const-string v10, "android"

    iget-object v11, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1068
    .local v10, "platformPackage":Z
    if-nez v8, :cond_e3

    if-eqz v5, :cond_e3

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v11

    if-eqz v11, :cond_e3

    if-nez v10, :cond_e3

    if-eqz v9, :cond_e3

    .line 1070
    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v11

    if-nez v11, :cond_e3

    .line 1072
    iget-boolean v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    if-nez v11, :cond_de

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v11

    if-nez v11, :cond_de

    .line 1074
    const/4 v11, 0x0

    .line 1075
    .local v11, "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v12

    if-eqz v12, :cond_64

    .line 1076
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v12

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1077
    invoke-virtual {v12, v13}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v11

    goto :goto_7f

    .line 1078
    :cond_64
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isProduct()Z

    move-result v12

    if-eqz v12, :cond_75

    .line 1079
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v12

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1080
    invoke-virtual {v12, v13}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v11

    goto :goto_7f

    .line 1082
    :cond_75
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v12

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1083
    invoke-virtual {v12, v13}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v11

    .line 1085
    :goto_7f
    if-eqz v11, :cond_8a

    .line 1086
    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_88

    goto :goto_8a

    :cond_88
    move v12, v7

    goto :goto_8b

    :cond_8a
    :goto_8a
    move v12, v6

    .line 1087
    .local v12, "permissionViolation":Z
    :goto_8b
    if-eqz v12, :cond_dd

    .line 1088
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Privileged permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " - not in privapp-permissions whitelist"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    sget-boolean v13, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v13, :cond_de

    .line 1092
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v13, :cond_c1

    .line 1093
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 1095
    :cond_c1
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_de

    .line 1098
    :cond_dd
    return v7

    .line 1101
    .end local v11    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "permissionViolation":Z
    :cond_de
    :goto_de
    sget-boolean v11, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v11, :cond_e3

    .line 1102
    return v7

    .line 1106
    :cond_e3
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v11, v7, v7}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v11

    .line 1108
    .local v11, "systemPackageName":Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1109
    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 1118
    .local v12, "systemPackage":Landroid/content/pm/PackageParser$Package;
    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1120
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSettingBase;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v14

    .line 1119
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v13

    if-nez v13, :cond_127

    .line 1121
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSettingBase;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v13

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v15, 0x4

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v13

    if-nez v13, :cond_127

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v14, v12, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1124
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v13

    if-nez v13, :cond_127

    iget-object v13, v12, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1125
    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v13

    if-eqz v13, :cond_125

    goto :goto_127

    :cond_125
    move v13, v7

    goto :goto_128

    :cond_127
    :goto_127
    move v13, v6

    .line 1132
    .local v13, "allowed":Z
    :goto_128
    new-array v14, v6, [I

    aput v7, v14, v7

    invoke-static {v14}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v14

    if-eqz v14, :cond_15b

    .line 1133
    if-nez v13, :cond_15b

    invoke-static {v2, v1}, Lcom/android/server/pm/OemPackageManagerHelper;->allowOrdinaryAppGrantingSigPerms(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15b

    .line 1134
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Allowing package "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to get permission "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/4 v13, 0x1

    .line 1140
    :cond_15b
    if-nez v13, :cond_287

    if-nez v5, :cond_161

    if-eqz v3, :cond_287

    .line 1141
    :cond_161
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_287

    .line 1144
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v6

    if-eqz v6, :cond_236

    .line 1145
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1146
    invoke-virtual {v6, v14}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1148
    .local v6, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_17c

    iget-object v15, v6, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    goto :goto_17d

    :cond_17c
    const/4 v15, 0x0

    .line 1149
    .local v15, "disabledPs":Lcom/android/server/pm/PackageSetting;
    :goto_17d
    if-eqz v15, :cond_1a2

    .line 1150
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v14

    invoke-virtual {v14, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a2

    .line 1154
    if-eqz v5, :cond_191

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v14

    if-nez v14, :cond_19f

    :cond_191
    if-eqz v3, :cond_235

    .line 1155
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v14

    if-eqz v14, :cond_235

    .line 1156
    invoke-static {v15, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_235

    .line 1157
    :cond_19f
    const/4 v13, 0x1

    goto/16 :goto_235

    .line 1166
    :cond_1a2
    if-eqz v15, :cond_1c3

    if-eqz v6, :cond_1c3

    .line 1167
    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1c3

    if-eqz v5, :cond_1b4

    .line 1168
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v14

    if-nez v14, :cond_1c2

    :cond_1b4
    if-eqz v3, :cond_1c3

    .line 1169
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v14

    if-eqz v14, :cond_1c3

    .line 1170
    invoke-static {v15, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1c3

    .line 1171
    :cond_1c2
    const/4 v13, 0x1

    .line 1176
    :cond_1c3
    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v14, :cond_235

    .line 1177
    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1178
    invoke-virtual {v14, v7}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 1179
    .local v7, "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_1d8

    .line 1180
    iget-object v14, v7, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    goto :goto_1d9

    :cond_1d8
    const/4 v14, 0x0

    .line 1181
    .local v14, "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    :goto_1d9
    if-eqz v7, :cond_235

    if-eqz v5, :cond_1e3

    .line 1182
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v16

    if-nez v16, :cond_1eb

    :cond_1e3
    if-eqz v3, :cond_235

    .line 1183
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v16

    if-eqz v16, :cond_235

    .line 1184
    :cond_1eb
    invoke-direct {v0, v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1f9

    .line 1185
    invoke-static {v14, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1f9

    .line 1186
    const/4 v13, 0x1

    goto :goto_235

    .line 1187
    :cond_1f9
    move-object/from16 v17, v6

    iget-object v6, v7, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .end local v6    # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .local v17, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_235

    .line 1189
    iget-object v6, v7, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_205
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_235

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v6

    move-object/from16 v6, v16

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 1191
    .local v6, "disabledChildPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_21e

    .line 1192
    move-object/from16 v19, v7

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    .end local v7    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .local v19, "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    check-cast v7, Lcom/android/server/pm/PackageSetting;

    goto :goto_221

    .line 1193
    .end local v19    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v7    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    :cond_21e
    move-object/from16 v19, v7

    .end local v7    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v19    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    const/4 v7, 0x0

    .line 1194
    .local v7, "disabledChildPs":Lcom/android/server/pm/PackageSetting;
    :goto_221
    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_22f

    .line 1195
    invoke-static {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_22f

    .line 1197
    const/4 v13, 0x1

    .line 1198
    goto :goto_235

    .line 1200
    .end local v6    # "disabledChildPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "disabledChildPs":Lcom/android/server/pm/PackageSetting;
    :cond_22f
    nop

    .line 1189
    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_205

    .line 1205
    .end local v14    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .end local v19    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    :cond_235
    :goto_235
    goto :goto_255

    .line 1206
    :cond_236
    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 1207
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_242

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v7

    if-nez v7, :cond_250

    :cond_242
    if-eqz v3, :cond_252

    .line 1208
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isOem()Z

    move-result v7

    if-eqz v7, :cond_252

    .line 1209
    invoke-static {v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_252

    :cond_250
    const/4 v7, 0x1

    goto :goto_253

    :cond_252
    const/4 v7, 0x0

    :goto_253
    move v6, v7

    .line 1214
    .end local v13    # "allowed":Z
    .local v6, "allowed":Z
    move v13, v6

    .end local v6    # "allowed":Z
    .restart local v13    # "allowed":Z
    :goto_255
    if-eqz v13, :cond_287

    if-eqz v5, :cond_287

    if-nez v4, :cond_287

    .line 1215
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v6

    if-eqz v6, :cond_287

    .line 1216
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Permission "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " cannot be granted to privileged vendor apk "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const/4 v13, 0x0

    .line 1222
    :cond_287
    if-nez v13, :cond_320

    .line 1223
    if-nez v13, :cond_29a

    .line 1224
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPre23()Z

    move-result v6

    if-eqz v6, :cond_29a

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_29a

    .line 1229
    const/4 v13, 0x1

    .line 1231
    :cond_29a
    if-nez v13, :cond_2b3

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isInstaller()Z

    move-result v6

    if-eqz v6, :cond_2b3

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x2

    .line 1232
    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b3

    .line 1236
    const/4 v13, 0x1

    .line 1238
    :cond_2b3
    if-nez v13, :cond_2cc

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVerifier()Z

    move-result v6

    if-eqz v6, :cond_2cc

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x3

    .line 1239
    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2cc

    .line 1243
    const/4 v13, 0x1

    .line 1245
    :cond_2cc
    if-nez v13, :cond_2db

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPreInstalled()Z

    move-result v6

    if-eqz v6, :cond_2db

    .line 1246
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_2db

    .line 1248
    const/4 v13, 0x1

    .line 1250
    :cond_2db
    if-nez v13, :cond_2ea

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v6

    if-eqz v6, :cond_2ea

    .line 1253
    move-object/from16 v6, p4

    invoke-virtual {v6, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v13

    goto :goto_2ec

    .line 1255
    :cond_2ea
    move-object/from16 v6, p4

    :goto_2ec
    if-nez v13, :cond_306

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isSetup()Z

    move-result v7

    if-eqz v7, :cond_306

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1256
    const/4 v1, 0x1

    const/4 v15, 0x0

    invoke-virtual {v14, v1, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_306

    .line 1260
    const/4 v1, 0x1

    .line 1262
    .end local v13    # "allowed":Z
    .local v1, "allowed":Z
    move v13, v1

    .end local v1    # "allowed":Z
    .restart local v13    # "allowed":Z
    :cond_306
    if-nez v13, :cond_322

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isSystemTextClassifier()Z

    move-result v1

    if-eqz v1, :cond_322

    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x5

    .line 1263
    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_322

    .line 1267
    const/4 v13, 0x1

    goto :goto_322

    .line 1270
    :cond_320
    move-object/from16 v6, p4

    :cond_322
    :goto_322
    return v13
.end method

.method private static hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .registers 5
    .param p0, "pkgInfo"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "permName"    # Ljava/lang/String;

    .line 2078
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 2079
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2080
    return v1

    .line 2078
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2083
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .registers 8
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1042
    const/4 v0, 0x0

    .line 1043
    .local v0, "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1045
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_2d

    .line 1046
    :cond_12
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1048
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_2d

    .line 1050
    :cond_23
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 1053
    :goto_2d
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    move v3, v2

    goto :goto_3a

    :cond_39
    move v3, v1

    .line 1055
    .local v3, "whitelisted":Z
    :goto_3a
    if-nez v3, :cond_4a

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_49

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 1056
    invoke-direct {p0, p1, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_4a

    :cond_49
    goto :goto_4b

    .line 1055
    :cond_4a
    :goto_4a
    move v1, v2

    :goto_4b
    return v1
.end method

.method private isNewPlatformPermissionForPackage(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .registers 10
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1018
    const/4 v0, 0x0

    .line 1019
    .local v0, "allowed":Z
    sget-object v1, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v1, v1

    .line 1020
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_5
    if-ge v2, v1, :cond_40

    .line 1021
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v3, v3, v2

    .line 1023
    .local v3, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v4, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-ge v4, v5, :cond_3d

    .line 1025
    const/4 v0, 0x1

    .line 1026
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auto-granting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to old pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    goto :goto_40

    .line 1020
    .end local v3    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1031
    .end local v2    # "ip":I
    :cond_40
    :goto_40
    return v0
.end method

.method private isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "permission"    # Ljava/lang/String;

    .line 1307
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1308
    .local v0, "permCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "j":I
    :goto_8
    if-ge v2, v0, :cond_1d

    .line 1309
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1310
    .local v3, "requestedPermission":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1311
    const/4 v1, 0x1

    return v1

    .line 1308
    .end local v3    # "requestedPermission":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1314
    .end local v2    # "j":I
    :cond_1d
    return v1
.end method

.method private isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z
    .registers 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1288
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v0, v0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1289
    return v1

    .line 1293
    :cond_8
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_11

    .line 1294
    return v1

    .line 1298
    :cond_11
    if-eqz p1, :cond_25

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v0, :cond_18

    goto :goto_25

    .line 1301
    :cond_18
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1302
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 1303
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionsState;->isPermissionReviewRequired(I)Z

    move-result v2

    return v2

    .line 1299
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v1    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_25
    :goto_25
    return v1
.end method

.method private logPermission(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2094
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2095
    .local v0, "log":Landroid/metrics/LogMaker;
    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 2096
    const/16 v1, 0x4d9

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2098
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2099
    return-void
.end method

.method private removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 12
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 555
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_3
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 557
    .local v1, "N":I
    const/4 v2, 0x0

    .line 558
    .local v2, "r":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "r":Ljava/lang/StringBuilder;
    :goto_d
    if-ge v2, v1, :cond_7d

    .line 559
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Permission;

    .line 560
    .local v5, "p":Landroid/content/pm/PackageParser$Permission;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    iget-object v7, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/BasePermission;

    .line 561
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v6, :cond_36

    .line 562
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/permission/BasePermission;

    move-object v6, v7

    .line 564
    :cond_36
    if-eqz v6, :cond_5f

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/BasePermission;->isPermission(Landroid/content/pm/PackageParser$Permission;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 565
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/BasePermission;->setPermission(Landroid/content/pm/PackageParser$Permission;)V

    .line 566
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v7, :cond_5f

    if-eqz p2, :cond_5f

    .line 567
    if-nez v4, :cond_53

    .line 568
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x100

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v7

    goto :goto_58

    .line 570
    :cond_53
    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    :goto_58
    iget-object v7, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :cond_5f
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Permission;->isAppOp()Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 576
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 577
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 578
    .local v7, "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v7, :cond_7a

    .line 579
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 558
    .end local v5    # "p":Landroid/content/pm/PackageParser$Permission;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 583
    .end local v2    # "i":I
    :cond_7d
    if-eqz v4, :cond_99

    .line 584
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v2, :cond_99

    const-string v2, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Permissions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_99
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v2

    .line 588
    const/4 v2, 0x0

    .line 589
    .end local v4    # "r":Ljava/lang/StringBuilder;
    .local v2, "r":Ljava/lang/StringBuilder;
    nop

    .local v3, "i":I
    :goto_a2
    if-ge v3, v1, :cond_d5

    .line 590
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 591
    .local v4, "perm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionAppOp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 592
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 593
    .local v5, "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_d2

    .line 594
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 595
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d2

    .line 596
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_d2
    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    .line 601
    .end local v3    # "i":I
    :cond_d5
    if-eqz v2, :cond_f1

    .line 602
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v3, :cond_f1

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    .end local v1    # "N":I
    .end local v2    # "r":Ljava/lang/StringBuilder;
    :cond_f1
    monitor-exit v0

    .line 605
    return-void

    .line 604
    :catchall_f3
    move-exception v1

    monitor-exit v0
    :try_end_f5
    .catchall {:try_start_3 .. :try_end_f5} :catchall_f3

    throw v1
.end method

.method private removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 10
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 643
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_46

    .line 646
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 647
    .local v0, "tree":Lcom/android/server/pm/permission/BasePermission;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 648
    :try_start_11
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 649
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v2, :cond_1b

    .line 650
    monitor-exit v1

    return-void

    .line 652
    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 654
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_37
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 658
    if-eqz p3, :cond_41

    .line 659
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionRemoved()V

    .line 661
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_41
    monitor-exit v1

    .line 662
    return-void

    .line 661
    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_11 .. :try_end_45} :catchall_43

    throw v2

    .line 644
    .end local v0    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_46
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant applications don\'t have access to this method"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 21
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    .line 1540
    move-object/from16 v11, p6

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v10}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1541
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    return-void

    .line 1545
    :cond_27
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "revokeRuntimePermission"

    move-object v0, v7

    move v2, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1557
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1558
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_13b

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v1, :cond_13b

    .line 1561
    iget-object v1, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v0, v2, v10}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v1

    if-nez v1, :cond_124

    .line 1564
    iget-object v1, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    .line 1565
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v1, :cond_10d

    .line 1569
    invoke-virtual {v1, v0}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Landroid/content/pm/PackageParser$Package;)V

    .line 1575
    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-eqz v2, :cond_78

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_78

    .line 1577
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1578
    return-void

    .line 1581
    :cond_78
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1582
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    .line 1584
    .local v3, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v3, v8, v10}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v4

    .line 1586
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_b0

    .line 1587
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_91

    goto :goto_b0

    .line 1588
    :cond_91
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Non-System UID cannot revoke system fixed permission "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " for package "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1591
    :cond_b0
    :goto_b0
    if-nez p3, :cond_d6

    and-int/lit8 v6, v4, 0x4

    if-nez v6, :cond_b7

    goto :goto_d6

    .line 1592
    :cond_b7
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot revoke policy fixed permission "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " for package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1596
    :cond_d6
    :goto_d6
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v6

    const/4 v12, -0x1

    if-eqz v6, :cond_e9

    .line 1599
    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v6

    if-eq v6, v12, :cond_e8

    .line 1601
    if-eqz v11, :cond_e8

    .line 1602
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onInstallPermissionRevoked()V

    .line 1605
    :cond_e8
    return-void

    .line 1608
    :cond_e9
    invoke-virtual {v3, v1, v10}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v6

    if-ne v6, v12, :cond_f0

    .line 1610
    return-void

    .line 1613
    :cond_f0
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_fb

    .line 1614
    const/16 v6, 0x4dd

    invoke-direct {v7, v6, v8, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1617
    :cond_fb
    if-eqz v11, :cond_10c

    .line 1618
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 1619
    .local v6, "uid":I
    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12, v10}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionRevoked(II)V

    .line 1621
    .end local v6    # "uid":I
    :cond_10c
    return-void

    .line 1566
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v4    # "flags":I
    :cond_10d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1562
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_124
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1559
    :cond_13b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 31
    .param p1, "newPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "oldPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p4, "permissionCallback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .local p3, "allPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 412
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 413
    .local v11, "numOldPackagePermissions":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v11}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v12, v0

    .line 416
    .local v12, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v11, :cond_31

    .line 417
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    .line 419
    .local v1, "permission":Landroid/content/pm/PackageParser$Permission;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-eqz v2, :cond_2e

    .line 420
    iget-object v2, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    iget-object v3, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .end local v1    # "permission":Landroid/content/pm/PackageParser$Permission;
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 425
    .end local v0    # "i":I
    :cond_31
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 426
    .local v14, "numNewPackagePermissions":I
    const/4 v0, 0x0

    .local v0, "newPermissionNum":I
    :goto_38
    move v15, v0

    .end local v0    # "newPermissionNum":I
    .local v15, "newPermissionNum":I
    if-ge v15, v14, :cond_16b

    .line 428
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 429
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/PackageParser$Permission;

    .line 430
    .local v7, "newPermission":Landroid/content/pm/PackageParser$Permission;
    iget-object v0, v7, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v16

    .line 432
    .local v16, "newProtection":I
    and-int/lit8 v0, v16, 0x1

    if-eqz v0, :cond_15d

    .line 433
    iget-object v0, v7, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 435
    .local v6, "permissionName":Ljava/lang/String;
    iget-object v0, v7, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-nez v0, :cond_58

    const/4 v0, 0x0

    goto :goto_5e

    :cond_58
    iget-object v0, v7, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    :goto_5e
    move-object v5, v0

    .line 436
    .local v5, "newPermissionGroupName":Ljava/lang/String;
    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 439
    .local v4, "oldPermissionGroupName":Ljava/lang/String;
    if-eqz v5, :cond_15d

    .line 440
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15d

    .line 441
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    .line 442
    .local v3, "userIds":[I
    array-length v2, v3

    .line 443
    .local v2, "numUserIds":I
    const/4 v0, 0x0

    .local v0, "userIdNum":I
    :goto_76
    move v1, v0

    .end local v0    # "userIdNum":I
    .local v1, "userIdNum":I
    if-ge v1, v2, :cond_15d

    .line 444
    aget v13, v3, v1

    .line 446
    .local v13, "userId":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 447
    .local v10, "numPackages":I
    const/4 v0, 0x0

    .local v0, "packageNum":I
    :goto_80
    move/from16 v18, v0

    .end local v0    # "packageNum":I
    .local v18, "packageNum":I
    move/from16 v19, v11

    move/from16 v11, v18

    if-ge v11, v10, :cond_144

    .line 448
    .end local v18    # "packageNum":I
    .local v11, "packageNum":I
    .local v19, "numOldPackagePermissions":I
    move/from16 v20, v10

    move-object/from16 v10, p3

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v10    # "numPackages":I
    .local v20, "numPackages":I
    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 450
    .local v10, "packageName":Ljava/lang/String;
    move-object/from16 v21, v12

    const/4 v12, 0x0

    invoke-direct {v8, v6, v10, v12, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .end local v12    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v21, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_120

    .line 452
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v17, "72710897"

    aput-object v17, v0, v12

    iget-object v12, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 453
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x1

    aput-object v12, v0, v17

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v1

    const-string v1, "Revoking permission "

    .end local v1    # "userIdNum":I
    .local v24, "userIdNum":I
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from package "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as the group changed from "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x2

    aput-object v1, v0, v12

    .line 452
    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 460
    const/4 v0, 0x0

    const/16 v12, 0x3e8

    move/from16 v17, v24

    move-object v1, v8

    .end local v24    # "userIdNum":I
    .local v17, "userIdNum":I
    move/from16 v18, v2

    move-object v2, v6

    .end local v2    # "numUserIds":I
    .local v18, "numUserIds":I
    move-object/from16 v22, v3

    move-object v3, v10

    .end local v3    # "userIds":[I
    .local v22, "userIds":[I
    move-object/from16 v23, v4

    move v4, v0

    .end local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .local v23, "oldPermissionGroupName":Ljava/lang/String;
    move-object/from16 v24, v5

    move v5, v12

    .end local v5    # "newPermissionGroupName":Ljava/lang/String;
    .local v24, "newPermissionGroupName":Ljava/lang/String;
    move-object v12, v6

    move v6, v13

    .end local v6    # "permissionName":Ljava/lang/String;
    .local v12, "permissionName":Ljava/lang/String;
    move-object/from16 v25, v7

    move-object/from16 v7, p4

    .end local v7    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .local v25, "newPermission":Landroid/content/pm/PackageParser$Permission;
    :try_start_fb
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    :try_end_fe
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fb .. :try_end_fe} :catch_ff

    .line 465
    goto :goto_12d

    .line 462
    :catch_ff
    move-exception v0

    move-object v1, v0

    .line 463
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not revoke "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "packageName":Ljava/lang/String;
    goto :goto_12d

    .line 447
    .end local v12    # "permissionName":Ljava/lang/String;
    .end local v17    # "userIdNum":I
    .end local v18    # "numUserIds":I
    .end local v22    # "userIds":[I
    .end local v23    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v24    # "newPermissionGroupName":Ljava/lang/String;
    .end local v25    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .restart local v1    # "userIdNum":I
    .restart local v2    # "numUserIds":I
    .restart local v3    # "userIds":[I
    .restart local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v5    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "permissionName":Ljava/lang/String;
    .restart local v7    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    :cond_120
    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object v12, v6

    move-object/from16 v25, v7

    .end local v1    # "userIdNum":I
    .end local v2    # "numUserIds":I
    .end local v3    # "userIds":[I
    .end local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v5    # "newPermissionGroupName":Ljava/lang/String;
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v7    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .restart local v12    # "permissionName":Ljava/lang/String;
    .restart local v17    # "userIdNum":I
    .restart local v18    # "numUserIds":I
    .restart local v22    # "userIds":[I
    .restart local v23    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v24    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v25    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    :goto_12d
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "packageNum":I
    .local v0, "packageNum":I
    move-object v6, v12

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v11, v19

    move/from16 v10, v20

    move-object/from16 v12, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v7, v25

    goto/16 :goto_80

    .line 443
    .end local v0    # "packageNum":I
    .end local v13    # "userId":I
    .end local v17    # "userIdNum":I
    .end local v18    # "numUserIds":I
    .end local v20    # "numPackages":I
    .end local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "userIds":[I
    .end local v23    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v24    # "newPermissionGroupName":Ljava/lang/String;
    .end local v25    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .restart local v1    # "userIdNum":I
    .restart local v2    # "numUserIds":I
    .restart local v3    # "userIds":[I
    .restart local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v5    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "permissionName":Ljava/lang/String;
    .restart local v7    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .local v12, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_144
    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v7

    move-object/from16 v21, v12

    move-object v12, v6

    .end local v1    # "userIdNum":I
    .end local v2    # "numUserIds":I
    .end local v3    # "userIds":[I
    .end local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v5    # "newPermissionGroupName":Ljava/lang/String;
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v7    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .local v12, "permissionName":Ljava/lang/String;
    .restart local v17    # "userIdNum":I
    .restart local v18    # "numUserIds":I
    .restart local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "userIds":[I
    .restart local v23    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v24    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v25    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "userIdNum":I
    .local v0, "userIdNum":I
    move/from16 v11, v19

    move-object/from16 v12, v21

    move-object/from16 v10, p2

    goto/16 :goto_76

    .line 427
    .end local v0    # "userIdNum":I
    .end local v16    # "newProtection":I
    .end local v18    # "numUserIds":I
    .end local v19    # "numOldPackagePermissions":I
    .end local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "userIds":[I
    .end local v23    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v24    # "newPermissionGroupName":Ljava/lang/String;
    .end local v25    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .local v11, "numOldPackagePermissions":I
    .local v12, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_15d
    move/from16 v19, v11

    move-object/from16 v21, v12

    .end local v11    # "numOldPackagePermissions":I
    .end local v12    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "numOldPackagePermissions":I
    .restart local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v0, v15, 0x1

    .line 426
    .end local v15    # "newPermissionNum":I
    .local v0, "newPermissionNum":I
    move/from16 v11, v19

    move-object/from16 v12, v21

    move-object/from16 v10, p2

    goto/16 :goto_38

    .line 472
    .end local v0    # "newPermissionNum":I
    .end local v19    # "numOldPackagePermissions":I
    .end local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "numOldPackagePermissions":I
    .restart local v12    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_16b
    move/from16 v19, v11

    move-object/from16 v21, v12

    .end local v11    # "numOldPackagePermissions":I
    .end local v12    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "numOldPackagePermissions":I
    .restart local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method private revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I
    .registers 21
    .param p1, "suSetting"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "allUserIds"    # [I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v0, p0

    .line 1627
    move-object/from16 v1, p2

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1628
    .local v2, "usedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v3

    .line 1629
    .local v3, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    if-eqz v3, :cond_de

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_de

    .line 1632
    :cond_17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 1633
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-nez v7, :cond_2d

    .line 1634
    goto :goto_1b

    .line 1636
    :cond_2d
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1637
    .local v7, "requestedPermCount":I
    nop

    .local v6, "j":I
    :goto_34
    if-ge v6, v7, :cond_4c

    .line 1638
    iget-object v8, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1639
    .local v8, "permission":Ljava/lang/String;
    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v9

    .line 1640
    .local v9, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v9, :cond_49

    .line 1641
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1637
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 1644
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "j":I
    .end local v7    # "requestedPermCount":I
    :cond_4c
    goto :goto_1b

    .line 1646
    :cond_4d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 1648
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v5

    .line 1649
    .local v5, "installPermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 1650
    .local v7, "installPermCount":I
    add-int/lit8 v8, v7, -0x1

    .local v8, "i":I
    :goto_5b
    const/16 v9, 0xff

    if-ltz v8, :cond_85

    .line 1651
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 1652
    .local v10, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_82

    .line 1653
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v11

    .line 1654
    .local v11, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v11, :cond_82

    .line 1655
    invoke-virtual {v4, v11}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 1656
    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12, v9, v6}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1650
    .end local v10    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v11    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_82
    add-int/lit8 v8, v8, -0x1

    goto :goto_5b

    .line 1662
    .end local v8    # "i":I
    :cond_85
    sget-object v8, Llibcore/util/EmptyArray;->INT:[I

    .line 1665
    .local v8, "runtimePermissionChangedUserIds":[I
    array-length v10, v1

    move-object v11, v8

    move v8, v6

    .end local v8    # "runtimePermissionChangedUserIds":[I
    .local v11, "runtimePermissionChangedUserIds":[I
    :goto_8a
    if-ge v8, v10, :cond_dd

    aget v12, v1, v8

    .line 1666
    .local v12, "userId":I
    nop

    .line 1667
    invoke-virtual {v4, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v13

    .line 1668
    .local v13, "runtimePermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 1669
    .local v14, "runtimePermCount":I
    add-int/lit8 v15, v14, -0x1

    .local v15, "i":I
    :goto_99
    if-ltz v15, :cond_d3

    .line 1670
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 1671
    .local v6, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c7

    .line 1672
    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 1673
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v0, :cond_c7

    .line 1674
    invoke-virtual {v4, v0, v12}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 1675
    const/16 v1, 0xff

    const/4 v9, 0x0

    invoke-virtual {v4, v0, v12, v1, v9}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1677
    invoke-static {v11, v12}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v11

    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_ca

    .line 1669
    :cond_c7
    const/16 v1, 0xff

    const/4 v9, 0x0

    :goto_ca
    add-int/lit8 v15, v15, -0x1

    move v6, v9

    move-object/from16 v0, p0

    move v9, v1

    move-object/from16 v1, p2

    goto :goto_99

    .line 1665
    .end local v12    # "userId":I
    .end local v13    # "runtimePermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v14    # "runtimePermCount":I
    .end local v15    # "i":I
    :cond_d3
    move v1, v9

    move v9, v6

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move v9, v1

    move-object/from16 v1, p2

    goto :goto_8a

    .line 1684
    :cond_dd
    return-object v11

    .line 1630
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "installPermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v7    # "installPermCount":I
    .end local v11    # "runtimePermissionChangedUserIds":[I
    :cond_de
    :goto_de
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0
.end method

.method private systemReady()V
    .registers 4

    .line 2055
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    .line 2056
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v0, :cond_8

    .line 2060
    return-void

    .line 2057
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature|privileged permissions not in privapp-permissions whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 14
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "sdkUpdated"    # Z
    .param p4, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 1752
    .local p3, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    nop

    .line 1753
    if-eqz p2, :cond_5

    .line 1754
    const/4 v0, 0x6

    goto :goto_6

    .line 1755
    :cond_5
    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x1

    or-int/2addr v0, v1

    .line 1756
    .local v0, "flags":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    move v6, v0

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1757
    return-void
.end method

.method private updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 25
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    move/from16 v12, p6

    .line 1895
    move-object/from16 v13, p7

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v12}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1896
    return-void

    .line 1899
    :cond_15
    const-string/jumbo v0, "updatePermissionFlags"

    invoke-direct {v8, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 1901
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlags"

    move-object v1, v8

    move v2, v11

    move v3, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1908
    const/16 v0, 0x3e8

    if-eq v11, v0, :cond_38

    .line 1909
    and-int/lit8 v0, p3, -0x11

    .line 1910
    .end local p3    # "flagMask":I
    .local v0, "flagMask":I
    and-int/lit8 v1, p4, -0x11

    .line 1911
    .end local p4    # "flagValues":I
    .local v1, "flagValues":I
    and-int/lit8 v0, v0, -0x21

    .line 1912
    and-int/lit8 v1, v1, -0x21

    .line 1913
    and-int/lit8 v1, v1, -0x41

    .line 1916
    move v2, v1

    move v1, v0

    goto :goto_3c

    .line 1916
    .end local v0    # "flagMask":I
    .end local v1    # "flagValues":I
    .restart local p3    # "flagMask":I
    .restart local p4    # "flagValues":I
    :cond_38
    move/from16 v1, p3

    move/from16 v2, p4

    .line 1916
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .local v1, "flagMask":I
    .local v2, "flagValues":I
    :goto_3c
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1917
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_c4

    iget-object v0, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v0, :cond_c4

    .line 1920
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 1925
    iget-object v4, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1926
    :try_start_53
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 1927
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_aa

    .line 1928
    if-eqz v0, :cond_93

    .line 1932
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 1933
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 1934
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    nop

    .line 1935
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v14, 0x0

    if-eqz v6, :cond_6f

    move v6, v7

    goto :goto_70

    :cond_6f
    move v6, v14

    .line 1936
    .local v6, "hadState":Z
    :goto_70
    nop

    .line 1937
    invoke-virtual {v5, v0, v12, v1, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    move-result v15

    .line 1938
    .local v15, "permissionUpdated":Z
    if-eqz v15, :cond_92

    if-eqz v13, :cond_92

    .line 1941
    invoke-virtual {v5, v9}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v16

    if-eqz v16, :cond_83

    .line 1942
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onInstallPermissionUpdated()V

    goto :goto_92

    .line 1943
    :cond_83
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v16

    if-nez v16, :cond_8b

    if-eqz v6, :cond_92

    .line 1945
    :cond_8b
    new-array v7, v7, [I

    aput v12, v7, v14

    invoke-virtual {v13, v7, v14}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    .line 1948
    :cond_92
    :goto_92
    return-void

    .line 1929
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v6    # "hadState":Z
    .end local v15    # "permissionUpdated":Z
    :cond_93
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1927
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_aa
    move-exception v0

    :try_start_ab
    monitor-exit v4
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v0

    .line 1921
    :cond_ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1918
    :cond_c4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    .registers 15
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")Z"
        }
    .end annotation

    .line 1952
    .local p5, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1953
    const/4 v0, 0x0

    return v0

    .line 1956
    :cond_a
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 1958
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlagsForAllApps"

    move-object v1, p0

    move v2, p3

    move v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1965
    const/16 v0, 0x3e8

    if-eq p3, v0, :cond_24

    .line 1966
    and-int/lit8 p1, p1, -0x11

    .line 1967
    and-int/lit8 p2, p2, -0x11

    .line 1970
    :cond_24
    const/4 v0, 0x0

    .line 1971
    .local v0, "changed":Z
    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1972
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1973
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_3c

    .line 1974
    goto :goto_29

    .line 1976
    :cond_3c
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 1977
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4, p4, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlagsForAllPermissions(III)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1979
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_29

    .line 1980
    :cond_46
    return v0
.end method

.method private updatePermissionTrees(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "flags"    # I

    .line 1851
    const/4 v0, 0x0

    .line 1852
    .local v0, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1853
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1854
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 1855
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 1856
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-eqz v4, :cond_66

    .line 1857
    if-eqz p1, :cond_10

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz p2, :cond_3a

    .line 1858
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1859
    :cond_3a
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing old permission tree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1859
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    or-int/lit8 p3, p3, 0x1

    .line 1862
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 1866
    :cond_66
    if-nez v0, :cond_76

    .line 1867
    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    move-object v0, v4

    .line 1869
    :cond_76
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1870
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_10

    .line 1871
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_4 .. :try_end_7b} :catchall_e5

    .line 1872
    if-eqz v0, :cond_e4

    .line 1873
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 1874
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1875
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1876
    .local v3, "sourcePkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1877
    if-eqz v3, :cond_b1

    :try_start_9c
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v5, :cond_b1

    .line 1878
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1879
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v6

    if-nez v6, :cond_ad

    .line 1880
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/BasePermission;->setSourcePackageSetting(Lcom/android/server/pm/PackageSettingBase;)V

    .line 1882
    :cond_ad
    monitor-exit v4

    goto :goto_81

    .line 1887
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :catchall_af
    move-exception v1

    goto :goto_e2

    .line 1884
    :cond_b1
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1884
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 1887
    monitor-exit v4

    .line 1888
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_81

    .line 1887
    .restart local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :goto_e2
    monitor-exit v4
    :try_end_e3
    .catchall {:try_start_9c .. :try_end_e3} :catchall_af

    throw v1

    .line 1890
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :cond_e4
    return p3

    .line 1871
    :catchall_e5
    move-exception v2

    :try_start_e6
    monitor-exit v1
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw v2
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "flags"    # I

    .line 1804
    const/4 v0, 0x0

    .line 1805
    .local v0, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1806
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1807
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 1808
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 1809
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1810
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/BasePermission;->updateDynamicPermission(Ljava/util/Collection;)V

    .line 1812
    :cond_2d
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-eqz v4, :cond_77

    .line 1813
    if-eqz p1, :cond_10

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz p2, :cond_4b

    .line 1814
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1815
    :cond_4b
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing old permission tree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1816
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1815
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    or-int/lit8 p3, p3, 0x1

    .line 1818
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 1822
    :cond_77
    if-nez v0, :cond_87

    .line 1823
    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    move-object v0, v4

    .line 1825
    :cond_87
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1826
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_10

    .line 1827
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_4 .. :try_end_8c} :catchall_f6

    .line 1828
    if-eqz v0, :cond_f5

    .line 1829
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_92
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 1830
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1831
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1832
    .local v3, "sourcePkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1833
    if-eqz v3, :cond_c2

    :try_start_ad
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v5, :cond_c2

    .line 1834
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1835
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v6

    if-nez v6, :cond_be

    .line 1836
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/BasePermission;->setSourcePackageSetting(Lcom/android/server/pm/PackageSettingBase;)V

    .line 1838
    :cond_be
    monitor-exit v4

    goto :goto_92

    .line 1843
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :catchall_c0
    move-exception v1

    goto :goto_f3

    .line 1840
    :cond_c2
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1840
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 1843
    monitor-exit v4

    .line 1844
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_92

    .line 1843
    .restart local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :goto_f3
    monitor-exit v4
    :try_end_f4
    .catchall {:try_start_ad .. :try_end_f4} :catchall_c0

    throw v1

    .line 1846
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :cond_f5
    return p3

    .line 1827
    :catchall_f6
    move-exception v2

    :try_start_f7
    monitor-exit v1
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw v2
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 15
    .param p1, "changingPkgName"    # Ljava/lang/String;
    .param p2, "changingPkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "replaceVolumeUuid"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 1772
    .local p5, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionTrees(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I

    move-result p4

    .line 1776
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I

    move-result p4

    .line 1778
    const-string/jumbo v0, "grantPermissions"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1781
    and-int/lit8 v0, p4, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3e

    .line 1782
    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 1783
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eq v5, p2, :cond_3d

    .line 1785
    invoke-static {v5}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v6

    .line 1786
    .local v6, "volumeUuid":Ljava/lang/String;
    and-int/lit8 v7, p4, 0x4

    if-eqz v7, :cond_39

    .line 1787
    invoke-static {p3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    move v7, v4

    goto :goto_3a

    :cond_39
    move v7, v3

    .line 1788
    .local v7, "replace":Z
    :goto_3a
    invoke-direct {p0, v5, v7, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantPermissions(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1790
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "volumeUuid":Ljava/lang/String;
    .end local v7    # "replace":Z
    :cond_3d
    goto :goto_1b

    .line 1793
    :cond_3e
    if-eqz p2, :cond_53

    .line 1795
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v0

    .line 1796
    .local v0, "volumeUuid":Ljava/lang/String;
    and-int/lit8 v5, p4, 0x2

    if-eqz v5, :cond_50

    .line 1797
    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    move v3, v4

    nop

    .line 1798
    .local v3, "replace":Z
    :cond_50
    invoke-direct {p0, p2, v3, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantPermissions(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1800
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .end local v3    # "replace":Z
    :cond_53
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1801
    return-void
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "replaceGrant"    # Z
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            "Z",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 1738
    .local p4, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    .line 1739
    :cond_5
    move v1, v0

    :goto_6
    if-eqz p3, :cond_a

    const/4 v0, 0x2

    nop

    :cond_a
    or-int/2addr v0, v1

    .line 1740
    .local v0, "flags":I
    nop

    .line 1741
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v5

    .line 1740
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, v0

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1742
    if-eqz p2, :cond_41

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_41

    .line 1743
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/content/pm/PackageParser$Package;

    .line 1744
    .local v9, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1745
    invoke-static {v9}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v5

    .line 1744
    move-object v2, p0

    move-object v4, v9

    move v6, v0

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1746
    .end local v9    # "childPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_25

    .line 1748
    :cond_41
    return-void
.end method


# virtual methods
.method getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 210
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
