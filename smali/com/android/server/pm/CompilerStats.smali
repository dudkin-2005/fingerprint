.class Lcom/android/server/pm/CompilerStats;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "CompilerStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/CompilerStats$PackageStats;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/AbstractStatsBase<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMPILER_STATS_VERSION:I = 0x1

.field private static final COMPILER_STATS_VERSION_HEADER:Ljava/lang/String; = "PACKAGE_MANAGER__COMPILER_STATS__"


# instance fields
.field private final packageStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/CompilerStats$PackageStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 124
    const-string/jumbo v0, "package-cstats.list"

    const-string v1, "CompilerStats_DiskWriter"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    .line 126
    return-void
.end method


# virtual methods
.method public createPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 142
    :try_start_0
    new-instance v1, Lcom/android/server/pm/CompilerStats$PackageStats;

    invoke-direct {v1, p1}, Lcom/android/server/pm/CompilerStats$PackageStats;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-exit v0

    return-object v1

    .line 145
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public deletePackageStats(Ljava/lang/String;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getOrCreatePackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/CompilerStats$PackageStats;

    .line 151
    if-eqz v1, :cond_0

    .line 152
    monitor-exit v0

    return-object v1

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CompilerStats;->createPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 156
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/CompilerStats$PackageStats;

    monitor-exit v0

    return-object p1

    .line 131
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method maybeWriteAsync()Z
    .locals 1

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/CompilerStats;->maybeWriteAsync(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method read()V
    .locals 1

    .line 280
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/CompilerStats;->read(Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method public read(Ljava/io/Reader;)Z
    .locals 6

    .line 201
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 210
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 211
    if-eqz p1, :cond_5

    .line 214
    const-string v2, "PACKAGE_MANAGER__COMPILER_STATS__"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    const-string v2, "PACKAGE_MANAGER__COMPILER_STATS__"

    .line 218
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 219
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 227
    new-instance p1, Lcom/android/server/pm/CompilerStats$PackageStats;

    const-string v3, "fake package"

    invoke-direct {p1, v3}, Lcom/android/server/pm/CompilerStats$PackageStats;-><init>(Ljava/lang/String;)V

    .line 229
    nop

    .line 230
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 231
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 233
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    if-eq v4, v2, :cond_0

    .line 236
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 237
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 238
    invoke-virtual {p1, v5, v3, v4}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V

    .line 239
    goto :goto_0

    .line 234
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/pm/CompilerStats;->getOrCreatePackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    :cond_2
    nop

    .line 248
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    .line 221
    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid version line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "No version line found."

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    :catch_0
    move-exception p1

    .line 244
    :try_start_4
    const-string v1, "PackageManager"

    const-string v2, "Error parsing compiler stats"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 249
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method protected bridge synthetic readInternal(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CompilerStats;->readInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected readInternal(Ljava/lang/Void;)V
    .locals 3

    .line 285
    invoke-virtual {p0}, Lcom/android/server/pm/CompilerStats;->getFile()Landroid/util/AtomicFile;

    move-result-object p1

    .line 286
    nop

    .line 288
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/pm/CompilerStats;->read(Ljava/io/Reader;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    .line 290
    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    .line 292
    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 290
    :catch_1
    move-exception p1

    .line 292
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 293
    :goto_2
    nop

    .line 294
    return-void
.end method

.method public setPackageStats(Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write(Ljava/io/Writer;)V
    .locals 7

    .line 178
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, p1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 180
    const-string p1, "PACKAGE_MANAGER__COMPILER_STATS__"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 181
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/FastPrintWriter;->println(I)V

    .line 183
    iget-object p1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    monitor-enter p1

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CompilerStats$PackageStats;

    .line 185
    invoke-static {v2}, Lcom/android/server/pm/CompilerStats$PackageStats;->access$000(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    :try_start_1
    invoke-static {v2}, Lcom/android/server/pm/CompilerStats$PackageStats;->access$000(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    invoke-virtual {v2}, Lcom/android/server/pm/CompilerStats$PackageStats;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 189
    invoke-static {v2}, Lcom/android/server/pm/CompilerStats$PackageStats;->access$000(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 191
    goto :goto_1

    .line 193
    :cond_0
    monitor-exit v3

    .line 194
    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 195
    :cond_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    invoke-virtual {v0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 198
    return-void

    .line 195
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method protected bridge synthetic writeInternal(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CompilerStats;->writeInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected writeInternal(Ljava/lang/Void;)V
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/android/server/pm/CompilerStats;->getFile()Landroid/util/AtomicFile;

    move-result-object p1

    .line 263
    nop

    .line 266
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 268
    invoke-virtual {p0, v1}, Lcom/android/server/pm/CompilerStats;->write(Ljava/io/Writer;)V

    .line 269
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 270
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    goto :goto_1

    .line 271
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v0, 0x0

    .line 272
    :goto_0
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 275
    :cond_0
    const-string p1, "PackageManager"

    const-string v0, "Failed to write compiler stats"

    invoke-static {p1, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    :goto_1
    return-void
.end method

.method writeNow()V
    .locals 1

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/CompilerStats;->writeNow(Ljava/lang/Object;)V

    .line 254
    return-void
.end method
