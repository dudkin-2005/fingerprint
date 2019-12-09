.class public Lcom/android/server/storage/DiskStatsFileLogger;
.super Ljava/lang/Object;
.source "DiskStatsFileLogger.java"


# static fields
.field public static final APP_CACHES_KEY:Ljava/lang/String; = "cacheSizes"

.field public static final APP_CACHE_AGG_KEY:Ljava/lang/String; = "cacheSize"

.field public static final APP_DATA_KEY:Ljava/lang/String; = "appDataSizes"

.field public static final APP_DATA_SIZE_AGG_KEY:Ljava/lang/String; = "appDataSize"

.field public static final APP_SIZES_KEY:Ljava/lang/String; = "appSizes"

.field public static final APP_SIZE_AGG_KEY:Ljava/lang/String; = "appSize"

.field public static final AUDIO_KEY:Ljava/lang/String; = "audioSize"

.field public static final DOWNLOADS_KEY:Ljava/lang/String; = "downloadsSize"

.field public static final LAST_QUERY_TIMESTAMP_KEY:Ljava/lang/String; = "queryTime"

.field public static final MISC_KEY:Ljava/lang/String; = "otherSize"

.field public static final PACKAGE_NAMES_KEY:Ljava/lang/String; = "packageNames"

.field public static final PHOTOS_KEY:Ljava/lang/String; = "photosSize"

.field public static final SYSTEM_KEY:Ljava/lang/String; = "systemSize"

.field private static final TAG:Ljava/lang/String; = "DiskStatsLogger"

.field public static final VIDEOS_KEY:Ljava/lang/String; = "videosSize"


# instance fields
.field private mDownloadsSize:J

.field private mPackageStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

.field private mSystemSize:J


# direct methods
.method public constructor <init>(Lcom/android/server/storage/FileCollector$MeasurementResult;Lcom/android/server/storage/FileCollector$MeasurementResult;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/storage/FileCollector$MeasurementResult;",
            "Lcom/android/server/storage/FileCollector$MeasurementResult;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageStats;",
            ">;J)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    .line 78
    invoke-virtual {p2}, Lcom/android/server/storage/FileCollector$MeasurementResult;->totalAccountedSize()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mDownloadsSize:J

    .line 79
    iput-wide p4, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mSystemSize:J

    .line 80
    iput-object p3, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mPackageStats:Ljava/util/List;

    .line 81
    return-void
.end method

.method private addAppsToJson(Lorg/json/JSONObject;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 117
    move-object/from16 v0, p1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 118
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 119
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 120
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 125
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/android/server/storage/DiskStatsFileLogger;->filterOnlyPrimaryUser()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide/16 v7, 0x0

    move-wide v9, v7

    move-wide v11, v9

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageStats;

    .line 128
    iget-wide v14, v13, Landroid/content/pm/PackageStats;->codeSize:J

    .line 129
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    iget-wide v3, v13, Landroid/content/pm/PackageStats;->dataSize:J

    .line 130
    move-object/from16 v18, v1

    iget-wide v0, v13, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 131
    if-eqz v5, :cond_0

    .line 132
    move/from16 v19, v5

    move-object/from16 v20, v6

    iget-wide v5, v13, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v14, v5

    .line 133
    iget-wide v5, v13, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v3, v5

    .line 134
    iget-wide v5, v13, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v5

    goto :goto_1

    .line 136
    :cond_0
    move/from16 v19, v5

    move-object/from16 v20, v6

    :goto_1
    add-long/2addr v7, v14

    .line 137
    add-long/2addr v11, v3

    .line 138
    add-long/2addr v9, v0

    .line 140
    iget-object v5, v13, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    move-object/from16 v6, v18

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 141
    invoke-virtual {v2, v14, v15}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 142
    move-object/from16 v5, v16

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 143
    move-object/from16 v3, v17

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 144
    nop

    .line 126
    move-object v4, v3

    move-object v3, v5

    move-object v1, v6

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v0, p1

    goto :goto_0

    .line 145
    :cond_1
    move-object v6, v1

    move-object v5, v3

    move-object v3, v4

    const-string/jumbo v0, "packageNames"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v0, "appSizes"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v0, "cacheSizes"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v0, "appDataSizes"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v0, "appSize"

    invoke-virtual {v1, v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 150
    const-string v0, "cacheSize"

    invoke-virtual {v1, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 151
    const-string v0, "appDataSize"

    invoke-virtual {v1, v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 152
    return-void
.end method

.method private filterOnlyPrimaryUser()Landroid/util/ArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mPackageStats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageStats;

    .line 162
    iget v3, v2, Landroid/content/pm/PackageStats;->userHandle:I

    if-eqz v3, :cond_0

    .line 163
    goto :goto_0

    .line 166
    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageStats;

    .line 167
    if-eqz v3, :cond_1

    .line 168
    iget-wide v4, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 169
    iget-wide v4, v3, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->codeSize:J

    .line 170
    iget-wide v4, v3, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->dataSize:J

    .line 171
    iget-wide v4, v3, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 172
    iget-wide v4, v3, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 173
    iget-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v6, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/pm/PackageStats;->externalDataSize:J

    goto :goto_1

    .line 175
    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    new-instance v4, Landroid/content/pm/PackageStats;

    invoke-direct {v4, v2}, Landroid/content/pm/PackageStats;-><init>(Landroid/content/pm/PackageStats;)V

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :goto_1
    goto :goto_0

    .line 178
    :cond_2
    return-object v0
.end method

.method private getJsonRepresentation()Lorg/json/JSONObject;
    .locals 4

    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    :try_start_0
    const-string/jumbo v1, "queryTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v1, "photosSize"

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v1, "videosSize"

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 103
    const-string v1, "audioSize"

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 104
    const-string v1, "downloadsSize"

    iget-wide v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mDownloadsSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 105
    const-string/jumbo v1, "systemSize"

    iget-wide v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mSystemSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v1, "otherSize"

    iget-object v2, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    iget-wide v2, v2, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 107
    invoke-direct {p0, v0}, Lcom/android/server/storage/DiskStatsFileLogger;->addAppsToJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    nop

    .line 113
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v1, "DiskStatsLogger"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public dumpToFile(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 90
    invoke-direct {p0}, Lcom/android/server/storage/DiskStatsFileLogger;->getJsonRepresentation()Lorg/json/JSONObject;

    move-result-object p1

    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 95
    return-void
.end method
