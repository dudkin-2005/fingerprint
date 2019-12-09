.class public Lcom/android/server/storage/CacheQuotaStrategy;
.super Ljava/lang/Object;
.source "CacheQuotaStrategy.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# static fields
.field private static final ATTR_PREVIOUS_BYTES:Ljava/lang/String; = "previousBytes"

.field private static final ATTR_QUOTA_IN_BYTES:Ljava/lang/String; = "bytes"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_UUID:Ljava/lang/String; = "uuid"

.field private static final CACHE_INFO_TAG:Ljava/lang/String; = "cache-info"

.field private static final TAG:Ljava/lang/String; = "CacheQuotaStrategy"

.field private static final TAG_QUOTA:Ljava/lang/String; = "quota"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mLock:Ljava/lang/Object;

.field private mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

.field private final mQuotaMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteService:Landroid/app/usage/ICacheQuotaService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/usage/UsageStatsManagerInternal;Lcom/android/server/pm/Installer;Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/usage/UsageStatsManagerInternal;",
            "Lcom/android/server/pm/Installer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mLock:Ljava/lang/Object;

    .line 99
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 101
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/Installer;

    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mInstaller:Lcom/android/server/pm/Installer;

    .line 102
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    .line 103
    new-instance p1, Lcom/android/internal/os/AtomicFile;

    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/io/File;

    .line 104
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p4

    const-string/jumbo v0, "system"

    invoke-direct {p3, p4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p4, "cachequota.xml"

    invoke-direct {p2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/lang/Object;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/storage/CacheQuotaStrategy;)Landroid/app/usage/ICacheQuotaService;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/server/storage/CacheQuotaStrategy;Landroid/app/usage/ICacheQuotaService;)Landroid/app/usage/ICacheQuotaService;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/util/List;
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->getUnfulfilledRequests()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private createServiceConnection()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 125
    return-void

    .line 128
    :cond_0
    new-instance v0, Lcom/android/server/storage/CacheQuotaStrategy$1;

    invoke-direct {v0, p0}, Lcom/android/server/storage/CacheQuotaStrategy$1;-><init>(Lcom/android/server/storage/CacheQuotaStrategy;)V

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 161
    return-void
.end method

.method private disconnectService()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 258
    :cond_0
    return-void
.end method

.method static getRequestFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/usage/CacheQuotaHint;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 402
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "uuid"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    const-string/jumbo v2, "uid"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 404
    const-string v3, "bytes"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 405
    new-instance p0, Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-direct {p0}, Landroid/app/usage/CacheQuotaHint$Builder;-><init>()V

    .line 406
    invoke-virtual {p0, v1}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/usage/CacheQuotaHint$Builder;->build()Landroid/app/usage/CacheQuotaHint;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    return-object p0

    .line 407
    :catch_0
    move-exception p0

    .line 408
    const-string p0, "CacheQuotaStrategy"

    const-string v1, "Invalid cache quota request, skipping."

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-object v0
.end method

.method private getServiceComponentName()Landroid/content/ComponentName;
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 262
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    .line 263
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 264
    const-string v0, "CacheQuotaStrategy"

    const-string v2, "could not access the cache quota service: no package!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-object v1

    .line 268
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.usage.CacheQuotaService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x84

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 277
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 273
    :cond_2
    :goto_0
    const-string v0, "CacheQuotaStrategy"

    const-string v2, "No valid components found."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-object v1
.end method

.method private getUnfulfilledRequests()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;"
        }
    .end annotation

    .line 168
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 169
    const-wide v2, 0x7528ad000L

    sub-long v12, v10, v2

    .line 171
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v0, v1, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 173
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v15

    .line 174
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    .line 175
    iget-object v0, v1, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 176
    const/4 v8, 0x0

    move v5, v8

    :goto_0
    if-ge v5, v9, :cond_2

    .line 177
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 178
    iget-object v2, v1, Lcom/android/server/storage/CacheQuotaStrategy;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 179
    move/from16 v16, v5

    move-object/from16 v17, v6

    move-wide v5, v12

    move-object/from16 v18, v7

    move-wide v7, v10

    move/from16 v19, v9

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Landroid/app/usage/UsageStatsManagerInternal;->queryUsageStatsForUser(IIJJZ)Ljava/util/List;

    move-result-object v0

    .line 181
    if-nez v0, :cond_1

    .line 182
    nop

    .line 176
    :cond_0
    move-object/from16 v6, v18

    const/4 v7, 0x0

    goto :goto_4

    .line 185
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .line 186
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 190
    move-object/from16 v4, v17

    :try_start_0
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v6, v18

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v3, v7, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 192
    new-instance v5, Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-direct {v5}, Landroid/app/usage/CacheQuotaHint$Builder;-><init>()V

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 194
    invoke-virtual {v5, v8}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v5

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 195
    invoke-virtual {v5, v3}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v3

    .line 196
    invoke-virtual {v3, v0}, Landroid/app/usage/CacheQuotaHint$Builder;->setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v0

    const-wide/16 v8, -0x1

    .line 197
    invoke-virtual {v0, v8, v9}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/app/usage/CacheQuotaHint$Builder;->build()Landroid/app/usage/CacheQuotaHint;

    move-result-object v0

    .line 192
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    nop

    .line 203
    goto :goto_3

    .line 199
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v6, v18

    const/4 v7, 0x0

    .line 201
    :goto_2
    nop

    .line 185
    :goto_3
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    goto :goto_1

    .line 176
    :goto_4
    add-int/lit8 v5, v16, 0x1

    move v8, v7

    move/from16 v9, v19

    move-object v7, v6

    goto :goto_0

    .line 205
    :cond_2
    return-object v14
