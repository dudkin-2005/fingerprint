.class public Lcom/android/server/connectivity/DnsManager;
.super Ljava/lang/Object;
.source "DnsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;,
        Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;,
        Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    }
.end annotation


# static fields
.field private static final DNS_RESOLVER_DEFAULT_MAX_SAMPLES:I = 0x40

.field private static final DNS_RESOLVER_DEFAULT_MIN_SAMPLES:I = 0x8

.field private static final DNS_RESOLVER_DEFAULT_SAMPLE_VALIDITY_SECONDS:I = 0x708

.field private static final DNS_RESOLVER_DEFAULT_SUCCESS_THRESHOLD_PERCENT:I = 0x19

.field private static final PRIVATE_DNS_OFF:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mMaxSamples:I

.field private mMinSamples:I

.field private final mNMS:Landroid/os/INetworkManagementService;

.field private mNumDnsEntries:I

.field private final mPrivateDnsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateDnsMode:Ljava/lang/String;

.field private mPrivateDnsSpecifier:Ljava/lang/String;

.field private final mPrivateDnsValidationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleValidity:I

.field private mSuccessThreshold:I

.field private final mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    const-class v0, Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    invoke-direct {v0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/DnsManager;->PRIVATE_DNS_OFF:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/connectivity/MockableSystemProperties;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/android/server/connectivity/DnsManager;->mContext:Landroid/content/Context;

    .line 300
    iget-object p1, p0, Lcom/android/server/connectivity/DnsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/DnsManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 301
    iput-object p2, p0, Lcom/android/server/connectivity/DnsManager;->mNMS:Landroid/os/INetworkManagementService;

    .line 302
    iput-object p3, p0, Lcom/android/server/connectivity/DnsManager;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 303
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    .line 304
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    .line 308
    return-void
.end method

.method private flushVmDnsCache()V
    .locals 5

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLEAR_DNS_CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 436
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 437
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 439
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/DnsManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    nop

    .line 443
    return-void

    .line 441
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private static getDomainStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 501
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getIntSetting(Ljava/lang/String;I)I
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public static getPrivateDnsConfig(Landroid/content/ContentResolver;)Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    .locals 3

    .line 165
    invoke-static {p0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsMode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 169
    :goto_0
    const-string v2, "hostname"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    const-string/jumbo v0, "private_dns_specifier"

    invoke-static {p0, v0}, Lcom/android/server/connectivity/DnsManager;->getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 171
    new-instance v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;-><init>(Ljava/lang/String;[Ljava/net/InetAddress;)V

    return-object v0

    .line 174
    :cond_1
    new-instance p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;-><init>(Z)V

    return-object p0
.end method

.method private static getPrivateDnsMode(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    .line 490
    const-string/jumbo v0, "private_dns_mode"

    invoke-static {p0, v0}, Lcom/android/server/connectivity/DnsManager;->getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "private_dns_default_mode"

    invoke-static {p0, v0}, Lcom/android/server/connectivity/DnsManager;->getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "opportunistic"

    .line 493
    :cond_1
    return-object v0
.end method

.method public static getPrivateDnsSettingsUris()[Landroid/net/Uri;
    .locals 3

    .line 187
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "private_dns_default_mode"

    .line 188
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "private_dns_mode"

    .line 189
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "private_dns_specifier"

    .line 190
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 187
    return-object v0
.end method

.method private static getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 497
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setDnsConfigurationForNetwork$0(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .locals 0

    .line 380
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result p0

    return p0
.end method

.method private setNetDnsProperty(ILjava/lang/String;)V
    .locals 2

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "net.dns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/MockableSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    goto :goto_0

    .line 484
    :catch_0
    move-exception p1

    .line 485
    sget-object p2, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    const-string v0, "Error setting unsupported net.dns property: "

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    :goto_0
    return-void
.end method

.method public static tryBlockingResolveOf(Landroid/net/Network;Ljava/lang/String;)Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    .locals 1

    .line 179
    :try_start_0
    invoke-static {p0, p1}, Landroid/net/dns/ResolvUtil;->blockingResolveAllLocally(Landroid/net/Network;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    .line 180
    new-instance v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    invoke-direct {v0, p1, p0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;-><init>(Ljava/lang/String;[Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 181
    :catch_0
    move-exception p0

    .line 182
    new-instance p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;-><init>(Ljava/lang/String;[Ljava/net/InetAddress;)V

    return-object p0
.end method

.method private updateParametersSettings()V
    .locals 5

    .line 446
    const-string v0, "dns_resolver_sample_validity_seconds"

    const/16 v1, 0x708

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    .line 449
    iget v0, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    const v2, 0xffff

    if-le v0, v2, :cond_1

    .line 450
    :cond_0
    sget-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid sampleValidity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", using default="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    .line 455
    :cond_1
    const-string v0, "dns_resolver_success_threshold_percent"

    const/16 v1, 0x19

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    .line 458
    iget v0, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    const/16 v2, 0x64

    if-le v0, v2, :cond_3

    .line 459
    :cond_2
    sget-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid successThreshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", using default="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    .line 464
    :cond_3
    const-string v0, "dns_resolver_min_samples"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    .line 465
    const-string v0, "dns_resolver_max_samples"

    const/16 v2, 0x40

    invoke-direct {p0, v0, v2}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    .line 466
    iget v0, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    iget v3, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    if-gt v0, v3, :cond_4

    iget v0, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    if-le v0, v2, :cond_5

    .line 467
    :cond_4
    sget-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sample count (min, max)=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), using default=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    .line 471
    iput v2, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    .line 473
    :cond_5
    return-void
.end method


# virtual methods
.method public getPrivateDnsConfig()Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig(Landroid/content/ContentResolver;)Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    move-result-object v0

    return-object v0
.end method

.method public removeNetwork(Landroid/net/Network;)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    iget p1, p1, Landroid/net/Network;->netId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    return-void
.end method

.method public setDefaultDnsSystemProperties(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 416
    nop

    .line 417
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 418
    add-int/lit8 v0, v0, 0x1

    .line 419
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/DnsManager;->setNetDnsProperty(ILjava/lang/String;)V

    .line 420
    goto :goto_0

    .line 421
    :cond_0
    add-int/lit8 p1, v0, 0x1

    :goto_1
    iget v1, p0, Lcom/android/server/connectivity/DnsManager;->mNumDnsEntries:I

    if-gt p1, v1, :cond_1

    .line 422
    const-string v1, ""

    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/DnsManager;->setNetDnsProperty(ILjava/lang/String;)V

    .line 421
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 424
    :cond_1
    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mNumDnsEntries:I

    .line 425
    return-void
.end method

.method public setDnsConfigurationForNetwork(ILandroid/net/LinkProperties;Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/DnsManager;->getDomainStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 361
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/DnsManager;->updateParametersSettings()V

    .line 362
    const/4 v1, 0x4

    new-array v6, v1, [I

    iget v2, v0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    const/4 v3, 0x0

    aput v2, v6, v3

    iget v2, v0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    const/4 v7, 0x1

    aput v2, v6, v7

    iget v2, v0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    const/4 v8, 0x2

    aput v2, v6, v8

    iget v2, v0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    const/4 v9, 0x3

    aput v2, v6, v9

    .line 371
    iget-object v2, v0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lcom/android/server/connectivity/DnsManager;->PRIVATE_DNS_OFF:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 374
    iget-boolean v10, v2, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    .line 375
    invoke-virtual {v2}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->inStrictMode()Z

    move-result v11

    .line 376
    if-eqz v11, :cond_0

    iget-object v12, v2, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v12, ""

    .line 378
    :goto_0
    if-eqz v11, :cond_1

    iget-object v2, v2, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 379
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v11, Lcom/android/server/connectivity/-$$Lambda$DnsManager$Z_oEyRSp0wthIcVTcqKDoAJRe6Q;

    move-object/from16 v13, p2

    invoke-direct {v11, v13}, Lcom/android/server/connectivity/-$$Lambda$DnsManager$Z_oEyRSp0wthIcVTcqKDoAJRe6Q;-><init>(Landroid/net/LinkProperties;)V

    .line 380
    invoke-interface {v2, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 381
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 378
    invoke-static {v2}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v2

    .line 387
    :goto_1
    move-object v11, v2

    goto :goto_2

    .line 382
    :cond_1
    move-object/from16 v13, p2

    if-eqz v10, :cond_2

    .line 387
    move-object v11, v4

    goto :goto_2

    .line 383
    :cond_2
    new-array v2, v3, [Ljava/lang/String;

    goto :goto_1

    .line 387
    :goto_2
    if-eqz v10, :cond_4

    .line 388
    iget-object v2, v0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 389
    iget-object v2, v0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v14, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;-><init>(Lcom/android/server/connectivity/DnsManager$1;)V

    invoke-interface {v2, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_3
    iget-object v2, v0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    invoke-static {v2, v11, v12}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$400(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 393
    :cond_4
    iget-object v2, v0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :goto_3
    sget-object v2, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "setDnsConfigurationForNetwork(%d, %s, %s, %s, %s, %s)"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    .line 397
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v3

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v7

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v8

    .line 398
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v9

    aput-object v12, v14, v1

    const/4 v1, 0x5

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v1

    .line 396
    invoke-static {v10, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :try_start_0
    iget-object v2, v0, Lcom/android/server/connectivity/DnsManager;->mNMS:Landroid/os/INetworkManagementService;

    move/from16 v3, p1

    move-object v7, v12

    move-object v8, v11

    invoke-interface/range {v2 .. v8}, Landroid/os/INetworkManagementService;->setDnsConfigurationForNetwork(I[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    nop

    .line 411
    if-eqz p3, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/DnsManager;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    .line 412
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/DnsManager;->flushVmDnsCache()V

    .line 413
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    sget-object v1, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting DNS configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void
.end method

.method public updatePrivateDns(Landroid/net/Network;Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    .locals 3

    .line 320
    sget-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePrivateDns("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    if-eqz p2, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    iget p1, p1, Landroid/net/Network;->netId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    goto :goto_0

    .line 323
    :cond_0
    iget-object p2, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    iget p1, p1, Landroid/net/Network;->netId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 321
    :goto_0
    return-object p1
.end method

.method public updatePrivateDnsStatus(ILandroid/net/LinkProperties;)V
    .locals 6

    .line 329
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/connectivity/DnsManager;->PRIVATE_DNS_OFF:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 332
    iget-boolean v1, v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    .line 334
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    goto :goto_0

    .line 335
    :cond_0
    move-object p1, v2

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$000(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 336
    move v4, v3

    goto :goto_1

    .line 335
    :cond_1
    nop

    .line 336
    move v4, v1

    :goto_1
    invoke-virtual {v0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->inStrictMode()Z

    move-result v5

    .line 337
    if-eqz v5, :cond_2

    iget-object v2, v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    nop

    .line 338
    :cond_2
    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    .line 340
    :cond_4
    :goto_2
    move v1, v3

    :goto_3
    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->setUsePrivateDns(Z)V

    .line 341
    invoke-virtual {p2, v2}, Landroid/net/LinkProperties;->setPrivateDnsServerName(Ljava/lang/String;)V

    .line 342
    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 343
    invoke-static {p1, p2}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$100(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    goto :goto_4

    .line 345
    :cond_5
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->setValidatedPrivateDnsServers(Ljava/util/Collection;)V

    .line 347
    :goto_4
    return-void
.end method

.method public updatePrivateDnsValidation(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    iget v1, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->netId:I

    .line 351
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    .line 352
    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-static {v0, p1}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$200(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    .line 354
    return-void
.end method
