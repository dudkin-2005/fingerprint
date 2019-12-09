.class public final Lcom/android/server/connectivity/IpConnectivityMetrics;
.super Lcom/android/server/SystemService;
.source "IpConnectivityMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;,
        Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;,
        Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_BUFFER_SIZE:I = 0x7d0

.field private static final DEFAULT_LOG_SIZE:I = 0x1f4

.field private static final ERROR_RATE_LIMITED:I = -0x1

.field private static final MAXIMUM_BUFFER_SIZE:I = 0x4e20

.field private static final MAXIMUM_CONNECT_LATENCY_RECORDS:I = 0x4e20

.field private static final NYC:I = 0x0

.field private static final NYC_MR1:I = 0x1

.field private static final NYC_MR2:I = 0x2

.field private static final READ_BUFFER_SIZE:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVICE_NAME:Ljava/lang/String; = "connmetrics"

.field private static final TAG:Ljava/lang/String;

.field public static final VERSION:I = 0x2


# instance fields
.field public final impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mBuckets:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/internal/util/TokenBucket;",
            ">;"
        }
    .end annotation
.end field

.field private mBuffer:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mCapacity:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCapacityGetter:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDropped:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mEventLog:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->TAG:Ljava/lang/String;

    .line 356
    sget-object v0, Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$B0oR30xfeM300kIzUVaV_zUNLCg;->INSTANCE:Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$B0oR30xfeM300kIzUVaV_zUNLCg;

    sput-object v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->READ_BUFFER_SIZE:Ljava/util/function/ToIntFunction;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 128
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->READ_BUFFER_SIZE:Ljava/util/function/ToIntFunction;

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;-><init>(Landroid/content/Context;Ljava/util/function/ToIntFunction;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/ToIntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/ToIntFunction<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    .line 89
    new-instance p1, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    invoke-direct {p1, p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;-><init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V

    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    .line 97
    new-instance p1, Lcom/android/internal/util/RingBuffer;

    const-class v0, Landroid/net/ConnectivityMetricsEvent;

    const/16 v1, 0x1f4

    invoke-direct {p1, v0, v1}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mEventLog:Lcom/android/internal/util/RingBuffer;

    .line 113
    nop

    .line 114
    invoke-static {}, Lcom/android/server/connectivity/IpConnectivityMetrics;->makeRateLimitingBuckets()Landroid/util/ArrayMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuckets:Landroid/util/ArrayMap;

    .line 118
    new-instance p1, Lcom/android/server/connectivity/DefaultNetworkMetrics;

    invoke-direct {p1}, Lcom/android/server/connectivity/DefaultNetworkMetrics;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    .line 123
    iput-object p2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacityGetter:Ljava/util/function/ToIntFunction;

    .line 124
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->initBuffer()V

    .line 125
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/IpConnectivityMetrics;Landroid/net/ConnectivityMetricsEvent;)I
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->append(Landroid/net/ConnectivityMetricsEvent;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdFlush(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdListAsProto(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdList(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private append(Landroid/net/ConnectivityMetricsEvent;)I
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mEventLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 166
    iget v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    iget-object v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 167
    if-nez p1, :cond_0

    .line 168
    monitor-exit v0

    return v1

    .line 170
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->isRateLimited(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    const/4 p1, -0x1

    monitor-exit v0

    return p1

    .line 174
    :cond_1
    if-nez v1, :cond_2

    .line 175
    iget p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 176
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 178
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v1, v1, -0x1

    monitor-exit v0

    return v1

    .line 180
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private cmdFlush(Ljava/io/PrintWriter;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->flushEncodedOutput()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method private cmdList(Ljava/io/PrintWriter;)V
    .locals 2

    .line 229
    const-string v0, "metrics events:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getEvents()Ljava/util/List;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityMetricsEvent;

    .line 232
    invoke-virtual {v1}, Landroid/net/ConnectivityMetricsEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    goto :goto_0

    .line 234
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->list(Ljava/io/PrintWriter;)V

    .line 238
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->listEvents(Ljava/io/PrintWriter;)V

    .line 240
    return-void
.end method

.method private cmdListAsProto(Ljava/io/PrintWriter;)V
    .locals 2

    .line 246
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getEvents()Ljava/util/List;

    move-result-object v0

    .line 247
    invoke-static {v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 248
    invoke-virtual {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->listAsProtos(Ljava/io/PrintWriter;)V

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->listEventsAsProto(Ljava/io/PrintWriter;)V

    .line 254
    return-void
.end method

.method private flushEncodedOutput()Ljava/lang/String;
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    .line 193
    iget v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 194
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->initBuffer()V

    .line 195
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->flushEvents(Ljava/util/List;)V

    .line 201
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->flushStatistics(Ljava/util/List;)V

    .line 207
    :cond_0
    :try_start_1
    invoke-static {v2, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->serialize(ILjava/util/List;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    nop

    .line 213
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    sget-object v1, Lcom/android/server/connectivity/IpConnectivityMetrics;->TAG:Ljava/lang/String;

    const-string v2, "could not serialize events"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    const-string v0, ""

    return-object v0

    .line 195
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEvents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mEventLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/ConnectivityMetricsEvent;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 262
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initBuffer()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 157
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->bufferCapacity()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isRateLimited(Landroid/net/ConnectivityMetricsEvent;)Z
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuckets:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/TokenBucket;

    .line 185
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/util/TokenBucket;->get()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$static$0(Landroid/content/Context;)I
    .locals 2

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "connectivity_metrics_buffer_size"

    const/16 v1, 0x7d0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 359
    if-gtz p0, :cond_0

    .line 360
    return v1

    .line 362
    :cond_0
    const/16 v0, 0x4e20

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static makeRateLimitingBuckets()Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/internal/util/TokenBucket;",
            ">;"
        }
    .end annotation

    .line 366
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 368
    const-class v1, Landroid/net/metrics/ApfProgramEvent;

    new-instance v2, Lcom/android/internal/util/TokenBucket;

    const v3, 0xea60

    const/16 v4, 0x32

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-object v0
.end method


# virtual methods
.method public bufferCapacity()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacityGetter:Ljava/util/function/ToIntFunction;

    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onBootPhase(I)V
    .locals 2

    .line 138
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 140
    new-instance p1, Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/connectivity/NetdEventListenerService;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 142
    const-string p1, "connmetrics"

    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 143
    iget-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    const-string p1, "netd_listener"

    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 145
    const-class p1, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    new-instance v0, Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;-><init>(Lcom/android/server/connectivity/IpConnectivityMetrics;Lcom/android/server/connectivity/IpConnectivityMetrics$1;)V

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 134
    return-void
.end method