.end method

.method private insertIntoQuotaMap(Ljava/lang/String;IIJ)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseLongArray;

    .line 246
    if-nez v0, :cond_0

    .line 247
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 248
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_0
    invoke-static {p2, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    invoke-virtual {v0, p1, p4, p5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 251
    return-void
.end method

.method private pushProcessedQuotas(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    .line 218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 219
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 220
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/CacheQuotaHint;

    .line 221
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    move-result-wide v9

    .line 222
    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-nez v3, :cond_0

    .line 223
    goto :goto_1

    .line 227
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v11

    .line 228
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 230
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 228
    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/Installer;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 231
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 233
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 231
    move-object v3, p0

    move-wide v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/storage/CacheQuotaStrategy;->insertIntoQuotaMap(Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_1

    .line 234
    :catch_0
    move-exception v3

    .line 235
    const-string v4, "CacheQuotaStrategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set cache quota for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-static {v4, v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->disconnectService()V

    .line 242
    return-void
.end method

.method protected static readFromXml(Ljava/io/InputStream;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 354
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 356
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 357
    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_0

    if-eq p0, v2, :cond_0

    .line 359
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    .line 362
    :cond_0
    const/4 v3, 0x0

    if-ne p0, v2, :cond_1

    .line 363
    const-string p0, "CacheQuotaStrategy"

    const-string v0, "No quotas found in quota file."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-object v3

    .line 367
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 368
    const-string v4, "cache-info"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 372
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    :try_start_0
    const-string/jumbo v4, "previousBytes"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    nop

    .line 382
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 384
    :cond_2
    if-ne v5, v1, :cond_4

    .line 385
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 386
    const-string/jumbo v7, "quota"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 387
    invoke-static {v0}, Lcom/android/server/storage/CacheQuotaStrategy;->getRequestFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/usage/CacheQuotaHint;

    move-result-object v6

    .line 388
    if-nez v6, :cond_3

    .line 389
    goto :goto_1

    .line 391
    :cond_3
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 395
    :goto_1
    if-ne v5, v2, :cond_2

    .line 396
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 377
    :catch_0
    move-exception p0

    .line 378
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Previous bytes formatted incorrectly; aborting quota read."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 369
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid starting tag."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static saveToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;J)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 332
    const-string v0, "cache-info"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 333
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 334
    const-string/jumbo v2, "previousBytes"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_1

    .line 337
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/usage/CacheQuotaHint;

    .line 338
    const-string/jumbo v2, "quota"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    invoke-virtual {p3}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    .line 340
    if-eqz v2, :cond_0

    .line 341
    const-string/jumbo v2, "uuid"

    invoke-virtual {p3}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    :cond_0
    const-string/jumbo v2, "uid"

    invoke-virtual {p3}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    const-string v2, "bytes"

    invoke-virtual {p3}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, v1, v2, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 345
    const-string/jumbo p3, "quota"

    invoke-interface {p0, v1, p3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 347
    :cond_1
    const-string p1, "cache-info"

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 349
    return-void
.end method

.method private writeXmlToFile(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    .line 281
    nop

    .line 283
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 284
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    :try_start_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 286
    const-wide/16 v3, 0x0

    invoke-static {v1, p1, v3, v4}, Lcom/android/server/storage/CacheQuotaStrategy;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;J)V

    .line 287
    iget-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {p1, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    goto :goto_1

    .line 288
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v2, v0

    .line 289
    :goto_0
    const-string v0, "CacheQuotaStrategy"

    const-string v1, "An error occurred while writing the cache quota file."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    iget-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {p1, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 292
    :goto_1
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 1

    .line 210
    const-string/jumbo v0, "requests"

    .line 211
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 213
    invoke-direct {p0, p1}, Lcom/android/server/storage/CacheQuotaStrategy;->pushProcessedQuotas(Ljava/util/List;)V

    .line 214
    invoke-direct {p0, p1}, Lcom/android/server/storage/CacheQuotaStrategy;->writeXmlToFile(Ljava/util/List;)V

    .line 215
    return-void
.end method

.method public recalculateQuotas()V
    .locals 5

    .line 111
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->createServiceConnection()V

    .line 113
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 116
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 120
    :cond_0
    return-void
.end method

.method public setupQuotasFromFile()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 305
    nop

    .line 307
    nop

    .line 309
    :try_start_1
    invoke-static {v2}, Lcom/android/server/storage/CacheQuotaStrategy;->readFromXml(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 317
    goto :goto_0

    .line 315
    :catch_0
    move-exception v2

    .line 318
    nop

    .line 320
    :goto_0
    if-nez v3, :cond_0

    .line 321
    const-string v2, "CacheQuotaStrategy"

    const-string v3, "An error occurred while parsing the cache quota file."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-wide v0

    .line 324
    :cond_0
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/storage/CacheQuotaStrategy;->pushProcessedQuotas(Ljava/util/List;)V

    .line 325
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 313
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 310
    :catch_1
    move-exception v0

    .line 311
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    :goto_1
    nop

    .line 314
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 317
    goto :goto_2

    .line 315
    :catch_2
    move-exception v1

    .line 317
    :goto_2
    throw v0

    .line 302
    :catch_3
    move-exception v2

    .line 304
    return-wide v0
.end method
