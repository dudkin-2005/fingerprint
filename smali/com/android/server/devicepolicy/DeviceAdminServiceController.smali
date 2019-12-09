.class public Lcom/android/server/devicepolicy/DeviceAdminServiceController;
.super Ljava/lang/Object;
.source "DeviceAdminServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "DevicePolicyManager"


# instance fields
.field private final mConnections:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

.field final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field final mLock:Ljava/lang/Object;

.field private final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyConstants;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 90
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 91
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 92
    iget-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mContext:Landroid/content/Context;

    .line 93
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Lcom/android/server/devicepolicy/DevicePolicyConstants;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    return-object p0
.end method

.method static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 62
    return-void
.end method

.method private disconnectServiceOnUserLocked(ILjava/lang/String;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 199
    if-eqz v0, :cond_0

    .line 200
    const-string v1, "Stopping service for u%d if already running for %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 200
    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->unbind()V

    .line 203
    iget-object p2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 205
    :cond_0
    return-void
.end method

.method private findService(Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;
    .locals 4

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.DEVICE_ADMIN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 108
    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3, p2}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object p2

    .line 109
    if-nez p2, :cond_0

    .line 110
    return-object v1

    .line 112
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    .line 113
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 114
    return-object v1

    .line 118
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 119
    const-string p2, "DevicePolicyManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "More than one DeviceAdminService\'s found in package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".  They\'ll all be ignored."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-object v1

    .line 124
    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 126
    const-string p2, "android.permission.BIND_DEVICE_ADMIN"

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 127
    const-string p2, "DevicePolicyManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceAdminService "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be protected with "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    return-object v1

    .line 133
    :cond_3
    return-object p1

    .line 134
    :catch_0
    move-exception p1

    .line 136
    return-object v1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    .line 208
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 210
    monitor-exit v0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 213
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Owner Services:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 216
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "User: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 218
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 222
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startServiceForOwner(Ljava/lang/String;ILjava/lang/String;)V
    .locals 10

    .line 145
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 147
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->findService(Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 149
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v3, :cond_0

    .line 150
    const-string v3, "Owner package %s on u%d has no service."

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    .line 151
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v4

    .line 150
    invoke-static {v3, v6}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-direct {p0, p2, p3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 153
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    iget-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 153
    return-void

    .line 156
    :cond_0
    :try_start_2
    iget-object v7, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 157
    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/PersistentConnection;

    .line 158
    if-eqz v7, :cond_1

    .line 162
    const-string v7, "Disconnecting from existing service connection."

    new-array v8, v6, [Ljava/lang/Object;

    aput-object p1, v8, v5

    .line 163
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    .line 162
    invoke-static {v7, v8}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-direct {p0, p2, p3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 167
    :cond_1
    const-string v7, "Owner package %s on u%d has service %s for %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v5

    .line 168
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v4

    .line 169
    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v6

    const/4 p1, 0x3

    aput-object p3, v8, p1

    .line 167
    invoke-static {v7, v8}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    new-instance p1, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 173
    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;-><init>(Lcom/android/server/devicepolicy/DeviceAdminServiceController;ILandroid/content/ComponentName;)V

    .line 174
    iget-object p3, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->bind()V

    .line 176
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    iget-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 179
    nop

    .line 180
    return-void

    .line 176
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 178
    :catchall_1
    move-exception p1

    iget-object p2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    throw p1
.end method

.method public stopServiceForOwner(ILjava/lang/String;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 189
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 190
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    iget-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 193
    nop

    .line 194
    return-void

    .line 190
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 192
    :catchall_1
    move-exception p1

    iget-object p2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    throw p1
.end method
