.class Lcom/android/server/location/GnssSatelliteBlacklistHelper;
.super Ljava/lang/Object;
.source "GnssSatelliteBlacklistHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;
    }
.end annotation


# static fields
.field private static final BLACKLIST_DELIMITER:Ljava/lang/String; = ","

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssBlacklistHelper"


# instance fields
.field private final mCallback:Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "GnssBlacklistHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->mContext:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->mCallback:Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;

    .line 37
    new-instance p1, Lcom/android/server/location/GnssSatelliteBlacklistHelper$1;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p3}, Lcom/android/server/location/GnssSatelliteBlacklistHelper$1;-><init>(Lcom/android/server/location/GnssSatelliteBlacklistHelper;Landroid/os/Handler;)V

    .line 43
    iget-object p2, p0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "gnss_satellite_blacklist"

    .line 44
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 43
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p2, p3, v0, p1, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 48
    return-void
.end method

.method static parseSatelliteBlacklist(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 88
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 91
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 92
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 94
    if-ltz v3, :cond_0

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "Negative value is invalid."

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_2
    return-object v0
.end method


# virtual methods
.method updateSatelliteBlacklist()V
    .locals 8

    .line 51
    iget-object v0, p0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 52
    const-string v1, "gnss_satellite_blacklist"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    const-string v0, ""

    .line 58
    :cond_0
    sget-boolean v1, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->DEBUG:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 59
    const-string v1, "GnssBlacklistHelper"

    const-string v4, "Update GNSS satellite blacklist: %s"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->parseSatelliteBlacklist(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    nop

    .line 70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 71
    const-string v0, "GnssBlacklistHelper"

    const-string v1, "blacklist string has odd number of values.Aborting updateSatelliteBlacklist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 76
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 77
    new-array v4, v1, [I

    .line 78
    new-array v5, v1, [I

    .line 79
    :goto_0
    if-ge v2, v1, :cond_3

    .line 80
    mul-int/lit8 v6, v2, 0x2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v2

    .line 81
    add-int/2addr v6, v3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v2

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->mCallback:Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;

    invoke-interface {v0, v4, v5}, Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;->onUpdateSatelliteBlacklist([I[I)V

    .line 84
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v1, "GnssBlacklistHelper"

    const-string v2, "Exception thrown when parsing blacklist string."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    return-void
.end method
