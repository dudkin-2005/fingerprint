.class Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;
.super Ljava/lang/Object;
.source "MultipathPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/MultipathPolicyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultipathTracker"
.end annotation


# instance fields
.field private mMultipathBudget:J

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private mQuota:J

.field private final mUsageCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

.field final network:Landroid/net/Network;

.field final subId:I

.field final subscriberId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 10

    .line 198
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->network:Landroid/net/Network;

    .line 200
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 202
    nop

    .line 203
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v2

    check-cast v2, Landroid/net/StringNetworkSpecifier;

    invoke-virtual {v2}, Landroid/net/StringNetworkSpecifier;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subId:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    nop

    .line 210
    invoke-static {p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$100(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/content/Context;

    move-result-object p3

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    .line 211
    if-eqz p3, :cond_1

    .line 214
    iget v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subId:I

    invoke-virtual {p3, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p3

    .line 215
    if-eqz p3, :cond_0

    .line 220
    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subscriberId:Ljava/lang/String;

    .line 221
    new-instance p3, Landroid/net/NetworkTemplate;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subscriberId:Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subscriberId:Ljava/lang/String;

    aput-object v0, v5, v1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v2, p3

    invoke-direct/range {v2 .. v9}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;III)V

    iput-object p3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 225
    new-instance p3, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/net/Network;)V

    iput-object p3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    .line 234
    invoke-virtual {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->updateMultipathBudget()V

    .line 235
    return-void

    .line 216
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array p2, v0, [Ljava/lang/Object;

    iget p3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subId:I

    .line 217
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    .line 216
    const-string p3, "Can\'t get TelephonyManager for subId %d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Missing TelephonyManager"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :catch_0
    move-exception p1

    .line 205
    new-instance v2, Ljava/lang/IllegalStateException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    aput-object p3, v3, v0

    const/4 p2, 0x2

    .line 207
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, p2

    .line 205
    const-string p1, "Can\'t get subId from mobile network %s (%s): %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic access$202(Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;J)J
    .locals 0

    .line 186
    iput-wide p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    return-wide p1
.end method

.method private getDailyNonDefaultDataUsage()J
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 244
    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$300(Lcom/android/server/connectivity/MultipathPolicyTracker;)Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 245
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 247
    nop

    .line 248
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 249
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    .line 247
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getNetworkTotalBytes(JJ)J

    move-result-wide v0

    .line 251
    return-wide v0
.end method

.method private getNetworkTotalBytes(JJ)J
    .locals 7

    .line 256
    :try_start_0
    const-class v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/net/NetworkStatsManagerInternal;

    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 257
    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkStatsManagerInternal;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    return-wide p1

    .line 258
    :catch_0
    move-exception p1

    .line 259
    invoke-static {}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$400()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to get data usage: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private getRemainingDailyBudget(JLandroid/util/Range;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/Range<",
            "Ljava/time/ZonedDateTime;",
            ">;)J"
        }
    .end annotation

    .line 277
    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    .line 278
    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/time/ZonedDateTime;

    invoke-virtual {p3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p3

    invoke-virtual {p3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 279
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getNetworkTotalBytes(JJ)J

    move-result-wide v0

    .line 280
    const-wide/16 v4, -0x1

    cmp-long p3, v0, v4

    const-wide/16 v4, 0x0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr p1, v0

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 283
    :goto_0
    iget-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 284
    invoke-static {p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$300(Lcom/android/server/connectivity/MultipathPolicyTracker;)Ljava/time/Clock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide p1

    sub-long/2addr v2, p1

    const-wide/16 p1, 0x1

    sub-long/2addr v2, p1

    sget-object p3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    div-long/2addr v2, v0

    add-long/2addr v2, p1

    .line 286
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    div-long/2addr v4, p1

    return-wide v4
.end method

.method private getTemplateMatchingNetworkIdentity(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkIdentity;
    .locals 9

    .line 265
    new-instance v8, Landroid/net/NetworkIdentity;

    iget-object v3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->subscriberId:Ljava/lang/String;

    .line 270
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    const/16 v0, 0xb

    .line 271
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    xor-int/lit8 v6, p1, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 265
    return-object v8
.end method

.method private getUserPolicyOpportunisticQuotaBytes()J
    .locals 17

    .line 291
    move-object/from16 v0, p0

    .line 292
    iget-object v1, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getTemplateMatchingNetworkIdentity(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkIdentity;

    move-result-object v1

    .line 295
    iget-object v2, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v2}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$500(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 296
    array-length v3, v2

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    const-wide/16 v9, -0x1

    if-ge v6, v3, :cond_2

    aget-object v11, v2, v6

    .line 297
    invoke-virtual {v11}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v12, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 298
    invoke-virtual {v11}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Range;

    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/time/ZonedDateTime;

    .line 299
    invoke-virtual {v12}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v12

    .line 301
    invoke-static {v11, v12, v13}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$600(Landroid/net/NetworkPolicy;J)J

    move-result-wide v14

    .line 302
    cmp-long v16, v14, v9

    if-nez v16, :cond_0

    .line 303
    invoke-static {v11, v12, v13}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$700(Landroid/net/NetworkPolicy;J)J

    move-result-wide v14

    goto :goto_1

    .line 304
    :cond_0
    nop

    .line 306
    :goto_1
    cmp-long v9, v14, v9

    if-eqz v9, :cond_1

    if-eqz v9, :cond_1

    .line 307
    nop

    .line 308
    invoke-virtual {v11}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Range;

    .line 307
    invoke-direct {v0, v14, v15, v9}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getRemainingDailyBudget(JLandroid/util/Range;)J

    move-result-wide v9

    .line 309
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 296
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 314
    :cond_2
    cmp-long v0, v7, v4

    if-nez v0, :cond_3

    .line 315
    return-wide v9

    .line 318
    :cond_3
    const-wide/16 v0, 0x14

    div-long/2addr v7, v0

    return-wide v7
.end method

.method private haveMultipathBudget()Z
    .locals 4

    .line 388
    iget-wide v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeUnregisterUsageCallback()V
    .locals 2

    .line 399
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->haveMultipathBudget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$1000(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/app/usage/NetworkStatsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    invoke-virtual {v0, v1}, Landroid/app/usage/NetworkStatsManager;->unregisterUsageCallback(Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 402
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    .line 404
    :cond_0
    return-void
.end method

.method private registerUsageCallback(J)V
    .locals 8

    .line 392
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->maybeUnregisterUsageCallback()V

    .line 393
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$1000(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/app/usage/NetworkStatsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    iget-object v6, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mUsageCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 394
    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$900(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/os/Handler;

    move-result-object v7

    .line 393
    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;IJLandroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/os/Handler;)V

    .line 395
    iput-wide p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    .line 396
    return-void
.end method


# virtual methods
.method public getMultipathBudget()J
    .locals 2

    .line 384
    iget-wide v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mMultipathBudget:J

    return-wide v0
.end method

.method public getMultipathPreference()I
    .locals 1

    .line 371
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->haveMultipathBudget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x3

    return v0

    .line 374
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getQuota()J
    .locals 2

    .line 379
    iget-wide v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mQuota:J

    return-wide v0
.end method

.method public setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 238
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 239
    return-void
.end method

.method shutdown()V
    .locals 0

    .line 407
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->maybeUnregisterUsageCallback()V

    .line 408
    return-void
.end method

.method updateMultipathBudget()V
    .locals 8

    .line 322
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->network:Landroid/net/Network;

    .line 323
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerInternal;->getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J

    move-result-wide v0

    .line 327
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getUserPolicyOpportunisticQuotaBytes()J

    move-result-wide v0

    .line 332
    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$800(Lcom/android/server/connectivity/MultipathPolicyTracker;)J

    move-result-wide v0

    .line 338
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->haveMultipathBudget()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mQuota:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 343
    return-void

    .line 345
    :cond_2
    iput-wide v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->mQuota:J

    .line 349
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getDailyNonDefaultDataUsage()J

    move-result-wide v4

    .line 350
    cmp-long v2, v4, v2

    const-wide/16 v6, 0x0

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    sub-long/2addr v0, v4

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 361
    :goto_0
    sget-wide v0, Landroid/app/usage/NetworkStatsManager;->MIN_THRESHOLD_BYTES:J

    cmp-long v0, v6, v0

    if-lez v0, :cond_4

    .line 364
    invoke-direct {p0, v6, v7}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->registerUsageCallback(J)V

    goto :goto_1

    .line 366
    :cond_4
    invoke-direct {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->maybeUnregisterUsageCallback()V

    .line 368
    :goto_1
    return-void
.end method
