.class public final Lcom/android/server/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode;,
        Lcom/android/server/content/ContentService$ObserverCall;,
        Lcom/android/server/content/ContentService$Lifecycle;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ContentService"


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCache"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCacheReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

.field private mSyncManager:Lcom/android/server/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # Z

    .line 277
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 137
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 151
    new-instance v0, Lcom/android/server/content/ContentService$1;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentService$1;-><init>(Lcom/android/server/content/ContentService;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    .line 278
    iput-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 279
    iput-boolean p2, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    .line 283
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 285
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/content/ContentService$3;

    invoke-direct {v1, p0}, Lcom/android/server/content/ContentService$3;-><init>(Lcom/android/server/content/ContentService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setSyncAdapterPackagesprovider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V

    .line 293
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 294
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 302
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    .local v2, "localeFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 306
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/ContentService;

    .line 86
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/content/ContentService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/net/Uri;

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private checkUriPermission(Landroid/net/Uri;IIII)I
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "userHandle"    # I

    .line 520
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 522
    :catch_f
    move-exception v0

    .line 523
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method private clampPeriod(J)J
    .registers 8
    .param p1, "period"    # J

    .line 607
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 608
    .local v0, "minPeriod":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_30

    .line 609
    const-string v2, "ContentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested poll frequency of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " seconds being rounded up to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    move-wide p1, v0

    .line 613
    :cond_30
    return-wide p1
.end method

.method private enforceCrossUserPermission(ILjava/lang/String;)V
    .registers 6
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1319
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1320
    .local v0, "callingUser":I
    if-eq v0, p1, :cond_d

    .line 1321
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    :cond_d
    return-void
.end method

.method private enforceShell(Ljava/lang/String;)V
    .registers 6
    .param p1, "method"    # Ljava/lang/String;

    .line 1670
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1671
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_22

    if-nez v0, :cond_b

    goto :goto_22

    .line 1672
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-shell user attempted to call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1674
    :cond_22
    :goto_22
    return-void
.end method

.method private findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "providerPackageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCache"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1197
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1198
    .local v0, "userCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;>;"
    if-nez v0, :cond_15

    .line 1199
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 1200
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1202
    :cond_15
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1203
    .local v1, "packageCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-nez v1, :cond_26

    .line 1204
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 1205
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    :cond_26
    return-object v1
.end method

.method private getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1189
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1190
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 1191
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_14

    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method private getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1357
    if-eqz p2, :cond_13

    .line 1358
    const-string/jumbo v0, "v_exemption"

    .line 1359
    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1362
    .local v0, "exemption":I
    const-string/jumbo v2, "v_exemption"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1363
    if-eq v0, v1, :cond_13

    .line 1364
    return v0

    .line 1367
    .end local v0    # "exemption":I
    :cond_13
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1368
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1369
    .local v0, "ami":Landroid/app/ActivityManagerInternal;
    if-eqz v0, :cond_22

    .line 1370
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v1

    goto :goto_24

    .line 1371
    :cond_22
    const/16 v1, 0x13

    .line 1373
    .local v1, "procState":I
    :goto_24
    const/4 v2, 0x2

    if-gt v1, v2, :cond_28

    .line 1374
    return v2

    .line 1376
    :cond_28
    const/4 v2, 0x5

    if-gt v1, v2, :cond_2d

    .line 1377
    const/4 v2, 0x1

    return v2

    .line 1379
    :cond_2d
    const/4 v2, 0x0

    return v2
.end method

.method private getSyncExemptionForCaller(I)I
    .registers 3
    .param p1, "callingUid"    # I

    .line 1352
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private getSyncManager()Lcom/android/server/content/SyncManager;
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/server/content/SyncManager;

    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    invoke-direct {v1, v2, v3}, Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_12} :catch_15
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    .line 177
    :cond_12
    goto :goto_1d

    .line 179
    :catchall_13
    move-exception v1

    goto :goto_21

    .line 175
    :catch_15
    move-exception v1

    .line 176
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_16
    const-string v2, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_1d
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    monitor-exit v0

    return-object v1

    .line 179
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_13

    throw v1
.end method

.method private handleContentNotifyResumeProcess(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .line 496
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v0

    if-nez v0, :cond_7

    .line 497
    return-void

    .line 499
    :cond_7
    monitor-enter p1

    .line 500
    :try_start_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 501
    .local v0, "mNumCallsUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 502
    .local v1, "numCalls":I
    const/4 v2, 0x0

    .line 502
    .local v2, "j":I
    :goto_12
    if-ge v2, v1, :cond_26

    .line 503
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/ContentService$ObserverCall;

    .line 504
    .local v3, "oc":Lcom/android/server/content/ContentService$ObserverCall;
    iget v4, v3, Lcom/android/server/content/ContentService$ObserverCall;->mUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 502
    .end local v3    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 507
    .end local v2    # "j":I
    :cond_26
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 509
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 510
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 511
    .local v3, "mUid":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "notifyChange"

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    goto :goto_2a

    .line 513
    .end local v0    # "mNumCallsUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "numCalls":I
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "mUid":Ljava/lang/Integer;
    :cond_41
    monitor-exit p1

    .line 514
    return-void

    .line 513
    :catchall_43
    move-exception v0

    monitor-exit p1
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_43

    throw v0
.end method

.method private handleIncomingUser(Landroid/net/Uri;IIIZI)I
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "allowNonFull"    # Z
    .param p6, "userId"    # I

    .line 1275
    const/4 v0, -0x2

    if-ne p6, v0, :cond_7

    .line 1276
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p6

    .line 1279
    :cond_7
    const/4 v0, -0x1

    if-ne p6, v0, :cond_14

    .line 1280
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 1282
    :cond_14
    if-ltz p6, :cond_6c

    .line 1284
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p6, v0, :cond_6b

    .line 1285
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/ContentService;->checkUriPermission(Landroid/net/Uri;IIII)I

    move-result v0

    if-eqz v0, :cond_6b

    .line 1287
    const/4 v0, 0x0

    .line 1288
    .local v0, "allow":Z
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_35

    .line 1291
    const/4 v0, 0x1

    goto :goto_42

    .line 1292
    :cond_35
    if-eqz p5, :cond_42

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_42

    .line 1295
    const/4 v0, 0x1

    .line 1297
    :cond_42
    :goto_42
    if-nez v0, :cond_6b

    .line 1298
    if-eqz p5, :cond_4a

    .line 1299
    nop

    .line 1301
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL or android.permission.INTERACT_ACROSS_USERS"

    goto :goto_4c

    :cond_4a
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1302
    .local v1, "permissions":Ljava/lang/String;
    :goto_4c
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentServiceNeither user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " nor current process has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1308
    .end local v0    # "allow":Z
    .end local v1    # "permissions":Ljava/lang/String;
    :cond_6b
    :goto_6b
    return p6

    .line 1283
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "providerPackageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCache"
    .end annotation

    .line 1212
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1213
    .local v0, "userCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;>;"
    if-nez v0, :cond_b

    return-void

    .line 1215
    :cond_b
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1216
    .local v1, "packageCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-nez v1, :cond_14

    return-void

    .line 1218
    :cond_14
    if-eqz p3, :cond_40

    .line 1219
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 1220
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1221
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_3d

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1223
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_3f

    .line 1225
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    .line 1227
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    :goto_3f
    goto :goto_17

    .line 1230
    .end local v2    # "i":I
    :cond_40
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1232
    :cond_43
    return-void
.end method

.method private static normalizeSyncable(I)I
    .registers 2
    .param p0, "syncable"    # I

    .line 1327
    if-lez p0, :cond_4

    .line 1328
    const/4 v0, 0x1

    return v0

    .line 1329
    :cond_4
    if-nez p0, :cond_8

    .line 1330
    const/4 v0, 0x0

    return v0

    .line 1332
    :cond_8
    const/4 v0, -0x2

    return v0
.end method

.method private validateExtras(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1336
    const-string/jumbo v0, "v_exemption"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1337
    if-eqz p1, :cond_25

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_25

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_14

    goto :goto_25

    .line 1343
    :cond_14
    const-string v0, "Invalid extras specified."

    .line 1344
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ContentService"

    const-string v2, "Invalid extras specified. requestsync -f/-F needs to run on \'adb shell\'"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Invalid extras specified."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1341
    .end local v0    # "msg":Ljava/lang/String;
    :cond_25
    :goto_25
    nop

    .line 1348
    :cond_26
    return-void
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 23
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "pollFrequency"    # J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p3

    .line 863
    const/4 v0, 0x1

    invoke-static {v10, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 864
    if-eqz v2, :cond_5f

    .line 867
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 870
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0, v10}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 875
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 877
    .local v11, "userId":I
    move-wide/from16 v3, p4

    invoke-direct {v1, v3, v4}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v12

    .line 878
    .end local p4    # "pollFrequency":J
    .local v12, "pollFrequency":J
    invoke-static {v12, v13}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v14

    .line 880
    .local v14, "defaultFlex":J
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v7, v3

    .line 882
    .local v7, "identityToken":J
    :try_start_36
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v9, p2

    invoke-direct {v4, v2, v9, v11}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 884
    .local v4, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_4f

    move-wide v5, v12

    move-wide v1, v7

    move-wide v7, v14

    .line 884
    .end local v7    # "identityToken":J
    .local v1, "identityToken":J
    move-object v9, v10

    :try_start_45
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_4d

    .line 887
    .end local v4    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 888
    nop

    .line 889
    return-void

    .line 887
    :catchall_4d
    move-exception v0

    goto :goto_51

    .line 887
    .end local v1    # "identityToken":J
    .restart local v7    # "identityToken":J
    :catchall_4f
    move-exception v0

    move-wide v1, v7

    .line 887
    .end local v7    # "identityToken":J
    .restart local v1    # "identityToken":J
    :goto_51
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    .line 868
    .end local v1    # "identityToken":J
    .end local v11    # "userId":I
    .end local v12    # "pollFrequency":J
    .end local v14    # "defaultFlex":J
    .restart local p4    # "pollFrequency":J
    :cond_55
    move-wide/from16 v3, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_5f
    move-wide/from16 v3, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 7
    .param p1, "mask"    # I
    .param p2, "callback"    # Landroid/content/ISyncStatusObserver;

    .line 1164
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1166
    .local v0, "identityToken":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1167
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_13

    if-eqz p2, :cond_13

    .line 1168
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 1171
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_13
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1172
    nop

    .line 1173
    return-void

    .line 1171
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public cancelRequest(Landroid/content/SyncRequest;)V
    .registers 14
    .param p1, "request"    # Landroid/content/SyncRequest;

    .line 720
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 721
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v0, :cond_7

    return-void

    .line 722
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 723
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 725
    .local v2, "callingUid":I
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 726
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_1f
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 731
    .local v3, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v2, v3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 733
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4

    .line 737
    .local v4, "identityToken":J
    :try_start_2f
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    .line 738
    .local v6, "account":Landroid/accounts/Account;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v7

    .line 739
    .local v7, "provider":Ljava/lang/String;
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v8, v6, v7, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 740
    .local v8, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 742
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cancelRequest() by uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v3, v10}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 746
    :cond_5a
    invoke-virtual {v0, v8, v3}, Lcom/android/server/content/SyncManager;->cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 747
    const-string v9, "API"

    invoke-virtual {v0, v8, v3, v9}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_2f .. :try_end_62} :catchall_67

    .line 749
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "provider":Ljava/lang/String;
    .end local v8    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 750
    nop

    .line 751
    return-void

    .line 749
    :catchall_67
    move-exception v6

    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 674
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 675
    return-void
.end method

.method public cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 693
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 694
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_11
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 700
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 701
    .local v0, "identityToken":J
    if-eqz p3, :cond_34

    .line 702
    const-string v2, "ContentService"

    const-string v3, "cname not null."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-void

    .line 706
    :cond_34
    :try_start_34
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 707
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_48

    .line 709
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 710
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 711
    const/4 v4, 0x0

    const-string v5, "API"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_34 .. :try_end_48} :catchall_4d

    .line 714
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_48
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 715
    nop

    .line 716
    return-void

    .line 714
    :catchall_4d
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw_"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    monitor-enter p0

    .line 196
    :try_start_5
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "ContentService"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_135

    if-nez v0, :cond_11

    monitor-exit p0

    return-void

    .line 197
    :cond_11
    :try_start_11
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v3, v0

    .line 199
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v0, "-a"

    move-object/from16 v12, p3

    invoke-static {v12, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    move v13, v0

    .line 203
    .local v13, "dumpAll":Z
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_135

    move-wide v14, v4

    .line 205
    .local v14, "identityToken":J
    :try_start_27
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v0, :cond_33

    .line 206
    const-string v0, "SyncManager not available yet"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 210
    move-object/from16 v11, p1

    goto :goto_3a

    .line 208
    :cond_33
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    move-object/from16 v11, p1

    invoke-virtual {v0, v11, v3, v13}, Lcom/android/server/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 210
    :goto_3a
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 211
    const-string v0, "Observer tree:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 212
    iget-object v10, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v10
    :try_end_45
    .catchall {:try_start_27 .. :try_end_45} :catchall_130

    .line 213
    const/4 v0, 0x2

    :try_start_46
    new-array v0, v0, [I

    .line 214
    .local v0, "counts":[I
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    move-object v9, v4

    .line 215
    .local v9, "pidCounts":Landroid/util/SparseIntArray;
    iget-object v4, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const-string v8, ""

    const-string v16, "  "
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_129

    move-object v5, v11

    move-object v6, v3

    move-object v7, v12

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    .end local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .local v17, "pidCounts":Landroid/util/SparseIntArray;
    move-object/from16 v16, v10

    move-object v10, v0

    move-object/from16 v11, v17

    :try_start_60
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 216
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 217
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v4, "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_6d
    move-object/from16 v7, v17

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    .end local v17    # "pidCounts":Landroid/util/SparseIntArray;
    .local v7, "pidCounts":Landroid/util/SparseIntArray;
    if-ge v6, v8, :cond_85

    .line 219
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v17, v7

    goto :goto_6d

    .line 221
    .end local v6    # "i":I
    :cond_85
    new-instance v6, Lcom/android/server/content/ContentService$2;

    invoke-direct {v6, v1, v7}, Lcom/android/server/content/ContentService$2;-><init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 235
    move v6, v5

    .restart local v6    # "i":I
    :goto_8e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_ba

    .line 236
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 237
    .local v8, "pid":I
    const-string v9, "  pid "

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v9, ": "

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v9, " observers"

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 235
    .end local v8    # "pid":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_8e

    .line 240
    .end local v6    # "i":I
    :cond_ba
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 241
    const-string v6, " Total number of nodes: "

    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    aget v6, v0, v5

    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 242
    const-string v6, " Total number of observers: "

    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget v6, v0, v6

    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 243
    .end local v0    # "counts":[I
    .end local v4    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "pidCounts":Landroid/util/SparseIntArray;
    monitor-exit v16
    :try_end_d3
    .catchall {:try_start_60 .. :try_end_d3} :catchall_12e

    .line 245
    :try_start_d3
    iget-object v4, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_130

    .line 246
    :try_start_d6
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 247
    const-string v0, "Cached content:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 249
    nop

    .local v5, "i":I
    :goto_e2
    move v0, v5

    .end local v5    # "i":I
    .local v0, "i":I
    iget-object v5, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_11c

    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 252
    iget-object v5, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 253
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 249
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .restart local v5    # "i":I
    goto :goto_e2

    .line 255
    .end local v5    # "i":I
    :cond_11c
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 256
    monitor-exit v4
    :try_end_120
    .catchall {:try_start_d6 .. :try_end_120} :catchall_126

    .line 258
    :try_start_120
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_123
    .catchall {:try_start_120 .. :try_end_123} :catchall_135

    .line 259
    nop

    .line 260
    monitor-exit p0

    return-void

    .line 256
    :catchall_126
    move-exception v0

    :try_start_127
    monitor-exit v4
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_126

    :try_start_128
    throw v0
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_130

    .line 243
    :catchall_129
    move-exception v0

    move-object/from16 v16, v10

    :goto_12c
    :try_start_12c
    monitor-exit v16
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_12e

    :try_start_12d
    throw v0
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_130

    :catchall_12e
    move-exception v0

    goto :goto_12c

    .line 258
    :catchall_130
    move-exception v0

    :try_start_131
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
    :try_end_135
    .catchall {:try_start_131 .. :try_end_135} :catchall_135

    .line 195
    .end local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v13    # "dumpAll":Z
    .end local v14    # "identityToken":J
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw_":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_135
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/content/ContentService;
    throw v0
.end method

.method public getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1258
    const-string v0, "ContentService"

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1259
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1263
    invoke-direct {p0, p2}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1264
    .local v0, "providerPackageName":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1266
    .local v1, "fullKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1267
    :try_start_2a
    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1269
    .local v3, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    monitor-exit v2

    return-object v4

    .line 1270
    .end local v3    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    :catchall_36
    move-exception v3

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw v3
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1068
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSyncsAsUser(I)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 1083
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    .line 1085
    .local v0, "canAccessAccounts":Z
    :goto_2c
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1087
    .local v1, "identityToken":J
    :try_start_30
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 1088
    invoke-virtual {v3, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsCopy(IZ)Ljava/util/List;

    move-result-object v3
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_40

    .line 1090
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1087
    return-object v3

    .line 1090
    :catchall_40
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    .line 943
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 959
    .local v0, "identityToken":J
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 960
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_32

    .line 961
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p3, p2, v3}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v3
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_38

    .line 965
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 961
    return v3

    .line 965
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_32
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 966
    nop

    .line 967
    const/4 v2, -0x1

    return v2

    .line 965
    :catchall_38
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getMasterSyncAutomatically()Z
    .registers 2

    .line 996
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    return v0
.end method

.method public getMasterSyncAutomaticallyAsUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1012
    .local v0, "identityToken":J
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1013
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_35

    .line 1014
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_3b

    .line 1017
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1014
    return v3

    .line 1017
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_35
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1018
    nop

    .line 1019
    const/4 v2, 0x0

    return v2

    .line 1017
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .line 922
    if-eqz p1, :cond_38

    .line 925
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 928
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 932
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 934
    .local v1, "identityToken":J
    :try_start_1a
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v4, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncManager;->getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_2b

    .line 937
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 934
    return-object v3

    .line 937
    :catchall_2b
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .line 926
    .end local v0    # "userId":I
    .end local v1    # "identityToken":J
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 7
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 791
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 793
    .local v0, "identityToken":J
    :try_start_19
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 794
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_25

    .line 796
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 794
    return-object v3

    .line 796
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .registers 2

    .line 759
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .registers 6
    .param p1, "userId"    # I

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 776
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 778
    .local v0, "identityToken":J
    :try_start_19
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 779
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_25

    .line 781
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 779
    return-object v3

    .line 781
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    .line 802
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 818
    .local v0, "identityToken":J
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 819
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_35

    .line 820
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 821
    invoke-virtual {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_3b

    .line 824
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 820
    return v3

    .line 824
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_35
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 825
    nop

    .line 826
    const/4 v2, 0x0

    return v2

    .line 824
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 1096
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 1106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync stats for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1117
    .local v0, "identityToken":J
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_52

    .line 1118
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v2, :cond_34

    .line 1119
    const/4 v3, 0x0

    .line 1129
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1119
    return-object v3

    .line 1122
    :cond_34
    if-eqz p1, :cond_4a

    if-eqz p2, :cond_4a

    .line 1123
    :try_start_38
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1125
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    nop

    .line 1127
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;

    move-result-object v4
    :try_end_46
    .catchall {:try_start_38 .. :try_end_46} :catchall_52

    .line 1129
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1127
    return-object v4

    .line 1125
    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_4a
    :try_start_4a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must call sync status with valid authority"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_52

    .line 1129
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_52
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2

    .line 1107
    .end local v0    # "identityToken":J
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 1050
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1053
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1055
    .local v1, "identityToken":J
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_2e

    .line 1056
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v3, :cond_1d

    .line 1057
    const/4 v4, 0x0

    .line 1062
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1057
    return v4

    .line 1059
    :cond_1d
    :try_start_1d
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncStorageEngine;->isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2e

    .line 1062
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1059
    return v4

    .line 1062
    .end local v3    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_2e
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 1135
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 1141
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to retrieve the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1145
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1146
    .local v0, "identityToken":J
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1147
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v2, :cond_2b

    const/4 v3, 0x0

    return v3

    .line 1151
    :cond_2b
    if-eqz p1, :cond_41

    if-eqz p2, :cond_41

    .line 1152
    :try_start_2f
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1154
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    nop

    .line 1156
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_49

    .line 1158
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1156
    return v4

    .line 1154
    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_41
    :try_start_41
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid authority specified"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_49

    .line 1158
    :catchall_49
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZIII)V
    .registers 34
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "flags"    # I
    .param p5, "userHandle"    # I
    .param p6, "targetSdkVersion"    # I

    move-object/from16 v8, p0

    move-object/from16 v15, p1

    .line 396
    if-eqz v15, :cond_1d5

    .line 400
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 401
    .local v14, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 402
    .local v17, "pid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    .line 404
    .local v18, "callingUserHandle":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v1, v8

    move-object v2, v15

    move/from16 v3, v17

    move v4, v14

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v7

    .line 407
    .end local p5    # "userHandle":I
    .local v7, "userHandle":I
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 409
    .local v6, "msg":Ljava/lang/String;
    if-eqz v6, :cond_6d

    .line 410
    const/16 v0, 0x1a

    move/from16 v5, p6

    if-ge v5, v0, :cond_67

    .line 413
    const-string v0, "Failed to find provider"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_6f

    .line 417
    :cond_40
    const-string v0, "ContentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring notify for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void

    .line 411
    :cond_67
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_6d
    move/from16 v5, p6

    :goto_6f
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v3

    .line 432
    .local v3, "identityToken":J
    const/4 v0, 0x0

    move-object v1, v0

    .line 434
    .local v1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :try_start_75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_1c6

    move-object v2, v0

    .line 436
    .end local v1    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :try_start_7b
    iget-object v1, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v1
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_1bf

    .line 437
    :try_start_7e
    iget-object v9, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;
    :try_end_80
    .catchall {:try_start_7e .. :try_end_80} :catchall_1b3

    const/4 v11, 0x0

    move-object v10, v15

    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v19, v14

    move/from16 v14, p4

    .end local v14    # "uid":I
    .local v19, "uid":I
    move v15, v7

    move-object/from16 v16, v2

    :try_start_8d
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    .line 439
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_1aa

    .line 442
    :try_start_91
    invoke-direct {v8, v2}, Lcom/android/server/content/ContentService;->handleContentNotifyResumeProcess(Ljava/util/ArrayList;)V

    .line 445
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_98
    .catchall {:try_start_91 .. :try_end_98} :catchall_1a1

    move v9, v0

    .line 446
    .local v9, "numCalls":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9a
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    if-ge v10, v9, :cond_143

    .line 447
    :try_start_9d
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/ContentService$ObserverCall;
    :try_end_a3
    .catchall {:try_start_9d .. :try_end_a3} :catchall_136

    move-object v11, v0

    .line 449
    .local v11, "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :try_start_a4
    iget-object v0, v11, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    iget-boolean v12, v11, Lcom/android/server/content/ContentService$ObserverCall;->mSelfChange:Z
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_a8} :catch_c2
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_b8

    move-object/from16 v13, p1

    :try_start_aa
    invoke-interface {v0, v12, v13, v7}, Landroid/database/IContentObserver;->onChange(ZLandroid/net/Uri;I)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_ad} :catch_b6
    .catchall {:try_start_aa .. :try_end_ad} :catchall_b4

    .line 468
    nop

    .line 446
    move-object/from16 v21, v2

    move-wide/from16 v23, v3

    goto/16 :goto_117

    .line 486
    .end local v9    # "numCalls":I
    .end local v10    # "i":I
    .end local v11    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catchall_b4
    move-exception v0

    goto :goto_bb

    .line 452
    .restart local v9    # "numCalls":I
    .restart local v10    # "i":I
    .restart local v11    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catch_b6
    move-exception v0

    goto :goto_c5

    .line 486
    .end local v9    # "numCalls":I
    .end local v10    # "i":I
    .end local v11    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catchall_b8
    move-exception v0

    move-object/from16 v13, p1

    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v3    # "identityToken":J
    .end local v6    # "msg":Ljava/lang/String;
    .end local v19    # "uid":I
    .local v9, "identityToken":J
    .local v11, "msg":Ljava/lang/String;
    .local v12, "uid":I
    .local v15, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :goto_bb
    move-object v15, v2

    move-wide v9, v3

    move-object v11, v6

    move/from16 v12, v19

    goto/16 :goto_1cc

    .line 452
    .end local v12    # "uid":I
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v3    # "identityToken":J
    .restart local v6    # "msg":Ljava/lang/String;
    .local v9, "numCalls":I
    .restart local v10    # "i":I
    .local v11, "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .restart local v19    # "uid":I
    :catch_c2
    move-exception v0

    move-object/from16 v13, p1

    :goto_c5
    move-object v12, v0

    .line 453
    .local v12, "ex":Landroid/os/RemoteException;
    :try_start_c6
    iget-object v14, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v14
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_132

    .line 454
    :try_start_c9
    const-string v0, "ContentService"

    const-string v15, "Found dead observer, removing"

    invoke-static {v0, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, v11, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-interface {v0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 456
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v15, v11, Lcom/android/server/content/ContentService$ObserverCall;->mNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 457
    # getter for: Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/server/content/ContentService$ObserverNode;->access$200(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    move-result-object v15

    .line 458
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16
    :try_end_e0
    .catchall {:try_start_c9 .. :try_end_e0} :catchall_11f

    .line 459
    .local v16, "numList":I
    move/from16 v1, v16

    const/16 v16, 0x0

    .local v1, "numList":I
    .local v16, "j":I
    :goto_e4
    move/from16 v20, v16

    .end local v16    # "j":I
    .local v20, "j":I
    move-object/from16 v21, v2

    move/from16 v2, v20

    if-ge v2, v1, :cond_114

    .line 460
    .end local v20    # "j":I
    .local v2, "j":I
    .local v21, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :try_start_ec
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :try_end_f2
    .catchall {:try_start_ec .. :try_end_f2} :catchall_110

    move-object/from16 v22, v16

    .line 461
    .local v22, "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    move-wide/from16 v23, v3

    move-object/from16 v3, v22

    :try_start_f8
    iget-object v4, v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    .end local v22    # "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .local v3, "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .local v23, "identityToken":J
    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_109

    .line 462
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 463
    add-int/lit8 v20, v2, -0x1

    .line 464
    .end local v2    # "j":I
    .restart local v20    # "j":I
    add-int/lit8 v1, v1, -0x1

    .line 459
    .end local v3    # "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    move/from16 v2, v20

    .end local v20    # "j":I
    .restart local v2    # "j":I
    :cond_109
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "j":I
    .restart local v16    # "j":I
    move-object/from16 v2, v21

    move-wide/from16 v3, v23

    goto :goto_e4

    .line 467
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "numList":I
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v16    # "j":I
    .end local v23    # "identityToken":J
    .local v3, "identityToken":J
    :catchall_110
    move-exception v0

    move-wide/from16 v23, v3

    .end local v3    # "identityToken":J
    .restart local v23    # "identityToken":J
    goto :goto_124

    .end local v23    # "identityToken":J
    .restart local v3    # "identityToken":J
    :cond_114
    move-wide/from16 v23, v3

    .end local v3    # "identityToken":J
    .restart local v23    # "identityToken":J
    monitor-exit v14

    .line 446
    .end local v11    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v12    # "ex":Landroid/os/RemoteException;
    :goto_117
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "i":I
    .local v0, "i":I
    move-object/from16 v2, v21

    move-wide/from16 v3, v23

    goto/16 :goto_9a

    .line 467
    .end local v0    # "i":I
    .end local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v23    # "identityToken":J
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v3    # "identityToken":J
    .restart local v10    # "i":I
    .restart local v11    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .restart local v12    # "ex":Landroid/os/RemoteException;
    :catchall_11f
    move-exception v0

    move-object/from16 v21, v2

    move-wide/from16 v23, v3

    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v3    # "identityToken":J
    .restart local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v23    # "identityToken":J
    :goto_124
    monitor-exit v14
    :try_end_125
    .catchall {:try_start_f8 .. :try_end_125} :catchall_130

    :try_start_125
    throw v0
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_126

    .line 486
    .end local v9    # "numCalls":I
    .end local v10    # "i":I
    .end local v11    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v12    # "ex":Landroid/os/RemoteException;
    :catchall_126
    move-exception v0

    move-object v11, v6

    move/from16 v12, v19

    move-object/from16 v15, v21

    move-wide/from16 v9, v23

    goto/16 :goto_1cc

    .line 467
    .restart local v9    # "numCalls":I
    .restart local v10    # "i":I
    .restart local v11    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .restart local v12    # "ex":Landroid/os/RemoteException;
    :catchall_130
    move-exception v0

    goto :goto_124

    .line 486
    .end local v9    # "numCalls":I
    .end local v10    # "i":I
    .end local v11    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v23    # "identityToken":J
    .restart local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v3    # "identityToken":J
    :catchall_132
    move-exception v0

    move-object/from16 v21, v2

    goto :goto_13b

    :catchall_136
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v13, p1

    .end local v6    # "msg":Ljava/lang/String;
    .end local v19    # "uid":I
    .local v9, "identityToken":J
    .local v11, "msg":Ljava/lang/String;
    .local v12, "uid":I
    .local v15, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :goto_13b
    move-wide v9, v3

    move-object v11, v6

    move/from16 v12, v19

    move-object/from16 v15, v21

    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v3    # "identityToken":J
    .restart local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v23    # "identityToken":J
    goto/16 :goto_1cc

    .line 470
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v23    # "identityToken":J
    .restart local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v3    # "identityToken":J
    .restart local v6    # "msg":Ljava/lang/String;
    .local v9, "numCalls":I
    .restart local v19    # "uid":I
    :cond_143
    move-object/from16 v21, v2

    move-wide/from16 v23, v3

    move-object/from16 v13, p1

    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v3    # "identityToken":J
    .restart local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v23    # "identityToken":J
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_181

    .line 471
    :try_start_14d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 472
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_181

    .line 473
    const/4 v2, 0x0

    .line 474
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11
    :try_end_158
    .catchall {:try_start_14d .. :try_end_158} :catchall_177

    move/from16 v12, v19

    :try_start_15a
    invoke-direct {v8, v12}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v14
    :try_end_15e
    .catchall {:try_start_15a .. :try_end_15e} :catchall_16f

    .line 473
    .end local v19    # "uid":I
    .restart local v12    # "uid":I
    move-object v1, v0

    move-object/from16 v15, v21

    .end local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    move/from16 v25, v9

    move-wide/from16 v9, v23

    move/from16 v3, v18

    .end local v23    # "identityToken":J
    .local v9, "identityToken":J
    .local v25, "numCalls":I
    move v4, v12

    move-object v5, v11

    move-object v11, v6

    move v6, v14

    .end local v6    # "msg":Ljava/lang/String;
    .restart local v11    # "msg":Ljava/lang/String;
    :try_start_16b
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;I)V

    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    goto :goto_18a

    .line 486
    .end local v9    # "identityToken":J
    .end local v11    # "msg":Ljava/lang/String;
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v25    # "numCalls":I
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v23    # "identityToken":J
    :catchall_16f
    move-exception v0

    move-object v11, v6

    move-object/from16 v15, v21

    move-wide/from16 v9, v23

    .end local v6    # "msg":Ljava/lang/String;
    .end local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v23    # "identityToken":J
    .restart local v9    # "identityToken":J
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    goto/16 :goto_1cc

    .end local v9    # "identityToken":J
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v19    # "uid":I
    .restart local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v23    # "identityToken":J
    :catchall_177
    move-exception v0

    move-object v11, v6

    move/from16 v12, v19

    move-object/from16 v15, v21

    move-wide/from16 v9, v23

    .end local v6    # "msg":Ljava/lang/String;
    .end local v19    # "uid":I
    .end local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v23    # "identityToken":J
    .restart local v9    # "identityToken":J
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "uid":I
    .restart local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    goto/16 :goto_1cc

    .line 478
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v6    # "msg":Ljava/lang/String;
    .local v9, "numCalls":I
    .restart local v19    # "uid":I
    .restart local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v23    # "identityToken":J
    :cond_181
    move-object v11, v6

    move/from16 v25, v9

    move/from16 v12, v19

    move-object/from16 v15, v21

    move-wide/from16 v9, v23

    .end local v6    # "msg":Ljava/lang/String;
    .end local v19    # "uid":I
    .end local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v23    # "identityToken":J
    .local v9, "identityToken":J
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "uid":I
    .restart local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v25    # "numCalls":I
    :goto_18a
    iget-object v1, v8, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_18d
    .catchall {:try_start_16b .. :try_end_18d} :catchall_1bb

    .line 479
    :try_start_18d
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "providerPackageName":Ljava/lang/String;
    invoke-direct {v8, v7, v0, v13}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    .line 481
    .end local v0    # "providerPackageName":Ljava/lang/String;
    monitor-exit v1
    :try_end_195
    .catchall {:try_start_18d .. :try_end_195} :catchall_19e

    .line 486
    .end local v25    # "numCalls":I
    nop

    .line 487
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 490
    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 491
    nop

    .line 492
    return-void

    .line 481
    .restart local v25    # "numCalls":I
    :catchall_19e
    move-exception v0

    :try_start_19f
    monitor-exit v1
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_19e

    :try_start_1a0
    throw v0
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_1bb

    .line 486
    .end local v9    # "identityToken":J
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v25    # "numCalls":I
    .restart local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v3    # "identityToken":J
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v19    # "uid":I
    :catchall_1a1
    move-exception v0

    move-object v15, v2

    move-wide v9, v3

    move-object v11, v6

    move/from16 v12, v19

    move-object/from16 v13, p1

    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v3    # "identityToken":J
    .end local v6    # "msg":Ljava/lang/String;
    .end local v19    # "uid":I
    .restart local v9    # "identityToken":J
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "uid":I
    .restart local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    goto :goto_1cc

    .line 439
    .end local v9    # "identityToken":J
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v3    # "identityToken":J
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v19    # "uid":I
    :catchall_1aa
    move-exception v0

    move-object v15, v2

    move-wide v9, v3

    move-object v11, v6

    move/from16 v12, v19

    move-object/from16 v13, p1

    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v3    # "identityToken":J
    .end local v6    # "msg":Ljava/lang/String;
    .end local v19    # "uid":I
    .restart local v9    # "identityToken":J
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "uid":I
    .restart local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    goto :goto_1b9

    .end local v9    # "identityToken":J
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v3    # "identityToken":J
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v14    # "uid":I
    :catchall_1b3
    move-exception v0

    move-wide v9, v3

    move-object v11, v6

    move v12, v14

    move-object v13, v15

    move-object v15, v2

    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v3    # "identityToken":J
    .end local v6    # "msg":Ljava/lang/String;
    .end local v14    # "uid":I
    .restart local v9    # "identityToken":J
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "uid":I
    .restart local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :goto_1b9
    :try_start_1b9
    monitor-exit v1
    :try_end_1ba
    .catchall {:try_start_1b9 .. :try_end_1ba} :catchall_1bd

    :try_start_1ba
    throw v0
    :try_end_1bb
    .catchall {:try_start_1ba .. :try_end_1bb} :catchall_1bb

    .line 486
    :catchall_1bb
    move-exception v0

    goto :goto_1cc

    .line 439
    :catchall_1bd
    move-exception v0

    goto :goto_1b9

    .line 486
    .end local v9    # "identityToken":J
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v3    # "identityToken":J
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v14    # "uid":I
    :catchall_1bf
    move-exception v0

    move-wide v9, v3

    move-object v11, v6

    move v12, v14

    move-object v13, v15

    move-object v15, v2

    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v3    # "identityToken":J
    .end local v6    # "msg":Ljava/lang/String;
    .end local v14    # "uid":I
    .restart local v9    # "identityToken":J
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "uid":I
    .restart local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    goto :goto_1cc

    .end local v9    # "identityToken":J
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .local v1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v3    # "identityToken":J
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v14    # "uid":I
    :catchall_1c6
    move-exception v0

    move-wide v9, v3

    move-object v11, v6

    move v12, v14

    move-object v13, v15

    move-object v15, v1

    .end local v1    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v3    # "identityToken":J
    .end local v6    # "msg":Ljava/lang/String;
    .end local v14    # "uid":I
    .restart local v9    # "identityToken":J
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "uid":I
    .restart local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :goto_1cc
    if-eqz v15, :cond_1d1

    .line 487
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 490
    :cond_1d1
    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    .line 397
    .end local v7    # "userHandle":I
    .end local v9    # "identityToken":J
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v17    # "pid":I
    .end local v18    # "callingUserHandle":I
    .restart local p5    # "userHandle":I
    :cond_1d5
    move-object v13, v15

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "syncToNetwork"    # Z

    .line 529
    nop

    .line 530
    nop

    .line 531
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    const/16 v6, 0x2710

    .line 529
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/ContentService;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZIII)V

    .line 532
    return-void
.end method

.method onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 309
    const/16 v0, 0x226

    if-eq p1, v0, :cond_5

    goto :goto_8

    .line 311
    :cond_5
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 314
    :goto_8
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_11

    .line 315
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onBootPhase(I)V

    .line 317
    :cond_11
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1694
    new-instance v0, Lcom/android/server/content/ContentShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentShellCommand;-><init>(Landroid/content/IContentService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1695
    return-void
.end method

.method onStartUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 183
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onStartUser(I)V

    .line 184
    :cond_9
    return-void
.end method

.method onStopUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 191
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onStopUser(I)V

    .line 192
    :cond_9
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IContentService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 267
    :catch_5
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 271
    const-string v1, "ContentService"

    const-string v2, "Content Service Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    :cond_11
    throw v0
.end method

.method onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 187
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onUnlockUser(I)V

    .line 188
    :cond_9
    return-void
.end method

.method public putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/net/Uri;
    .param p3, "value"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 1236
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1237
    const-string v0, "ContentService"

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1238
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1242
    invoke-direct {p0, p2}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1243
    .local v0, "providerPackageName":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1245
    .local v1, "fullKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1246
    :try_start_2e
    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1248
    .local v3, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-eqz p3, :cond_38

    .line 1249
    invoke-virtual {v3, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 1251
    :cond_38
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    .end local v3    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    :goto_3b
    monitor-exit v2

    .line 1254
    return-void

    .line 1253
    :catchall_3d
    move-exception v3

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_3d

    throw v3
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;

    .line 366
    nop

    .line 367
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 366
    const/16 v5, 0x2710

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/ContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V

    .line 368
    return-void
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V
    .registers 24
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "userHandle"    # I
    .param p5, "targetSdkVersion"    # I

    move-object/from16 v8, p0

    move-object/from16 v15, p1

    .line 330
    if-eqz p3, :cond_89

    if-eqz v15, :cond_89

    .line 334
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 335
    .local v14, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 337
    .local v17, "pid":I
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v8

    move-object v2, v15

    move/from16 v3, v17

    move v4, v14

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v1

    .line 340
    .end local p4    # "userHandle":I
    .local v1, "userHandle":I
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 341
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_6b

    .line 343
    const/16 v0, 0x1a

    move/from16 v3, p5

    if-ge v3, v0, :cond_65

    .line 346
    const-string v0, "Failed to find provider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_6d

    .line 350
    :cond_3e
    const-string v0, "ContentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring content changes for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void

    .line 344
    :cond_65
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_6b
    move/from16 v3, p5

    :goto_6d
    iget-object v4, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v4

    .line 357
    :try_start_70
    iget-object v9, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    iget-object v13, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_83

    move-object v10, v15

    move-object/from16 v11, p3

    move/from16 v12, p2

    move v5, v14

    .end local v14    # "uid":I
    .local v5, "uid":I
    move/from16 v15, v17

    move/from16 v16, v1

    :try_start_7e
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 361
    monitor-exit v4

    .line 362
    return-void

    .line 361
    .end local v5    # "uid":I
    .restart local v14    # "uid":I
    :catchall_83
    move-exception v0

    move v5, v14

    .end local v14    # "uid":I
    .restart local v5    # "uid":I
    :goto_85
    monitor-exit v4
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_87

    throw v0

    :catchall_87
    move-exception v0

    goto :goto_85

    .line 331
    .end local v1    # "userHandle":I
    .end local v2    # "msg":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v17    # "pid":I
    .restart local p4    # "userHandle":I
    :cond_89
    move/from16 v3, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 893
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 894
    if-eqz p1, :cond_59

    .line 897
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 900
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 905
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 907
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 908
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    .line 910
    .local v2, "identityToken":J
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p2, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removePeriodicSync() by uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 911
    invoke-virtual {v4, v5, p3, v6}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_4c

    .line 915
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 916
    nop

    .line 917
    return-void

    .line 915
    :catchall_4c
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v4

    .line 898
    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "identityToken":J
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 6
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    .line 1177
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1179
    .local v0, "identityToken":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1180
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    .line 1181
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 1184
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_13
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1185
    nop

    .line 1186
    return-void

    .line 1184
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 20
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 569
    move-object/from16 v10, p3

    const/4 v0, 0x1

    invoke-static {v10, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 570
    invoke-static/range {p3 .. p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 571
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 572
    .local v11, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 574
    .local v12, "uId":I
    invoke-direct {v1, v12, v10}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 575
    invoke-direct {v1, v12, v10}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v13

    .line 579
    .local v13, "syncExemption":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v14, v2

    .line 581
    .local v14, "identityToken":J
    :try_start_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 582
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_32

    .line 583
    const/4 v8, -0x2

    move-object v2, v0

    move-object/from16 v3, p1

    move v4, v11

    move v5, v12

    move-object/from16 v6, p2

    move-object v7, v10

    move v9, v13

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;II)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    .line 588
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_32
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 589
    nop

    .line 590
    return-void

    .line 588
    :catchall_37
    move-exception v0

    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public resetTodayStats()V
    .registers 4

    .line 1678
    const-string/jumbo v0, "resetTodayStats"

    invoke-direct {p0, v0}, Lcom/android/server/content/ContentService;->enforceShell(Ljava/lang/String;)V

    .line 1680
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_1c

    .line 1681
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1683
    .local v0, "token":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->resetTodayStats()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_17

    .line 1685
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1686
    goto :goto_1c

    .line 1685
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1688
    .end local v0    # "token":J
    :cond_1c
    :goto_1c
    return-void
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 15
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "syncable"    # I

    .line 972
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 975
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-static {p3}, Lcom/android/server/content/ContentService;->normalizeSyncable(I)I

    move-result p3

    .line 979
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 981
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 982
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v9, v2

    .line 984
    .local v9, "identityToken":J
    :try_start_21
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 985
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_33

    .line 986
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    move-object v4, p1

    move v5, v1

    move-object v6, p2

    move v7, p3

    move v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;II)V
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_38

    .line 990
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_33
    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 991
    nop

    .line 992
    return-void

    .line 990
    :catchall_38
    move-exception v2

    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2

    .line 973
    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v9    # "identityToken":J
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMasterSyncAutomatically(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 1024
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 1025
    return-void
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .registers 9
    .param p1, "flag"    # Z
    .param p2, "userId"    # I

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to set the sync status for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1036
    .local v0, "callingUid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1038
    .local v1, "identityToken":J
    :try_start_27
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    .line 1039
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v3, :cond_38

    .line 1040
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    .line 1041
    invoke-direct {p0, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v5

    .line 1040
    invoke-virtual {v4, p1, p2, v5, v0}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZIII)V
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_3d

    .line 1044
    .end local v3    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_38
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1045
    nop

    .line 1046
    return-void

    .line 1044
    :catchall_3d
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z

    .line 831
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 832
    return-void
.end method

.method public setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .registers 19
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "userId"    # I

    move-object v1, p0

    .line 837
    move/from16 v9, p4

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 840
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 844
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 845
    .local v10, "callingUid":I
    invoke-direct {v1, v10}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v11

    .line 847
    .local v11, "syncExemptionFlag":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v12, v2

    .line 849
    .local v12, "identityToken":J
    :try_start_35
    invoke-direct {v1}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 850
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_4a

    .line 851
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    move-object v3, p1

    move v4, v9

    move-object/from16 v5, p2

    move/from16 v6, p3

    move v7, v11

    move v8, v10

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZII)V
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_4f

    .line 855
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_4a
    invoke-static {v12, v13}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 856
    nop

    .line 857
    return-void

    .line 855
    :catchall_4f
    move-exception v0

    invoke-static {v12, v13}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    .line 838
    .end local v10    # "callingUid":I
    .end local v11    # "syncExemptionFlag":I
    .end local v12    # "identityToken":J
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Authority must be non-empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sync(Landroid/content/SyncRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/content/SyncRequest;

    .line 603
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->syncAsUser(Landroid/content/SyncRequest;I)V

    .line 604
    return-void
.end method

.method public syncAsUser(Landroid/content/SyncRequest;I)V
    .registers 24
    .param p1, "request"    # Landroid/content/SyncRequest;
    .param p2, "userId"    # I

    move-object/from16 v1, p0

    .line 622
    move/from16 v10, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to request sync as user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v10, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 623
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 625
    .local v11, "callerUid":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 627
    .local v9, "extras":Landroid/os/Bundle;
    invoke-direct {v1, v11, v9}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 628
    invoke-direct {v1, v11, v9}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v19

    .line 632
    .local v19, "syncExemption":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v7, v2

    .line 634
    .local v7, "identityToken":J
    :try_start_2d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_96

    .line 635
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v0, :cond_37

    .line 659
    invoke-static {v7, v8}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 636
    return-void

    .line 638
    :cond_37
    :try_start_37
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncFlexTime()J

    move-result-wide v16

    .line 639
    .local v16, "flextime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncRunTime()J

    move-result-wide v2

    move-wide v14, v2

    .line 640
    .local v14, "runAtTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v2
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_96

    if-eqz v2, :cond_77

    .line 641
    :try_start_46
    iget-object v2, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    new-instance v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 646
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v2, v3, v10}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 648
    .local v13, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {v1, v14, v15}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v2

    move-wide v14, v2

    .line 650
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v12

    move-object/from16 v18, v9

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_6b
    .catchall {:try_start_46 .. :try_end_6b} :catchall_71

    .line 652
    .end local v13    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    nop

    .line 659
    move-object v12, v9

    move/from16 v20, v11

    move-wide v10, v7

    goto :goto_8f

    .line 659
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v14    # "runAtTime":J
    .end local v16    # "flextime":J
    :catchall_71
    move-exception v0

    move-object v12, v9

    move/from16 v20, v11

    move-wide v10, v7

    goto :goto_9b

    .line 653
    .restart local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .restart local v14    # "runAtTime":J
    .restart local v16    # "flextime":J
    :cond_77
    nop

    .line 654
    :try_start_78
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v6
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_96

    const/4 v12, -0x2

    .line 653
    move-object v2, v0

    move v4, v10

    move v5, v11

    move/from16 v20, v11

    move-wide v10, v7

    move-object v7, v9

    .line 653
    .end local v7    # "identityToken":J
    .end local v11    # "callerUid":I
    .local v10, "identityToken":J
    .local v20, "callerUid":I
    move v8, v12

    move-object v12, v9

    move/from16 v9, v19

    .line 653
    .end local v9    # "extras":Landroid/os/Bundle;
    .local v12, "extras":Landroid/os/Bundle;
    :try_start_8c
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;II)V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_94

    .line 659
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v14    # "runAtTime":J
    .end local v16    # "flextime":J
    :goto_8f
    invoke-static {v10, v11}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 660
    nop

    .line 661
    return-void

    .line 659
    :catchall_94
    move-exception v0

    goto :goto_9b

    .line 659
    .end local v10    # "identityToken":J
    .end local v12    # "extras":Landroid/os/Bundle;
    .end local v20    # "callerUid":I
    .restart local v7    # "identityToken":J
    .restart local v9    # "extras":Landroid/os/Bundle;
    .restart local v11    # "callerUid":I
    :catchall_96
    move-exception v0

    move-object v12, v9

    move/from16 v20, v11

    move-wide v10, v7

    .line 659
    .end local v7    # "identityToken":J
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v11    # "callerUid":I
    .restart local v10    # "identityToken":J
    .restart local v12    # "extras":Landroid/os/Bundle;
    .restart local v20    # "callerUid":I
    :goto_9b
    invoke-static {v10, v11}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/database/IContentObserver;

    .line 372
    if-eqz p1, :cond_f

    .line 375
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 376
    :try_start_5
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v1, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 378
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1

    .line 373
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
