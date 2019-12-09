.class Lcom/android/server/usage/StorageStatsService$H;
.super Landroid/os/Handler;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/StorageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MINIMUM_CHANGE_DELTA:D = 0.05

.field private static final MSG_CHECK_STORAGE_DELTA:I = 0x64

.field private static final MSG_LOAD_CACHED_QUOTAS_FROM_FILE:I = 0x65

.field private static final UNSET:I = -0x1


# instance fields
.field private mMinimumThresholdBytes:D

.field private mPreviousBytes:J

.field private final mStats:Landroid/os/StatFs;

.field final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V
    .locals 2

    .line 476
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 477
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 479
    new-instance p1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    .line 480
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 481
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide p1

    long-to-double p1, p1

    const-wide v0, 0x3fa999999999999aL    # 0.05

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mMinimumThresholdBytes:D

    .line 482
    return-void
.end method

.method private getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;
    .locals 5

    .line 540
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 541
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 542
    new-instance v1, Lcom/android/server/storage/CacheQuotaStrategy;

    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/StorageStatsService;->access$100(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v3}, Lcom/android/server/usage/StorageStatsService;->access$200(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/pm/Installer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v4}, Lcom/android/server/usage/StorageStatsService;->access$300(Lcom/android/server/usage/StorageStatsService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/server/storage/CacheQuotaStrategy;-><init>(Landroid/content/Context;Landroid/app/usage/UsageStatsManagerInternal;Lcom/android/server/pm/Installer;Landroid/util/ArrayMap;)V

    return-object v1
.end method

.method private recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V
    .locals 0

    .line 536
    invoke-virtual {p1}, Lcom/android/server/storage/CacheQuotaStrategy;->recalculateQuotas()V

    .line 537
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 489
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->access$100(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    return-void

    .line 493
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x7530

    const/16 v2, 0x64

    packed-switch p1, :pswitch_data_0

    .line 527
    return-void

    .line 505
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object p1

    .line 506
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 508
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/storage/CacheQuotaStrategy;->setupQuotasFromFile()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v3

    .line 512
    const-string v4, "StorageStatsService"

    const-string v5, "Cache quota XML file is malformed?"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 509
    :catch_1
    move-exception v3

    .line 510
    const-string v4, "StorageStatsService"

    const-string v5, "An error occurred while reading the cache quota file."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    :goto_0
    nop

    .line 516
    :goto_1
    iget-wide v3, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 517
    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 518
    invoke-direct {p0, p1}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 520
    :cond_1
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 521
    goto :goto_2

    .line 495
    :pswitch_1
    iget-wide v3, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 496
    long-to-double v3, v3

    iget-wide v5, p0, Lcom/android/server/usage/StorageStatsService$H;->mMinimumThresholdBytes:D

    cmpl-double p1, v3, v5

    if-lez p1, :cond_2

    .line 497
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 498
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 499
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-virtual {p1}, Lcom/android/server/usage/StorageStatsService;->notifySignificantDelta()V

    .line 501
    :cond_2
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 502
    nop

    .line 529
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
